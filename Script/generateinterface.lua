--[[
	BallPlay Cupid
	generator tiled pics for the interface
	
	
	
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
Version: 16.04.02
]]
if assets.int_top then return end


mkl.version("BallPlay Cupid - generateinterface.lua","16.04.02")
mkl.lic    ("BallPlay Cupid - generateinterface.lua","GNU General Public License 3")


local li_topline = love.graphics.newCanvas(800,20)
local li_menu    = love.graphics.newCanvas(800,100)

local function setup()
print("Generating the interface canvasses")
for can in each({li_topline,li_menu}) do	
    love.graphics.setCanvas( can )
    local x,y=0,0
    local w,h = ImageSizes('intback')
    local ch = can:getHeight()
    blue()
    for x=0,800+w,w do for y=0,ch+h,h do
        DrawImage('intback',x,y)
        end end    
    print("o")    
end    

assets.int_top = LoadImage(li_topline)
assets.int_men = LoadImage(li_menu)
    
    
love.graphics.setCanvas(  )    
end setup()


local somewhereovertherainbowisnothingatall = {}
return somewhereovertherainbowisnothingatall
