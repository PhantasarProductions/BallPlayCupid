--[[
	BallPlay Cupid
	Puzzle Editor
	
	
	
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

print("Loaded the editor! Hello boys and girls!")

mkl.version("BallPlay Cupid - edit.lua","16.04.02")
mkl.lic    ("BallPlay Cupid - edit.lua","GNU General Public License 3")


-- *import save

-- The functions tied to the objects will all be nil, but in the editor that doesn't matter anyway.
-- *import GAME.LLL/OBJECTS

local puzzle = {}

local e = {}


function e.arrive() 
e.filename = LoadImage(love.graphics.newText(glob.love2dfont,e.file))
if love.filesystem.exists("homemadepuzzles/"..e.file) then puzzle = save.load("homemadepuzzles/"..e.file) end --j_love_import("homemadepuzzles/"..e.filename..".lua") end
puzzle.title = puzzle.title or e.file
end

function e.leave()
save.save("homemadepuzzles/"..e.filename,puzzle)
end


function e.draw()
    Cls()
    white()
    -- Interface
    DrawImage("int_top",0,0)
    DrawImage("int_men",0,500)
    -- Top bar
    DrawImage(e.filename,5,5)
    local fnpos = 15 + ImageWidth(e.filename)
    love.graphics.setFont(glob.love2dfont)
    ember()
    love.graphics.print(puzzle.title,fnpos,5)    
end





return e
