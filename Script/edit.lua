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
Version: 16.04.13
]]

print("Loaded the editor! Hello boys and girls!")
user.call_anna({HC='Game',A="Doc",Doc="RRE",Game='BPC',id=user.data.onlineid,secu=user.data.secucode})

mkl.version("BallPlay Cupid - edit.lua","16.04.13")
mkl.lic    ("BallPlay Cupid - edit.lua","GNU General Public License 3")


-- *import quickmath
-- *import save

-- The functions tied to the objects will all be nil, but in the editor that doesn't matter anyway.
-- *import GAME.LLL/drawgamescreen


local puzzle = {}
local pconfig = {}

local e = {}

local tabs = {'walls','floors','objects','plates',"breakblocks","lasers","exits","settings"}

local function showstrip(strip)
        pconfig.strip = pconfig.strip or {}
        pconfig.strip[strip] = pconfig.strip[strip] or {}      
        pconfig.strip[strip].cstrip = pconfig.strip[strip].cstrip or stuff[strip][1]
        local cstrip = pconfig.strip[strip]      
        ember()
        love.graphics.print(cstrip.cstrip,10,530)
        local x=5
        for k,v in spairs(assets) do            
            if prefixed(k,"pz_"..strip.."_"..pconfig.strip[strip].cstrip.."_") then 
               cstrip.tile = cstrip.tile or k
               if cstrip.tile==k then 
                  Color(255,0,0,80)
                  Rect(x-2,548,36,36)
               end 
               white()
               DrawImage(v,x,550); x = x + 35
            end
        end
      end
      
local function mdown(x,y,b)
  e.startx = x
  e.starty = y
  e.but = b
end      

local function mrelease(x,y)
   if e.area then
      for ax=e.area.sx,e.area.ex do for ay=e.area.sy,e.area.ey do
          (({ 
               function ()
                  -- e[pconfig.tab]:def({ax,ay},pconfig.strip[({walls='wall',floors='floor'})[pconfig.tab]][pconfig.strip[({walls='wall',floors='floor'})[pconfig.tab].tile]])
                  local arr = e[pconfig.tab]
                  local str = {walls='wall',floors='floor'}
                  local ttb = pconfig.tab
                  local rst = str[ttb]
                  local tdt = pconfig.strip[rst].tile
                  arr:def({ax,ay},tdt)
                  print("define "..strval(tdt).." into ("..ax..","..ay..")")
               end,
               function ()
                  e[pconfig.tab]:def({ax,ay},nil)
               end                              
          })[e.but or 1] or chain.nothing)()
      end end
   end
   e.area = nil
   e.startx = nil
   e.starty = nil
   e.but = nil
end

local function cstrip(ax,ay,b)
    local strip=({walls='wall',floors='floor'})[pconfig.tab]
    assert(stuff[strip],"Lua claims that "..strip.." has no stuff.... (yeah right)")
    pconfig.strip[strip] = pconfig.strip[strip] or {}
    --assert(pconfig.strip[strip],"Lua claims there is no config for strip "..strip.." (yeah right)")
    pconfig.strip[strip].cstrip = pconfig.strip[strip].cstrip or stuff[strip][1]
    local x=5
    local cstrip = pconfig.strip[strip] 
    if ay>504 and ay<526 then
       local i = 1
       for k,v in ipairs(stuff[strip]) do
           if v==cstrip.cstrip then i=k+1 end           
       end
       if i>#stuff[strip] then i=1 end
       cstrip.cstrip = stuff[strip][i]
    elseif ay>550 and ay<582 then    
        print("CHECK! "..strip)
        for k,v in spairs(assets) do            
            if prefixed(k,"pz_"..strip.."_"..pconfig.strip[strip].cstrip.."_") then 
                -- cstrip.tile = cstrip.tile or k
                print("PIC_CHECK: "..k.." / "..x)
                if ax>x and ax<x+32 then cstrip.tile=k end
                x = x + 35
            end 
            
        end
    end    
end      

