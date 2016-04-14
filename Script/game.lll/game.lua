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
Version: 16.04.14
]]

-- *import drawgamescreen



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
                      end,
      space = function()
               stars = stars or {}
               if rand(1,15)==1 then append(stars,{x=rand(0,800),y=-5,spd=(rand(1,40)/10),c=rand(100,255)}) end
               for i,star in pairs(stars) do
                   star.y = star.y + star.spd
                   Color(star.c,star.c,star.c)
                   love.graphics.points(star.x,star.y)
                   if star.y>500 then star[i] = nil end -- No need to pack. The way this is coded picks up all stars anyway. I used pairs as the order doesn't matter anyway.                    
               end
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
   if (puzzle.mission=="Break-Away" or puzzle.mission=="Break-Free") then
      Color(180,0,255)
      puzzle.breakblocks = me.countbreakblocks()
      love.graphics.print(({[0]="",[1]="1 tile"})[puzzle.breakblocks] or strval(puzzle.breakblocks).." tiles",500,5)
   end   
   -- bottom bar
   me.currenttool = me.currenttool or 'plate1'
   puzzle.tpr = puzzle.tpr or rand(1,100)
   puzzle.usedtools = puzzle.usedtools or 0
   Color(abs(255*sin(love.timer.getTime( )/puzzle.tpr)),abs(255*cos(love.timer.getTime( )/puzzle.tpr)),abs(255*sin(love.timer.getTime( )/(100-puzzle.tpr))))
   Rect(
          ({ plate1=100, plate2=150, trash=200, barrier=250})[me.currenttool],
          550,32,45
       ) 
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
   -- stage specific actions
   (({
         play = function()
                    local e=me
                    local dx=floor((e.mx or 0)/32)*32    
                    local dy=(floor(((e.my or 0)-20)/32)*32)+20
                    local c=abs(sin(love.timer.getTime( )))*255
                    if e.mx and e.my and e.my>20 and e.my<500 then
                       -- white() love.graphics.print("pos: "..e.mx..","..e.my,5,20); love.graphics.print("rect: "..dx..","..dy,5,40) -- debug line       
                       Color(c,c,c)       
                       Rect(dx,dy,32,32,"line")
                    end   
                end,
         pause = function()
                     DrawImage('gamepaused',
                                  400-(ImageWidth('gamepaused')/2),
                                  300-(ImageHeight('gamepaused')/2)
                              )
                  end,           
         succeed = function()
                     DrawImage('gratz',
                                  400-(ImageWidth('gratz')/2),
                                  300-(ImageHeight('gratz')/2)
                              )
                  end           
                
   })[me.stage] or chain.nothing)()
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
   -- toolbar
   local tools = {[100]='plate1',[150]='plate2',[200]='trash',[250]='barrier'}
   for i,k in pairs(tools) do
       if y>550 and x>i and x<i+32 then
          me.currenttool=k
       end
   end    
   -- stage specific actions
   (({
       play = function()
                if me.my<20 or me.my>500 then return end
                local tx=floor ((me.mx or 0)/32)
                local ty=floor(((me.my or 0)-20)/32)
                local function pplate(p,wall)
                      local o = table2multidim(puzzle.obstacles,puzzle.format)
                      local w = table2multidim(puzzle.walls,puzzle.format)
                      local v = o:get({tx,ty})
                      local wv= w:get({tx,ty})
                      local pp= p
                      if pp and prefixed(pp,"plate") then pp="r"..pp end
                      if (v=='rplate1' or v=='rplate2' or v=='yplate1' or v=='yplate2' or v==nil) and v~=pp and (not wv) and puzzle.tools[p or 'trash']>0 then
                         if wall then w:def({tx,ty},p) else o:def({tx,ty},pp) end
                         puzzle.usedtools = puzzle.usedtools + 1
                         puzzle.tools[p or 'trash'] = puzzle.tools[p or 'trash'] - 1
                         sfx("tool")
                      else
                         sfx('buzz')
                      end  
                end
                (({
                     plate1 = function()
                                 pplate('plate1')
                              end,
                     plate2 = function()
                                 pplate('plate2')
                              end,
                     trash = function()
                                 pplate(nil)
                             end,
                     barrier = function()
                                 pplate('barrier',true)
                               end                         
                })[me.currenttool] or function() me.error("IUKT","Tool: "..strval(me.currenttool)) end)()
              end
   })
   [me.stage] or chain.nothing)() 
