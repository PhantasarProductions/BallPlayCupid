--[[
	BallPlay Cupid
	Draw the puzzle
	
	
	
	(c) Jeroen P. Broks, 2016, All rights reserved
	
		This program is free software: you can redistribute it and/or modify
		it under the terms of the GNU General Public License as published by
		the Free Software Foundation, either version 3 of the License, or
		(at your option) any later version.
		
		This program is distributed in the hope that it will be useful,
		but WITHOUT ANY WARRANTY; without even the implied warranty of
		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
		GNU General Public License for more details.
		You should have received a copy of the GNU General Public License
		along with this program.  If not, see <http://www.gnu.org/licenses/>.
		
	Exceptions to the standard GNU license are available with Jeroen's written permission given prior 
	to the project the exceptions are needed for.
Version: 16.04.18
]]

objects = objects or j_love_import("SCRIPT/GAME.LLL/objects.lua")	-- *import objects

mkl.version("BallPlay Cupid - drawgamescreen.lua","16.04.18")
mkl.lic    ("BallPlay Cupid - drawgamescreen.lua","GNU General Public License 3")


local function dglay(pz,lay)
   local l = declaremultidim(pz.format)
   l.array = pz[lay]
   local c,v
   -- for c,v in l:pairs({0,0,0}) do
   for ax=0,25 do for ay=0,15 do c={ax,ay} v=l:get(c)
       -- print(serialize('c',c).."\nvalue:"..v)
       if v then 
          --print("value: "..strval(v))
          if lay=='obstacles' then
             local o = glob.obstacles[v]
             Color(o[2],o[3],o[4])
             DrawImage(o[1],c[1]*32,(c[2]*32)+20)
          else
             DrawImage(v,c[1]*32,(c[2]*32)+20)
          end 
       end    
   end end
end


local function dgs(pz)
  -- floors
  dglay(pz,'floors')
  -- walls
  dglay(pz,'walls')
  -- obstacles
  dglay(pz,'obstacles')
  -- objects
  for o in each(pz.objects) do
      DrawObject(o.kind,(o.x*32)+(o.modx or 0),((o.y*32)+20)+(o.mody or 0))
      --love.graphics.print(valstr(o.modx).."/"..valstr(o.mody),o.x*32,(o.y*32)+20) -- debug line only
      if (not o.blockautomod) and o.modx and o.mody then
         if o.modx<0 then o.modx=o.modx+2 elseif o.modx>0 then o.modx=o.modx-2 end
         if o.mody<0 then o.mody=o.mody+2 elseif o.mody>0 then o.mody=o.mody-2 end
      end  
  end
  -- falling objects
  pz.falling = pz.falling or {}    
  for k,o in pairs(pz.falling) do
      Color(o.r or 255,o.g or 255,o.b or 255,o.a or 255)
      DrawImage(o.img,o.x,o.y)
      o.img.scalex = (o.img.scalex or 1)-.01
      o.img.scaley = (o.img.scaley)
      if o.img.scalex<=0 then pz.falling[k]=nil end
  end
end  

return dgs