local obstacles = {
                         strip = function()
                                     local strip=pconfig.tab
                                     pconfig.strip = pconfig.strip or {}
                                     pconfig.strip[strip] = pconfig.strip[strip] or {}                                            
                                     local cstrip = pconfig.strip[strip]      
                                     local s = glob.sobstacles[pconfig.tab] or {} -- crash prevention and being lazy.
                                     local x=5
                                     for k,v in spairs(s) do
                                         cstrip.tile = cstrip.tile or k
                                         if cstrip.tile==k then
                                            Color(255,0,0)
                                            Rect(x-2,548,36,36,"line")
                                            end
                                         Color(v[2],v[3],v[4])
                                         DrawImage(v[1],x,550)
                                         x = x + 35 
                                     end 
                                 end,
                         
                         clickstrip = function(x,y,b)
                                         if y<550 or y>582 then return end
                                         local strip=pconfig.tab
                                         pconfig.strip = pconfig.strip or {}
                                         pconfig.strip[strip] = pconfig.strip[strip] or {}                                            
                                         local cstrip = pconfig.strip[strip]      
                                         local s = glob.sobstacles[pconfig.tab] or {} -- crash prevention and being lazy.
                                         local ax=5                                         
                                         for k,v in spairs(s) do
                                             if x>ax and x<ax+32 then cstrip.tile=k end
                                             ax = ax + 35
                                         end                                           
                                      end,
                                      
                         modify = function(x,y,b)
                                         local strip=pconfig.tab
                                         pconfig.strip = pconfig.strip or {}
                                         pconfig.strip[strip] = pconfig.strip[strip] or {}
                                         local cstrip = pconfig.strip[strip] 
                                         local value = {cstrip.tile}
                                         e.obstacles:def({x,y},value[b])     
                                  end                     
                         
                  }