end

function me.gocoords(o,altdir)
o.dir = o.dir or "D"
return 
(({
     D = function() return o.x,o.y+1 end,
     U = function() return o.x,o.y-1 end,
     R = function() return o.x+1,o.y end,
     L = function() return o.x-1,o.y end,
     S = function() return o.x,o.y   end
})[altdir or o.dir] or function() error("Object wants to go into direction "..o.dir.."\nI don't know that direction!") end)()
end

function me.block(x,y)
    local ret,reason = false,nil
    local walls = table2multidim(puzzle.walls,puzzle.format)
    local obs   = table2multidim(puzzle.obstacles,puzzle.format)
    ret = false
    ret = ret or x<0
    ret = ret or x>25-1
    ret = ret or y<0
    ret = ret or y>15-1
    ret = ret or walls:get({x,y})~=nil  -- I only want to return 'true' or 'false'. Not an actual value.
    ret = ret or prefixed(strval(obs:get({x,y})),"bb")
    if ret and prefixed(strval(obs:get({x,y})),"bb") then reason="bb" end
    return ret,reason
end

function me.objblock(o)
   return me.block(o.x,o.y)
end

function me.objgoblock(o)
   return me.block(me.gocoords(o))
end

function me.blockturn(o)
	local blk,rea = me.objgoblock(o)
	local x,y
	if blk then
     if rea == "bb" then
        x,y = me.gocoords(o)
        table2multidim(puzzle.obstacles,puzzle.format):def({x,y},nil)
        sfx("breakblock")
        puzzle.breakblocks = me.countbreakblocks()
        if puzzle.breakblocks==0 then 
           (({
               ['Break-Away'] = me.endofpuzzle,
               ['Break-Free'] = function() table2multidim(puzzle.walls,puzzle.format):def({x,y},'a_exit') end
           })[puzzle.mission] or chain.nothing)()
        end   
     end
  o.dir = ({ D='U', U='D', R='L', L='R', S='S'})[o.dir]
  end
	return blk   
end

function me.plateturn(o)
-- 1 = /
-- 2 = \
local p = { gplate1="/", gplate2="\\", rplate1="/", rplate2="\\", zplate1="/", zplate2="\\"}
local ob = table2multidim(puzzle.obstacles,puzzle.format)
local v = ob:get({o.x,o.y}); if not v then return end
local plate = p[v]
if not plate then return end
local nd = { ["\\"] ={ D='R', U='L', L='U', R='D', S='S' }, 
             ["/"]=  { D='L', U='R', L='D', R='U', S='S' } }
local newdir=nd[plate][o.dir]
local nx,ny = me.gocoords(o,newdir)
if me.block(nx,ny) then return end
o.dir = newdir
end


function me.destroy(o)
local i=0
repeat 
i = i + 1
until puzzle.objects[i]==o or i>#puzzle.objects
if i>#puzzle.objects then print("WARNING! Tried to destroy a non-existing object") end
print("object #"..i.." should be destroyed!")
append(me.destroylist,i)       
end

function me.finish(o)
puzzle.stats.di_in = puzzle.stats.di_in + 1
me.destroy(o)
sfx('exit')
end

me.exits = {}

function me.exits.ball_finish(o)
   local ob = table2multidim(puzzle.obstacles,puzzle.format)
   local v = ob:get({o.x,o.y}); if not v then return end
   if not v then return end
   if not suffixed(v,"exit") then return end
   ;(({
       ['a_exit'] = me.finish                     
   })[v] or function(o) error("I don't know exit type:"..v) end)(o)
end

me.moves = {}

