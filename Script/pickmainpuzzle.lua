--[[
	BallPlay Cupid
	Puzzle Selector (main puzzles)
	
	
	
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
Version: 16.04.17
]]
-- *import titles
local pmp = {}
chain.reg("pickmainpuzzle",pmp)
-- *if ignore
pmp.pm = 0
pmp.mx = 0
pmp.my = 0
-- *fi
pmp.pm = user.data.pmppm or 0

function pmp.draw()
       user.data.pmppm = pmp.pm
       white()
       DrawImage('logo',mainmenu.logopos.x,mainmenu.logopos.y); if mainmenu.logopos.y>0 then mainmenu.logopos.y = mainmenu.logopos.y-1 return end
       local y=250-(pmp.pm*20)
       user.data.puzzlesolved = user.data.puzzlesolved or {}
       local hover
       pmp.hoverkey = nil
       love.graphics.print("Best time:" ,400,225)
       love.graphics.print("Lst tools:" ,500,225)
       love.graphics.print("Balls surv:",600,225)       
       for k,name in spairs(titles) do
           hover = pmp.my and pmp.my>=y and pmp.my<=y+19
           if hover then pmp.hoverkey = k end
           if y>=250 and y<500 then
              if user.data.puzzlesolved[k] then
                 Color(0,180,255)
                 love.graphics.print(time.sec2time(user.data.puzzlesolved[k].time),400,y)
                 Color(180,0,255)
                 love.graphics.print(user.data.puzzlesolved[k].toolsused,500,y)
                 Color(255,0,180)
                 love.graphics.print(user.data.puzzlesolved[k].ballssurvived,600,y)
                 Color(0,255,0)
                 if hover then Color(180,255,0) end
              else
                 Color(255,0,0)
                 if hover then Color(255,30,30) end
              end
              love.graphics.print(name,20,y)   
           end
           y = y + 20
       end          
end

function pmp.mousepressed(x,y,b)
(({     function()
          if not pmp.hoverkey then return end
          print("Loading game")
          -- *localimport game
          game.getback   = 'mainmenu'
          game.puzzle    = save.load("SCRIPT/GAME.LLL/PUZZLES/"..upper(pmp.hoverkey)) 
          game.source    = "Puzzle #"..right(pmp.hoverkey,2)
          game.rec       = pmp.hoverkey          
          game.mode      = "official"
          game.pickchain = pmp
          print("Starting game")          
          chain.go( game )
        end,
        function()
          chain.go('mainmenu')
        end,  
        })[b] or function() sfx('buzz') end)()
end

function pmp.mousemoved(x,y)
pmp.mx = x
pmp.my = y
end




return pmp
