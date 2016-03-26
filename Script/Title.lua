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
Version: 16.03.26
]]
local me = {}; chain.reg("Title",me)

me.cupido=0

function me.draw()
Cls()
--HotCenter("logo")
DrawImage("logo",400-(assets.logo.image:getWidth()/2),300)
DrawImage("cupid",0,200-(math.sin(me.cupido)*50)) 
end

function me.update()
me.cupido=me.cupido+.01
if me.cupido>=360 then me.cupido=me.cupido-360 end
end

return me