local tab -- The second line *is* required, or the editor *can* and *will* crash!
      tab = { walls = {
                           strip = function() showstrip('wall') end,
                           modify = mdown,
                           release = mrelease,
                           clickstrip = cstrip
                      },
              floors = {
                           strip = function() showstrip('floor') end,
                           modify = mdown,
                           release = mrelease,
                           clickstrip = cstrip
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
                                   end,
                           clickstrip = function(x,y,b)
                                          local ox=5
                                          for k,o in spairs(objects) do
                                              --er = (er or "") .. k.."  ox= "..ox.."\n"
                                              --print(k)
                                        	    if y>=550 and y<=582 and x>=ox and x<=ox+32 then                                        	       
                                        	       tab.objects.chosen = k                                        	       
                                        	    end                                        	    
                                              ox = ox + 35                                      	        
                                        	end 
                                        	--print(er.." ("..x..","..y..")")  
                                        end,        
                           modify = function(x,y,b)
                                        (({ function(x,y) -- put in
                                              local newobj = {
                                                               kind = tab.objects.chosen,
                                                               x = x,
                                                               y = y,
                                                               dir = tab.objects.dir or "D"
                                                            }
                                               puzzle.objects [#puzzle.objects+1] = newobj                                                         
                                            end,
                                            function(x,y) -- delete
                                              local remove 
                                              for i,v in ipairs(puzzle.objects) do
                                                  if v.x==x and v.y==y then remove=i end    
                                              end
                                              if i then table.remove(puzzle.objects,remove) end
                                            end
                                            })[b] or chain.nothing)(x,y) 
                                    end             
                       },
              plates = obstacles,
              lasers = obstacles,
              breakblocks = obstacles,
              exits = obstacles,
              settings = {
                              strip = function() 
                                      Color(255,0,0)
                                      DrawImage("plate1",5,535)
                                      DrawImage("plate2",5,568)
                                      white()
                                      DrawImage("barrier",60,535)
                                      DrawImage("trashcan",60,568)
                                      -- tools
                                      puzzle.tools = puzzle.tools or {}
                                      puzzle.tools.plate1  = puzzle.tools.plate1  or 0
                                      puzzle.tools.plate2  = puzzle.tools.plate2  or 0
                                      puzzle.tools.barrier = puzzle.tools.barrier or 0
                                      puzzle.tools.trash   = puzzle.tools.trash   or 0
                                      puzzle.missionnum    = puzzle.missionnum    or 1
                                      puzzle.mission       = glob.missions[puzzle.missionnum]
                                      -- print(serialize('missions',glob.missions))
                                      love.graphics.print(puzzle.tools.plate1 ,20,545)
                                      love.graphics.print(puzzle.tools.plate2 ,20,578)
                                      love.graphics.print(puzzle.tools.barrier,75,545)
                                      love.graphics.print(puzzle.tools.trash  ,75,578)
                                      -- other settings
                                      puzzle.reqballs = puzzle.reqballs or 1
                                      love.graphics.print("Requirement: "..puzzle.reqballs,150,560)
                                      puzzle.partime = puzzle.partime or 0
                                      love.graphics.print("Par (in secs): "..puzzle.partime,150,540)
                                      love.graphics.print("Mission: "..(puzzle.mission or "?ERROR"),150,580)
                                      -- message
                                      local c = abs(sin(love.timer.getTime()/200))*255
                                      Color(c,c,c)
                                      love.graphics.print(lang.edit.settingsmessage,100,480)          
                                      -- draw test button
                                      local st = {[false]='line',[true]='fill'}
                                      local cl = {[false]={255,255,255},[true]={255,180,0}}
                                      local hv = (e.mx and e.my and e.mx>600 and e.mx<700 and e.my>550 and e.my<570) or false -- "or false" does not make sense, does it? It was put in here, to drive the possibility of a 'nil' out, as that would cause a crash.
                                      Color(80,80,80)
                                      Rect(600,550,100,20,st[hv])
                                      Color(cl[hv][1],cl[hv][2],cl[hv][3])
                                      love.graphics.print("Test",605,555)                            
                                      end,
                              clickstrip = function(mx,my,b)
                                               local function i(fld,v,max,min)
                                                   if not v then return end
                                                   if puzzle.tools[fld] then
                                                      puzzle.tools[fld] = puzzle.tools[fld] + v
                                                      if puzzle.tools[fld]>max then puzzle.tools[fld]=0 elseif puzzle.tools[fld]<0 then puzzle.tools[fld]=max end
                                                   else
                                                      puzzle[fld] = puzzle[fld] + v
                                                      if puzzle[fld]>max then puzzle[fld]=min or 0 elseif puzzle[fld]<(min or 0) then puzzle[fld]=max end
                                                   end
                                               end
                                               local a={1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
                                               if my<500 then return end
                                               if mx> 20 and mx< 52 and my>545 and my<577 then i('plate1' ,      a[b],100) end
                                               if mx> 20 and mx< 52 and my>578 and my<600 then i('plate2' ,      a[b],100) end
                                               if mx> 75 and mx<107 and my>545 and my<577 then i('barrier',      a[b],100) end
                                               if mx> 75 and mx<107 and my>578 and my<600 then i('trash',        a[b],100) end
                                               if mx>150 and mx<400 and my>560 and my<580 then i('reqballs',     a[b],countballs(puzzle)) end
                                               if mx>150 and mx<400 and my>540 and my<560 then i('partime',    5*a[b],2*60*60) end
                                               if mx>150 and mx<400 and my>580            then i('missionnum',   a[b],#glob.missions,1) end   
                                               if mx>600 and mx<700 and my>550 and my<570 then e.TestPuzzle() end                                                                                                                                        
                                           end        
                         }
            }

function e.arrive() 
	e.filename = LoadImage(love.graphics.newText(glob.love2dfont,e.file))
	if love.filesystem.exists("homemadepuzzles/"..e.file..".lua") then puzzle,pconfig = save.load("homemadepuzzles/"..e.file) end --j_love_import("homemadepuzzles/"..e.filename..".lua") end
	pconfig = pconfig or {}
	puzzle.title = puzzle.title or e.file
	puzzle.format = puzzle.format or {25,15}
	e.floors = declaremultidim(puzzle.format)
	e.walls  = declaremultidim(puzzle.format)
	e.obstacles = declaremultidim(puzzle.format)
	puzzle.floors    = puzzle.floors    or e.floors.array;    e.floors.array    = puzzle.floors
	puzzle.walls     = puzzle.walls     or e.walls.array;     e.walls.array     = puzzle.walls
	puzzle.obstacles = puzzle.obstacles or e.obstacles.array; e.obstacles.array = puzzle.obstacles
	puzzle.objects   = puzzle.objects   or {} 
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
  elseif keypressed.lgui or keypressed.rgui or keypressed.rctrl or keypressed.lctrl then -- Linux and Windows use Ctrl for this. Mac uses the "command" key for this, also known as the "apple-key". I don't want to do things too hard, and support both keys on all platforms.
    (({
         s = function() save.multisave("homemadepuzzles/"..e.file,{puzzle,pconfig}) e.modified=nil end 
    })[key] or chain.nothing)()
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
    local c=abs(sin(love.timer.getTime( )/500))*255
    local dx=floor((e.mx or 0)/32)*32
    local dy=(floor(((e.my or 0)-20)/32)*32)+20
    local tx=floor((e.mx or 0)/32)
    local ty=floor(((e.my or 0)-20)/32)
    pconfig.tab = pconfig.tab or "walls"
    Cls()
    -- Draw puzzle
    white()
    drawgamescreen(puzzle)
    -- field if there
    if e.startx and e.starty then
       Color(rand(0,255),rand(0,255),rand(0,255),15)
       e.area = e.area or {}
       if tx<e.startx then e.area.sx = tx; e.area.ex=e.startx else e.area.ex = tx; e.area.sx=e.startx end 
       if ty<e.starty then e.area.sy = ty; e.area.ey=e.starty else e.area.ey = ty; e.area.sy=e.starty end
       Rect(e.area.sx*32,((e.area.sy*32)+20),((e.area.ex+1)-e.area.sx)*32,((e.area.ey+1)-e.area.sy)*32)
       white(); love.graphics.print(serialize('area',e.area),5,60) -- debug line
       end
    -- Point in puzzle
    if e.mx and e.my and e.my>20 and e.my<500 then
       white() love.graphics.print("pos: "..e.mx..","..e.my,5,20); love.graphics.print("rect: "..dx..","..dy,5,40) -- debug line
       Color(c,c,c) 
       Rect(dx,dy,32,32,"line")
    end 
    -- Interface
    white()
    DrawImage("int_top",0,0)
    DrawImage("int_men",0,500)
    -- Top bar
    DrawImage(e.filename,5,5)
    local fnpos = 15 + ImageWidth(e.filename)    
    love.graphics.setFont(glob.love2dfont)    
    if e.modified then red() love.graphics.print("(modified)",700,5) end 
    ember()
    love.graphics.print(puzzle.title.."_",fnpos,5) 
    -- Lower field
    for i,t in ipairs(tabs) do
        thisisourtab = pconfig.tab==t
        Color(100,100,100,120)
        Rect(((i-1)*100)+2,505,80,25,({[true]='fill', [false]='line'})[thisisourtab])
        ;({[true]=ember,[false]=white})[thisisourtab]()      
        love.graphics.print(lang.edit.layers[t] or "lang_err",((i-1)*100)+5,510)  
    end    
    -- Show item strip
    (tab[pconfig.tab].strip or chain.nothing)()      
end

function e.mousepressed(x,y,button)
	for i,t in ipairs(tabs) do
		if y>505 and y<530 and x>(i-1)*100 and x<((i-1)*100)+80 then pconfig.tab=t end
	end
	(tab[pconfig.tab].clickstrip or chain.nothing)(x,y,button)
	local fx,fy
	if y>20 and y<500 then
	   fx = floor(x/32)
	   fy = floor((y-20)/32)
	   ;(tab[pconfig.tab].modify or chain.nothing)(fx,fy,button);e.modified=true
	end
end

function e.mousereleased(x,y)
   (tab[pconfig.tab].release or chain.nothing)(fx,fy,button);e.modified=true
end

function e.testpuzzle()
save.multisave("homemadepuzzles/"..e.file,{puzzle,pconfig})
-- *localimport game
-- *if ignore
local game = {} -- Ignored by the game. I just wanted to fool my IDE outliner.
-- *fi
game.getback = e
game.puzzle = save.load("homemadepuzzles/"..e.file) -- I need a duplicate, or else the test routine will overwrite the actual level in the editor's memory
game.source = "Test-Run"
game.mode   = "test"
chain.go(game)
end e.TestPuzzle = e.testpuzzle

return e
