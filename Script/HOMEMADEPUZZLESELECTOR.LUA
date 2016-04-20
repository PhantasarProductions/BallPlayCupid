--[[
	BallPlay Cupid
	File selector for homemade puzzles
	
	
	
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
Version: 16.04.20
]]
local hps = {}
local c

mkl.version("BallPlay Cupid - homemadepuzzleselector.lua","16.04.20")
mkl.lic    ("BallPlay Cupid - homemadepuzzleselector.lua","GNU General Public License 3")


chain.reg("pickcustompuzzle",hps)

if not love.filesystem.exists("config/editor.lua") then love.filesystem.write("config/editor.lua","return {}") end

function hps.arrive()
  assert(mainmenu.para,"Home made puzzle selector does not know what to do!")
  hps.config = j_love_import("config/editor.lua",true)
  hps.config.pm = hps.config.pm or 0
  c = hps.config 
  hps.files = love.filesystem.getDirectoryItems( "homemadepuzzles/" )
  for i=1,#hps.files do hps.files[i]=replace(hps.files[i],".lua","") end
  hps.chosenfile = ""
  local d = love.filesystem.getDirectoryItems( 'homemadepuzzles' )
  hps.list = {}
  for f in each(d) do
    if suffixed(f,".lua") then append(hps.list,stripext(f)) end
  end
end


hps.xdraw = {

	game = chain.nothing,
	edit = function()	           
	           love.graphics.setFont(glob.love2dfont)
	           Color(80,80,80)
             Rect(125,500,400,25)
             Color(255,255,255)
             love.graphics.print ( "New File:",0,510 )
             love.graphics.print ( hps.chosenfile.."_",135,510 )
	       end
	
}
function hps.draw()
   Cls()
   white()
   DrawImage('logo',mainmenu.logopos.x,mainmenu.logopos.y); if mainmenu.logopos.y>0 then mainmenu.logopos.y = mainmenu.logopos.y-1 return end
   -- list of files
   hps.pm = hps.pm or 0
   for i=1,10 do
       if hps.list[i+hps.pm] then
          if hps.my and hps.my>100+(i*20) and hps.my<120+(i*20) then ember() else white() end
          love.graphics.print(hps.list[i+hps.pm],50,100+(i*20))
       elseif hps.pm>0 then
          hps.pm = hps.pm - 1
       end
   end
   -- enter file name if applicable
   hps.xdraw[mainmenu.para]()
end

--[[
function hps.leave()
(({

	game = function()
	       end,
	edit = function()
	       editfile = hps.chosenfile	           
	       end
	
})[mainmenu.para] or chain.nothing)()
end

]]

hps.xhitkey = {
     game = chain.nothing,
     edit = function(key,s,r)
                local k = string.byte(key)
               	if ((k>=48 and k<=57) or (k>=65 and k<=90) or (k>=97 and k<=122)) and len(key)==1 and len(hps.chosenfile)<10 then
		                hps.chosenfile = hps.chosenfile .. key
		                if len(hps.chosenfile)==1 then hps.chosenfile = upper(hps.chosenfile) end
	              elseif key=='backspace' and hps.chosenfile then	
		                hps.chosenfile = left(hps.chosenfile,len(hps.chosenfile)-1)
		            --[[    
		            elseif key=="enter" or key=='return' or key=='kpenter' then
		                local gonext = { [false]='newuser', [true]='loaduser'}    
		                me.subchain = gonext[user.exists(hps.chosenfile)]
		            ]]
 	              end               
            end
     
}

local function nextround()
if (not hps.chosenfile) or len(hps.chosenfile)==0 then return end -- A file must be chosen
-- Yeah, I know about the lines below.
-- Now THIS is very dirty Lua code. STRAIGHT from HELL! If you are studying my code as a new Lua student.... SKIP THIS FUNCTION ENTIRELY FOR YOUR STUDIES :D
-- Especially because this ONLY works, because I used a pre-processor! (Without that pre-processor Lua would throw a 'nil'-value error).
local chaingo=
({ 
   go_game = function()
          -- *localimport game
          game.getback   = 'mainmenu'
          game.puzzle    = save.load("homemadepuzzles/"..hps.chosenfile)
          game.loadpz    = hps.chosenfile 
          game.source    = "Home: "..hps.chosenfile
          game.mode      = "homemade"
          game.pickchain = hps
          print("Loading game")
          return game
          end,
   go_edit = function()
          print("Loading editor")
          -- *localimport edit
          edit.file = hps.chosenfile
          return edit
          end         
})["go_"..mainmenu.para]()
assert ( chaingo, "param."..valstr(mainmenu.para).." returned nil" )
chain.go(chaingo)
end

function hps.keypressed(key,s,r)
-- enter name if applicable
hps.xhitkey[mainmenu.para](key,s,r)
;(({  -- switch case -- Lua style --
      escape     = function() chain.go("mainmenu") end,
      kpenter    = nextround,
      ['return'] = nextround
      })[key] or chain.nothing)()
end



function hps.mousemoved(x,y)
hps.mx = x
hps.my = y
end

function hps.mousepressed(x,y,b,t)
   hps.pm = hps.pm or 0
   for i=1,10 do
       if hps.list[i+hps.pm] then
          if hps.my and hps.my>100+(i*20) and hps.my<120+(i*20) then hps.chosenfile=hps.list[i+hps.pm] nextround() end
       end
   end
end


return hps
