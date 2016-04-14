--[[
	BallPlay Cupid
	Sound Effects
	
	
	
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
Version: 16.04.09
]]
mkl.version("BallPlay Cupid - sfx.lua","16.04.09")
mkl.lic    ("BallPlay Cupid - sfx.lua","GNU General Public License 3")

return function(f)
       if not user.data.config.sfx then return end
       --love.audio.play(f)
       PlaySound("sfx_"..f)
       end
