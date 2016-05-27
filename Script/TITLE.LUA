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
Version: 16.05.28
]]

mkl.version("BallPlay Cupid - title.lua","16.05.28")
mkl.lic    ("BallPlay Cupid - title.lua","GNU General Public License 3")

local me = {}; chain.reg("Title",me)

me.cupido=0
me.subchain="askname"

me.quit = chain.nothing -- When in title screen, just quit this shit immediately!

me.claimfield = true
me.id = ""
me.secu = ""

if love.filesystem.exists( "glob/login.lua" ) then me.username = me.username or save.load("glob/login",true) end
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
               	love.graphics.print("Claim existing account",300,550)
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
                  end,
     claim = function()
               Color(0,180,255)
               love.graphics.print("id:",5,400)
               love.graphics.print("secu-code:",5,450)
               cur = { [true]="_",[false]=""}    
               Color(100,100,100)           
               if me.claimfield then
                  love.graphics.rectangle('fill',200,400,100,25)
               else
                  love.graphics.rectangle('fill',200,450,300,25)
               end
               Color(255,180,0)               
               love.graphics.print(me.id..cur[me.claimfield],205,400)
               love.graphics.print(me.secu..cur[not me.claimfield],205,450)
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
		                if love.filesystem.exists( 'glob' ) or love.filesystem.createDirectory( 'glob' ) then save.save('glob/login',me.username) end
		            elseif key=='escape' then 
		                love.event.quit()    
 	              end
 	            end  ,
 	   loaduser = function() end,         
 	   newuser  = function() end,
 	   waitverify = function() chain.go("mainmenu") end,
 	   claim = function()
 	             if key=='enter' or key=='kpenter' or key=='return' then
 	               -- error('Claiming not yet implemented')
 	               -- "HC=Game&A=Auth&Game="+AnnaGameID+"&GameSecu="+AnnaGameSecu+"&Version="+MKL_NewestVersion()+"&id="+d.c("AnnaID")+"&secu="+d.c("AnnaSecu")
 	               local success,getdata = user.call_anna({HC='Game',A='Auth',Game='BPC',id=me.id,secu=me.secu})
 	               if success then
 	                  u.data.onlineid = me.id -- getdata.IP
 	                  u.data.secu = me.secu
 	                  u.data.online = true
 	                  chain.go('mainmenu')
 	                else
 	                  local ret = love.window.showMessageBox("Ballplay Cupid","Signing up to the website failed\n\nReason:\n"..strval(reason),{'retry','skip','quit',escapebutton=3});
 	                  ({ chain.nothing,
 	                     function() chain.go('mainmenu') end,
 	                     love.event.quit
 	                   })[ret]() 
 	                end   	                
 	             elseif key=='tab' or key=='up' or key=='down' then
 	               me.claimfield = not me.claimfield
 	             elseif (k>=48 and k<=57) and me.claimfield then
 	               me.id = me.id .. key
 	             elseif key=='backspace' and me.claimfield and me.id~="" then
 	               me.id = left(me.id,#me.id-1)
 	             elseif ((k>=48 and k<=57) or (k>=97 and k<=102)) and (not me.claimfield) then
 	               me.secu = me.secu .. key
 	             elseif key=='backspace' and (not me.claimfield) and me.secy~="" then
 	               me.id = left(me.secu,#me.secu-1)
 	             end         
 	           end         
})[me.subchain] or error("Unknown subchain: "..varstr(me.subchain)))()
-- error("Is a key pressed! "..k) -- Force an error to makes sure a key is pressed! (only for debugging, of course)   
end

function me.mousepressed(x,y,button,touch)
(({  	   newuser  = function() 
                      if not user.netallowed then chain.go("mainmenu") return end
                      if y>550 then me.subchain='claim' end
                      if y<500 or y>520 then return end -- Move along, there's nothing to see here!
                      if x<300 then 
                         -- let's go online
                         local ok
                         repeat
                         local status,reason = user.tietosite()
                         ok = status=="SUCCESS" or (function() local r = love.window.showMessageBox("Ballplay Cupid","Signing up to the website failed\n\nReason:\n"..strval(reason),{'retry','skip','quit',escapebutton=2}); if r==3 then love.event.quit() else return r==2 end end)()
                         until ok
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
