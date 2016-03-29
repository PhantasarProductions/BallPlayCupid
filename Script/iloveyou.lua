--[[
	Main file: Ballplay Cupid
	
	
	
	
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
Version: 16.03.28
]]

-- External libs
-- *import math
-- *import phantasar
-- *import md5
-- *import home
-- *import music

-- Interal libs
-- *import glob
-- *import user
-- import mouse
-- (mouse may not be needed, so it will no longer be imported)

-- Program parts
-- *import title
-- *import mainmenu

mkl.version("BallPlay Cupid - iloveyou.lua","16.03.28")
mkl.lic    ("BallPlay Cupid - iloveyou.lua","GNU General Public License 3")




--home.createmydatadir()
love.filesystem.createDirectory("users")
love.filesystem.createDirectory("homemadepuzzles")



--function love.load()
assets = phantasar.init({
                           image = { cupid = "GFX/TITLE/CUPID.PNG",
                                      logo = "GFX/TITLE/LOGO.PNG",
                                       gpl = "GFX/GENERAL/GPL.PNG",
                                  menuitem = "GFX/MAINMENU/ITEM.PNG"},
                           audio = {},
                           font  = {}
                        },"Title")
--end               