function me.moves.move_default(o)
print("Move Default")
me.plateturn(o) -- "plateturn" MUST come prior to "blockturn" or you will get some very undesirable behavior!
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
      o.modx = o.modx + (32 * (oldx-o.x))
      o.mody = o.mody + (32 * (oldy-o.y))
   end
end

function me.endofpuzzle()
    local ihave = puzzle.stats.di_out
    if puzzle.mission=='Normal' or puzzle.mission=="Break-Free" then ihave = puzzle.stats.di_in end
    if ihave>=puzzle.stats.di_req then
       -- success!
       user.data.puzzlesolved = user.data.puzzlesolved or {}
       -- if this is an original puzzle, let's set up the personal stats and contact Anna about it.
       -- all done. let's congratulate the user
       me.stage='succeed'
    else
       -- fail!
       me.stage='fail'
       me.failure='Only '..ihave..' balls survived. '..puzzle.stats.di_reg..' were required!'
    end
end


function me.update()
    me.destroylist = {};
    (({
         play = function()
                   -- Let's set it all up here
                   local timer = floor(love.timer.getTime()*1000)
                   me.oldtimer = me.oldtimer or timer
                   local tsec = os.date("%S")
                   me.oldtsec = me.oldtsec or tsec
                   if tsec~=me.oldtsec then puzzle.time = puzzle.time + 1; me.oldtsec = tsec end
                   --print(abs(timer-me.oldtimer).." acttimer:"..timer.." old-timer:"..me.oldtimer)
                   if abs(timer-me.oldtimer)>me.gamespeed then
                      --print("CYCLE!")
                      for o in each(puzzle.objects) do
                          (me.moves[objects[o.kind].movement] or function(o) me.error("IUOM",objects[o.kind].movement) end)(o);
                          (me.exits[objects[o.kind].finish]   or chain.nothing)(o)
                      end                      
                      for i in each(me.destroylist) do
                          puzzle.objects[i]=nil
                          print("object #"..i.." set to nil")
                      end
                      if (#me.destroylist>0) then
                         print("packing objects table")
                         puzzle.objects = packtable(puzzle.objects)
                         puzzle.stats.di_out = countballs(puzzle)
                      end
                      me.oldtimer=timer
                   end
                   -- Puzzle solved or failed?
                   if puzzle.stats.di_out==0 then me.endofpuzzle() end                   
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

function me.countbreakblocks()
    local cnt,locs = 0,{}
    for k,v in spairs(puzzle.obstacles) do
        if prefixed(v,"bb") then cnt=cnt+1 append(locs,k) end
    end
    return cnt,locs 
end

function me.startpuzzle()
  me.stage = 'play'
  me.ass(countballs(puzzle)>0,"ENOB")
  if puzzle.mission=="Break-Away" or puzzle.mission=="Break-Free" then
     puzzle.breakblocks = me.countbreakblocks()
     me.ass(puzzle.breakblocks,"ENBB")
  end
end

function me.pickpuzzle()
chain.go(me.pickchain)
end

function me.leave()
music.stop()
end

function me.arrive()
    local test = me.mode=='test'
    local homemade = me.mode=='homemade'
    me.buttons = {
                    intro  = {start = {enable=true,fun=me.startpuzzle},
                              pick = {enable=not test, fun=me.pickpuzzle},
                              back = {enable=true, fun=me.back}},
                    play   = {pause = {enable=true, fun=function() me.stage='pause' end},
                              giveup = {enable = true, fun=me.giveup}},
                    pause  = {zcont = {enable=true, fun=function() me.stage='play' end},
                              giveup = {enable = true, fun=me.giveup}},
                    fail   = {zagain = {enable=true, fun=me.restart},
                              pick = {enable=not test, fun=me.pickpuzzle},
                              back = {enable=true, fun=me.back}},
                    succeed= {znext = {enable=not (test or homemade), fun=me.restart},
                              pick = {enable=not test, fun=me.pickpuzzle},
                              back = {enable=true, fun=me.back}},
                              
                 }
    me.stage   = 'intro'                
end


-- This import must always come last, otherwise the functions tied to the objects will all be turned to nil.
-- *localimport objects
me.objects = objects

return me
