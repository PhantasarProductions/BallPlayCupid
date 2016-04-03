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
Version: 16.04.03
]]

print("Loaded the editor! Hello boys and girls!")

mkl.version("BallPlay Cupid - edit.lua","16.04.03")
mkl.lic    ("BallPlay Cupid - edit.lua","GNU General Public License 3")


-- *import save

-- The functions tied to the objects will all be nil, but in the editor that doesn't matter anyway.
-- *import GAME.LLL/objects

local puzzle = {}
local pconfig = {}

local e = {}

local tabs = {'walls','floors','objects','obstacles'}


local tab -- The second line *is* required, or the editor *can* and *will* crash!
      tab = { walls = {
                      },
              floors = {
                       },
              objects = {
                           strip = function()
                                       local x=5
                                       local hovertext = ""
                                       e.mx = e.mx or 0
                                       e.my = e.my or 0
                                       tab.objects.chosen = tab.objects.chosen or "ball"
                                       for k,o in spairs(objects) do
                                           if tab.objects.chosen==k then 
                                              Color(255,0,0,80)
                                              Rect(x,550,32,32)
                                           end
                                           DrawObject(k,x,550)
                                           if e.my>=550 and e.my<=582 and e.mx>=x and e.mx<=x+32 then                                              
                                              hovertext = o.ename or "?"
                                           end
                                           x = x + 35                                           
                                       end
                                       white()
                                       love.graphics.print(hovertext,e.mx,e.my)
                                   end
                       },
              obstacles = {
                          }
            }

function e.arrive() 
	e.filename = LoadImage(love.graphics.newText(glob.love2dfont,e.file))
	if love.filesystem.exists("homemadepuzzles/"..e.file..".lua") then puzzle,pconfig = save.load("homemadepuzzles/"..e.file) end --j_love_import("homemadepuzzles/"..e.filename..".lua") end
	pconfig = pconfig or {}
	puzzle.title = puzzle.title or e.file
end

function e.leave()
	
end

function e.mousemoved(x,y)
e.mx = x
e.my = y
end

function e.keypressed(key,s,r)
	local c,k
	local buttons = {lang.edit.savebox.save, lang.edit.savebox.dntsave, lang.edit.savebox.cancel, escapebutton = 3}
	if key=='escape' then
  	 c = love.window.showMessageBox("BallPlay Cupid Puzzle Editor", lang.edit.savebox.warning, buttons)
   	;({  function() save.multisave("homemadepuzzles/"..e.file,{puzzle,pconfig}) chain.go("mainmenu") end, function() chain.go("mainmenu") end, chain.nothing })[c]()
	elseif (len(key)==1 or (len(key)==3 and left(key,2)=='kp')) and len(puzzle.title)<30 then	
	  k = key
	  if keypressed.capslock or keypressed.lshift or keypressed.rshift then
	  	k = ({['1']="!", ['2']='@', ['3']="#", ['4']="$", ['5']="%", ['6']="^", ['7']="&", ['8']="*", ["9"]="(", ["0"]=")",["-"]="_", ['=']="+", ['\\']="|"})[k] or upper(k)
	  end
	  if left(k,2)=='kp' then k = right(k,1) end	  
		puzzle.title = puzzle.title .. k
	elseif key=="space" and len(puzzle.title)<30 then 
	       puzzle.title = puzzle.title .. " "      
	elseif key=='backspace' and puzzle.title~="" then
	       puzzle.title = left(puzzle.title,len(puzzle.title)-1)	
	end   
end


function e.draw()
    local thisisourtab
    pconfig.tab = pconfig.tab or "walls"
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
    -- Lower field
    for i,t in ipairs(tabs) do
        thisisourtab = pconfig.tab==t
        Color(100,100,100,120)
        Rect(i*100,505,80,25,({[true]='fill', [false]='line'})[thisisourtab])
        ;({[true]=ember,[false]=white})[thisisourtab]()      
        love.graphics.print(lang.edit.layers[t],(i*100)+5,510)  
        end    
    -- Show item strip
    (tab[pconfig.tab].strip or chain.nothing)()      
end

function e.mousepressed(x,y,button)
	for i,t in ipairs(tabs) do
		if y>505 and y<530 and x>i*100 and x<(i*100)+80 then pconfig.tab=t end
	end
end



return e
