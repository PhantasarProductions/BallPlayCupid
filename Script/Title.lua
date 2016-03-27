--[[
	BallPlay Cupid
	Title Screen
	
	
	
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
Version: 16.03.27
]]
local me = {}; chain.reg("Title",me)

me.cupido=0
me.subchain="askname"

function me.draw()
me.username = me.username or ""
Cls()
--HotCenter("logo")
DrawImage("logo",400-(assets.logo.image:getWidth()/2),300-(assets.logo.image:getHeight()/2))
DrawImage("cupid",0,100-(math.sin(me.cupido)*50)) 
love.graphics.setFont(glob.love2dfont)
;(({ askname = function()
               Color(80,80,80)
               Rect(125,400,400,25)
               Color(255,255,255)
               love.graphics.print ( "Enter your name:",0,410 )
               love.graphics.print ( me.username.."_",135,410 )
               end
})[me.subchain] or error("Unknown subchain: "..varstr(me.subchain)))()
end

function me.keypressed(key,s,r)
local k = string.byte(key)
;(({ askname = function()
               	if ((k>=48 and k<=57) or (k>=65 and k<=90) or (k>=97 and k<=122)) and len(key)==1 and len(me.username)<10 then
		                me.username = me.username .. key
	              elseif key=='backspace' and me.username then	
		                me.username = left(me.username,len(me.username)-1)
 	              end
 	            end  
})[me.subchain] or error("Unknown subchain: "..varstr(me.subchain)))()
-- error("Is a key pressed! "..k) -- Force an error to makes sure a key is pressed! (only for debugging, of course)   
end

function me.update()
me.cupido=me.cupido+.01
if me.cupido>=360 then me.cupido=me.cupido-360 end
end

return me
