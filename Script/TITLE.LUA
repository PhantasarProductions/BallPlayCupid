--[[
	BallPlay Cupid
	Title and Login Screen
	
	
	
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
Version: 16.04.16
]]

mkl.version("BallPlay Cupid - title.lua","16.04.16")
mkl.lic    ("BallPlay Cupid - title.lua","GNU General Public License 3")

local me = {}; chain.reg("Title",me)

me.cupido=0
me.subchain="askname"

me.quit = chain.nothing -- When in title screen, just quit this shit immediately!

function me.draw()
me.username = me.username or ""
Cls()
white()
--HotCenter("logo")
mainmenu.logopos = {x=400-(assets.logo.image:getWidth()/2),y=300-(assets.logo.image:getHeight()/2)}
mainmenu.cupidpos = {x=0,y=100-(math.sin(me.cupido)*50),y=100-(math.sin(me.cupido)*50)}
DrawImage("logo",mainmenu.logopos.x,mainmenu.logopos.y)
DrawImage("cupid",0,mainmenu.cupidpos.y) 
love.graphics.setFont(glob.love2dfont)
;(({ askname = function()
               Color(80,80,80)
               Rect(125,400,400,25)
               Color(255,255,255)
               love.graphics.print ( "Enter your name:",0,410 )
               love.graphics.print ( me.username.."_",135,410 )
               end,
     loaduser = function()
                love.graphics.print ( "Hello, "..me.username.."! I'm loading your data",0,410 )
                chain.go("mainmenu")
                end,
     newuser = function()
               	if not me.created then
                  love.graphics.print("Creating user: "..me.username)
                  return
                end
               love.graphics.print("Hello, "..me.username.."! I have create a user file for you.",5,400)
               if user.netallowed then
               	love.graphics.print("I can turn your data into an online account, enabling you to",5,415)
               	love.graphics.print("test your skills with the rest of the world.",5,430)
               	love.graphics.print("What do you want me to do?",5,445)
               	Color(255,180,0)
               	love.graphics.print("Go on-line",200,500)
               	love.graphics.print("Stay off-line",400,500)
               else
                Color(255,180,0)
                love.graphics.print("Click the game screen to continue",5,500)
               end
               	
               end    ,
     waitverify = function()
                  love.graphics.print("Hello, "..me.username.."!",5,400)
                  love.graphics.print("A browser window should now open. Follow the instructions",5,415)
                  love.graphics.print("to verify your account. When you are done, just press any key",5,430)
                  love.graphics.print("or click (or touch) anywhere in the game screen to continue",5,445)
                  end                
})[me.subchain] or error("Unknown subchain: "..valstr(me.subchain)))()
end

function me.keypressed(key,s,r)
local k = string.byte(key)
print("user pressed: "..key)
;(({ askname = function()
                me.created = nil
               	if ((k>=48 and k<=57) or (k>=65 and k<=90) or (k>=97 and k<=122)) and len(key)==1 and len(me.username)<10 then
		                me.username = me.username .. key
		                if len(me.username)==1 then me.username = upper(me.username) end
	              elseif key=='backspace' and me.username then	
		                me.username = left(me.username,len(me.username)-1)
		            elseif key=="enter" or key=='return' or key=='kpenter' then
		                local gonext = { [false]='newuser', [true]='loaduser'}    
		                me.subchain = gonext[user.exists(me.username)]
		            elseif key=='escape' then 
		                love.event.quit()    
 	              end
 	            end  ,
 	   loaduser = function() end,         
 	   newuser  = function() end,
 	   waitverify = function() chain.go("mainmenu") end         
})[me.subchain] or error("Unknown subchain: "..varstr(me.subchain)))()
-- error("Is a key pressed! "..k) -- Force an error to makes sure a key is pressed! (only for debugging, of course)   
end

function me.mousepressed(x,y,button,touch)
(({  	   newuser  = function() 
                      if not user.netallowed then chain.go("mainmenu") return end
                      if y<500 or y>520 then return end -- Move along, there's nothing to see here!
                      if x<300 then 
                         -- let's go online
                         local status,reason = user.tietosite()
                         -- chain.go("waitverify")
                         me.subchain='waitverify'
                      else
                      	 chain.go("mainmenu")
                      end
                    end,
         waitverify = function() chain.go("mainmenu") end           
})[me.subchain] or function() end )()
end

function me.update()
me.cupido=me.cupido+.01
if me.cupido>=360 then me.cupido=me.cupido-360 end
;(({ 

      loaduser = function()
                 user.load(me.username)
                 end,
      newuser  = function()
                 me.created = me.created or user.create(me.username)
                 end
})[me.subchain] or function() end)()
end

return me
