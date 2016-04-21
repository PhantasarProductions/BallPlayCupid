--[[
	BallPlay Genius
	Object Properties
	
	
	
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
Version: 16.04.21
]]
local o = {

    ball = {
                image = "ball",
                color = {255,255,255},
                movement = "move_default",
                collide = "collide_ball",
                finish = "ball_finish",
                ename = "Ball"                                
           },
    ballgreen = {
                image = "ball",
                color = {0,255,0},
                movement = "move_default",
                collide = "collide_ball",
                finish = "ball_finish",
                ename = "Green Ball"
                },       
    ballred   = {
                image = "ball",
                color = {255,0,0},
                movement = "move_default",
                collide = "collide_ball",
                finish = "ball_finish",
                ename = "Red Ball"
                },       
    ballblue   = {
                image = "ball",
                color = {0,0,255},
                movement = "move_default",
                collide = "collide_ball",
                finish = "ball_finish",
                ename = "Blue Ball"
                },       
    ballember = {
                image = "ball",
                color = {255,180,0},
                movement = "move_default",
                collide = "collide_ball",
                finish = "ball_finish",
                ename = "Ember Ball"
                },       
    ghostred = {
                image = "ghost",
                color = {255,0,0},
                alpha = 200,
                movement = "move_default",
                collide = "collide_ghost",
                ename = "Ghost"
               },       
    ghostgreen = {
                image = "ghost",
                color = {0,255,0},
                alpha = 200,
                movement = "move_default",
                collide = "collide_ghost",
                ename = "Ghost"
               } ,      
    ghostblue = {
                image = "ghost",
                color = {0,0,255},
                alpha = 200,
                movement = "move_default",
                collide = "collide_ghost",
                ename = "Ghost"
               } ,      
    ghostamber = {
                image = "ghost",
                color = {255,180,0},
                alpha = 200,
                movement = "move_default",
                collide = "collide_ghost",
                ename = "Ghost"
               } ,     
    woman =  {
                image = "woman",
                color = {255,255,255},
                alpha = 255,
                movement = "woman",
                collide = "woman",
                ename = "Woman"
             }            

}

function countballs(puzzle)
  local c = 0
  for o in each(puzzle.objects) do
     if prefixed(o.kind,"ball") then c = c + 1 end
  end
  return c 
end

function DrawObject(name,x,y)
local obj = o[name]
assert(obj,"Unknown object requested for drawing: "..name)
local c = obj.color or {255,255,255}
Color(c[1],c[2],c[3],obj.alpha or 255)
DrawImage(obj.image,x,y)
end 


return o
