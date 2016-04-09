--[[
	BallPlay Genius
	Game Main Script
	
	
	
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



-- *if ignore
local objects
-- *fi
local me = {}
local puzzle


me.gamespeed = 500 -- The higher this number, the slower it goes.

me.backgrounds = {

      RandomFractal = function()
                      -- Man, it's always surprising how you can "abuse" Lua. :)
                        me.fractals = me.fractals or (function()
                             local ret = {}
                             for k,v in spairs(assets) do
                                 if prefixed(k,"frac_") then ret[#ret+1]=k print("Added: "..k) end
                             end
                             return ret 
                           end)()
                        puzzle.fractal = puzzle.fractal or rand(1,#me.fractals)
                        DrawImage(me.fractals[puzzle.fractal],0,0) 
                      end
}


function me.startmusic()
if not user.data.config.music then
   print("Music is turned off in the user's config")
   -- print(serialize('user'),user) 
   return true 
   end
music.play(puzzle.music or glob.randommusic[rand(1,glob.maxmusic)])
return true
end

function me.draw()
   puzzle = puzzle or me.puzzle
   assert(puzzle,"No puzzle loaded!")
   puzzle.background = puzzle.background or "RandomFractal"
   puzzle.musicplaying = puzzle.musicplaying or me.startmusic()
   -- Clear
   Cls()
   white()
   -- Background
   me.backgrounds[puzzle.background]()
   -- Draw puzzle
   white()
   drawgamescreen(puzzle)
   -- Interface
   white()
   DrawImage("int_top",0,0)
   DrawImage("int_men",0,500)
   -- Top bar
   white()
   love.graphics.print(me.source,5,5)
   ember()
   love.graphics.print(puzzle.title,150,5)
   Color(0,180,255) puzzle.time = puzzle.time or 0
   love.graphics.print(time.sec2time(puzzle.time),650,5)
   -- bottom bar
   red()
   DrawImage("plate1"  ,100,550)
   DrawImage("plate2"  ,150,550)   white()
   DrawImage("trashcan",200,550)
   DrawImage("barrier" ,250,550)
   love.graphics.print(puzzle.tools.plate1   ,100,580)
   love.graphics.print(puzzle.tools.plate2   ,150,580)
   love.graphics.print(puzzle.tools.trash    ,200,580)
   love.graphics.print(puzzle.tools.barrier  ,250,580)
   -- stats
   puzzle.showstat = puzzle.showstat or ({ [true]={'di_in','di_req','di_out','di_dead'},[false]={'di_req','di_out','di_dead'}})[puzzle.mission=='Normal' or puzzle.mission=='Break-Free']
   puzzle.stats = puzzle.stats or {}
   puzzle.stats.di_in   = puzzle.stats.di_in  or 0 
   puzzle.stats.di_out  = puzzle.stats.di_out or countballs(puzzle)
   puzzle.stats.di_req  = puzzle.reqballs 
   puzzle.stats.di_dead = puzzle.stats.di_dead or 0
   white()
   for i,k in ipairs(puzzle.showstat) do
       DrawImage(k,(70*i)+420,505)
       love.graphics.print(puzzle.stats[k],15+(70*i)+420,520)
       if me.mx and me.my and me.my>505 and me.my<570 and me.mx>15+(70*i)+420 and me.mx<15+(70*i)+420+70 then love.graphics.print(lang.game.symbols[k] or "?",me.mx-100,me.my) end 
   end    
   -- buttons
   local i = 3
   for k,b in spairs(me.buttons[me.stage]) do
       local y = (i*15)+500; i = i - 1
       local hv = me.mx~=nil and me.my~=nil and me.mx>300 and me.mx<500 and me.my>y and me.my<y+15 and b.enable -- hv=b.enable
       local s = {[false]=.5, [true]=1}
       local t = {[false]='line',[true]='fill'}
       local c = {[false]={255,255,255},[true]={255,180,0}}
       Color(80*s[b.enable],80*s[b.enable],80*s[b.enable])
       Rect(300,y,100,15,t[hv])
       Color(c[hv][1]*s[b.enable],c[hv][2]*s[b.enable],c[hv][3]*s[b.enable])
       love.graphics.print(lang.game.buttons[k] or "?"..k,303,y+2)
   end
end

function me.mousemoved(x,y)
me.mx = x
me.my = y
end

function me.back()
chain.go(me.getback or "mainmenu")
music.stop()
end

function me.mousepressed(x,y,b)
   me.mousemoved(x,y)
   -- buttons
   local i = 3
   for k,b in spairs(me.buttons[me.stage]) do
       local y = (i*15)+500; i = i - 1
       local hv = me.mx~=nil and me.my~=nil and me.mx>300 and me.mx<500 and me.my>y and me.my<y+15 and b.enable -- hv=b.enable
       local fn = {[true]=b.fun or chain.nothing, [false]=chain.nothing}
       fn[hv]()
   end    
end

function me.gocoords(o)
o.dir = o.dir or "D"
return 
(({
     D = function() return o.x,o.y+1 end,
     U = function() return o.x,o.y-1 end,
     R = function() return o.x+1,o.y end,
     L = function() return o.x-1,o.y end,
     S = function() return o.x,o.y   end
})[o.dir] or function() error("Object wants to go into direction "..o.dir.."\nI don't know that direction!") end)()
end

function me.block(x,y)
    local ret
    local walls = table2multidim(puzzle.walls,puzzle.format)
    ret = false
    ret = ret or x<0
    ret = ret or x>25
    ret = ret or y<0
    ret = ret or y>15
    ret = ret or walls:get({x,y})~=nil  -- I only want to return 'true' or 'false'. Not an actual value.
    return ret
end

function me.objblock(o)
   return me.block(o.x,o.y)
end

function me.objgoblock(o)
   return me.block(me.gocoords(o))
end

function me.blockturn(o)
local blk = me.objgoblock(o)
if blk then
   o.dir = ({ D='U', U='D', R='L', L='R', S='S'})[o.dir]
   end
return blk   
end

me.moves = {}

function me.moves.move_default(o)
print("Move Default")
me.blockturn(o)
me.move(o)
end

function me.move(o)
   local oldx,oldy
   if not me.objgoblock(o) then 
      oldx = o.x
      oldy = o.y
      o.x,o.y = me.gocoords(o)
      o.modx = o.modx or 0
      o.mody = o.mody or 0
      o.modx = o.modx + (1 * (o.x-oldx))
      o.mody = o.mody + (1 * (o.y-oldy))
   end
end


function me.update()
    (({
         play = function()
                   -- Let's set it all up here
                   local timer = floor(love.timer.getTime()*1000)
                   me.oldtimer = me.oldtimer or timer
                   local tsec = os.date("%S")
                   me.oldtsec = me.oldtsec or tsec
                   if tsec~=me.oldtsec then puzzle.time = puzzle.time + 1; me.oldtsec = tsec end
                   print(abs(timer-me.oldtimer).." acttimer:"..timer.." old-timer:"..me.oldtimer)
                   if abs(timer-me.oldtimer)>me.gamespeed then
                      print("CYCLE!")
                      for o in each(puzzle.objects) do
                          (me.moves[objects[o.kind].movement] or function(o) me.error("IUOM",objects[o.kind].movement) end)(o)
                      end
                      me.oldtimer=timer
                   end
                end
    })[me.stage] or chain.nothing)()
end

function me.error(err,details)
local errm = err..":"..(lang.game.error[err] or "Error message not present in this language")
errm = errm .. (details or "")
if prefixed(err,"I") then errm = errm .."\n\nThis is an internal error. Please report this on:\nhttps://github.com/Tricky1975/BallPlayCupid/issues" end
if me.olderror==errm then return end me.olderror=errm -- Prevent throwing the same error multiple times
love.window.showMessageBox("Ballplay Cupid - Puzzle Error",errm,{"Bye!"})
me.back()
end

function me.ass(expression,err)
if not expression then me.error(err) end
end

function me.startpuzzle()
me.stage = 'play'
me.ass(countballs(puzzle),"ENOB")
end


function me.arrive()
    local test = me.mode=='test'
    me.buttons = {
                    intro  = {start = {enable=true,fun=me.startpuzzle},
                              pick = {enable=not test, fun=me.pickpuzzle},
                              back = {enable=true, fun=me.back}},
                    play   = {pause = {enable=true, fun=function() me.stage='pause' end},
                              giveup = {enable = true, fun=me.giveup}},
                    pause  = {cont = {enable=true, fun=function() me.stage='play' end},
                              giveup = {enable = true, fun=me.giveup}},
                    fail   = {zagain = {enable=true, fun=me.restart},
                              pick = {enable=not test, fun=me.pickpuzzle},
                              back = {enable=true, fun=me.back}},
                    succeed= {znext = {enable=true, fun=me.restart},
                              pick = {enable=not test, fun=me.pickpuzzle},
                              back = {enable=true, fun=me.back}},
                              
                 }
    me.stage   = 'intro'                
end


-- This import must always come last, otherwise the functions tied to the objects will all be turned to nil.
-- *localimport objects
me.objects = objects

return me
