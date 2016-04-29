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
Version: 16.04.29
]]




-- *import drawgamescreen

-- *define debug_lasercompile



-- *if ignore
local objects
-- *fi
local me = {}
local puzzle


me.noshowdroidspots = true
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
              end,
      image = function()
               Color(puzzle.ibck.r or 255,puzzle.ibck.g or 255,puzzle.ibck.b or 255,puzzle.ibck.a or 255)
               DrawImage("back_"..puzzle.ibck.img,400-(ImageWidth("back_"..puzzle.ibck.img)/2),300-(ImageHeight("back_"..puzzle.ibck.img)/2))
               white()
              end,    
      pink  = function()
               c = rand(0,255); a = rand(10,100)
               Color(c,c*.75,c*75)
               for i=1,3 do Rect(rand(0,800),rand(0,500),rand(0,100),rand(100)) end
              end,
      snow = function()
               me.snow('back')
             end    ,
      blood = function()
               assets.blood = assets.blood or 
                    (function()
                        local ret = love.graphics.newCanvas(800,600)
                        red()
                        love.graphics.setCanvas(ret)
                        for x=0,3 do for y=0,12 do
                            DrawImage('water',x*200,y*150)
                        end end
                        love.graphics.setCanvas()
                        white()
                        return LoadImage(ret) 
                     end)()
                 puzzle.bloody = (puzzle.bloody or 0) + 1
                 if puzzle.bloody>=600 then puzzle.bloody = 0 end
                 DrawImage('blood',0,puzzle.bloody-600)
                 DrawImage('blood',0,puzzle.bloody)                     
              end                         
}

me.foregrounds = {
         nothing = chain.nothing,
         snow = function()
                  me.snow('front')
                end,
         image = function()
                  Color(puzzle.ifor.r or 255,puzzle.ifor.g or 255,puzzle.ifor.b or 255,puzzle.ifor.a or 255)
                  DrawImage("fore_"..puzzle.ifor.img,400-(ImageWidth("fore_"..puzzle.ifor.img)/2),300-(ImageHeight("fore_"..puzzle.ifor.img)/2))
                  white()
                 end
}

function me.snow(layer)
  puzzle.snow = puzzle.snow or {}
  puzzle.snow[layer] = puzzle.snow[layer] or {}
  local snow = puzzle.snow[layer]
  while #snow<200 do
     append(snow,{
                     y=-100,
                     x=rand(0,800),
                     s=rand(1,100)/75,
                     r=rand(2,4)
                 })                 
  end
  Color(255,255,255,200)
  for i,flake in pairs(snow) do
      love.graphics.circle('fill',flake.x,flake.y,flake.r,10)
      flake.y = flake.y + flake.s
      if flake.y>650 then snow[i]=nil end
  end
end

function me.startmusic()
if not user.data.config.music then
   print("Music is turned off in the user's config")
   -- print(serialize('user'),user) 
   return true 
   end
music.play(puzzle.music or glob.randommusic[rand(1,glob.maxmusic)])
return true
end

me.collide = {

                  collide_ball = function(myself,other)
                                   if objects[other.kind].collide~='collide_ball' then me.collide[objects[other.kind].collide](other,myself) end -- In other words... destroy me if you can.
                                 end,
                  collide_ghost = function(myself,other)
                                   -- print("ghost collides with "..other.kind)
                                   if suffixed(other.kind,"ball") then
                                      sfx('ghost_grab')
                                      me.destroy(other)
                                      if suffixed(other.kind,"ball") then puzzle.stats.di_dead = puzzle.stats.di_dead + 1 end                                      
                                   end
                                  end,
                  collide_droid = function(myself,other)
                                   if suffixed(other.kind,"ball") then
                                      sfx('ghost_grab')
                                      me.destroy(other)
                                      if suffixed(other.kind,"ball") then puzzle.stats.di_dead = puzzle.stats.di_dead + 1 end                                      
                                   end
                                  end,                
                  woman = function(myself,other)
                             if other.kind=="woman" then return end
                             append(puzzle.ghostwomen,{x=myself.x*32, y=(myself.y*32)+20})
                             me.stage  = 'fail'
                             me.failure = "A woman died!"
                             me.destroy(myself)
                          end                      
             }

function me.draw()
   puzzle = puzzle or me.puzzle
   assert(puzzle,"No puzzle loaded!")
   puzzle.background = puzzle.background or "RandomFractal"
   puzzle.foreground = puzzle.foreground or "nothing"
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
   -- Foreground
   me.foregrounds[puzzle.foreground]()
   -- Top bar
   white()
   love.graphics.print(me.source,5,5)
   ember()
   love.graphics.print(puzzle.title,135,5)
   Color(0,180,255) puzzle.time = puzzle.time or 0
   love.graphics.print(time.sec2time(puzzle.time),700,5)
   if (puzzle.mission=="Break-Away" or puzzle.mission=="Break-Free" or puzzle.mission=="Break&Collect") then
      Color(180,0,255)
      puzzle.breakblocks = me.countbreakblocks()
      love.graphics.print(({[0]="",[1]="1 tile"})[puzzle.breakblocks] or strval(puzzle.breakblocks).." tiles",550,5)
   end   
   if (puzzle.mission=='Collect') then
      Color(180,0,255)
      puzzle.dots = me.countdots()
      love.graphics.print(({[0]="",[1]="1 dot"})[puzzle.dots] or strval(puzzle.dots).." dots",550,5)      
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
   puzzle.showstat = puzzle.showstat or ({ [true]={'di_in','di_req','di_out','di_dead'},[false]={'di_req','di_out','di_dead'}})[puzzle.mission=='Normal' or puzzle.mission=='Break-Free' or puzzle.mission=='Color Split']
   puzzle.stats = puzzle.stats or {}
   puzzle.stats.di_in   = puzzle.stats.di_in  or 0 
   puzzle.stats.di_out  = puzzle.stats.di_out or countballs(puzzle)
   puzzle.stats.di_req  = puzzle.reqballs 
   puzzle.stats.di_dead = puzzle.stats.di_dead or 0
   white()
   for i,k in ipairs(puzzle.showstat) do
       DrawImage(k,(70*i)+420,505)
       black()
          for m=-1,1 do
              love.graphics.print(puzzle.stats[k],15+(70*i)+420+m,520+m)
          end
       white()   
       love.graphics.print(puzzle.stats[k],15+(70*i)+420,520)
       if me.mx and me.my and me.my>505 and me.my<570 and me.mx>15+(70*i)+420 and me.mx<15+(70*i)+420+70 then
          black()
          for m=-1,1 do
              love.graphics.print(lang.game.symbols[k] or "?",(me.mx-100)+m,me.my+m)
          end
          white()  
          love.graphics.print(lang.game.symbols[k] or "?",me.mx-100,me.my) 
          end 
   end    
   -- buttons
   local i = 3
   for k,b in spairs(me.buttons[me.stage]) do
       local y = (i*15)+515; i = i - 1
       local hv = me.mx~=nil and me.my~=nil and me.mx>300 and me.mx<500 and me.my>y and me.my<y+15 and b.enable -- hv=b.enable
       local s = {[false]=.5, [true]=1}
       local t = {[false]='line',[true]='fill'}
       local c = {[false]={255,255,255},[true]={255,180,0}}
       Color(80*s[b.enable],80*s[b.enable],80*s[b.enable])
       Rect(300,y,100,15,t[hv])
       Color(c[hv][1]*s[b.enable],c[hv][2]*s[b.enable],c[hv][3]*s[b.enable])
       love.graphics.print(lang.game.buttons[k] or "?"..k,303,y+2)
   end
   white()
   -- Missions
   Color(180,255,0)
   love.graphics.print("Mission: "..puzzle.mission,350,5)
   --love.graphics.print(strval(me.my and me.my<=20 and me.mx and me.mx>300 and me.mx<400)) -- debug line
   if me.my and me.my<=20 and me.mx and me.mx>300 and me.mx<500 then
      Color(0,0,0,0.75*255)
      local y = 25
      local tut = mysplit(lang.missions[puzzle.mission],"\n")
      Rect(300,20,300,(#tut*20)+10)
      white()
      for l in each(tut) do love.graphics.print(l,305,y) y=y+20 end
   end
   -- stage specific actions   
   white()
   ;(({
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
                     local y                     
                     puzzle.gratz = puzzle.gratz or 300
                     white()
                     DrawImage('gratz',
                                           400-(ImageWidth('gratz')/2),
                                  puzzle.gratz-(ImageHeight('gratz')/2)
                              )
                     if me.victorydata then
                        puzzle.vda = (puzzle.vda or -1) + 1
                        if puzzle.vda>255 then puzzle.vda=255 end
                        if puzzle.gratz>-800 then puzzle.gratz=puzzle.gratz-1 end
                        y=25
                        Color(0,0,0,puzzle.vda*.75)
                        Rect(0,20,800,480)
                        if me.rec=='Pz26' then
                          Color(255,0,0,puzzle.vda)
                          love.graphics.print("Those who made it",10,y)
                          love.graphics.line(10,y,790,y)
                          y = y + 25
                          for i=1,25 do
                             Color(0,180,255,puzzle.vda)
                             love.graphics.print(i..". "..(me.victorydata['MADEIT['..i..'].NAME'] or "Nobody"),20,y)
                             Color(180,255,0)
                             love.graphics.print(me.victorydata['MADEIT['..i..'].TIME'] or "Never",400,y)
                             y = y + 15 
                          end                               
                        else
                          for tab,name in spairs(lang.game.suctab) do
                            if me.victorydata['BOARD.YOU.'..tab] then
                               Color(255,0,0,puzzle.vda)
                               love.graphics.print(name,10,y)
                               love.graphics.line(10,y,790,y)
                               y = y + 20
                               for i=1,3 do
                                   Color(0,180,255,puzzle.vda)
                                   love.graphics.print(i..". "..(me.victorydata['BOARD['..i..'].'..tab..'.NAME'] or "Nobody"),20,y)
                                   Color(180,0,255,puzzle.vda)
                                   love.graphics.print( ( { TME = time.sec2time(tonumber(me.victorydata['BOARD['..i..'].'..tab..'.TIME'] or 0)),  
                                                            PTM = time.sec2time(tonumber(me.victorydata['BOARD['..i..'].'..tab..'.TIME'] or 0)),
                                                            TLS = me.victorydata['BOARD['..i..'].'..tab..'.TOOL'],
                                                            SUR = me.victorydata['BOARD['..i..'].'..tab..'.SURV']
                                                            })[tab] or '---',300,y)
                                   Color(180,255,0)
                                   love.graphics.print(me.victorydata['BOARD['..i..'].'..tab..'.ACHD'] or "Never",400,y)                         
                                   y = y + 15                                                                                       
                               end
                               y = y + 3
                               Color(255,180,0,puzzle.vda)
                               -- love.graphics.print("Your best score: "..(({ TME = time.sec2time(tonumber(me.victorydata['BOARD.YOU.'..tab] or 0)), PTE = time.sec2time(tonumber(me.victorydata['BOARD.YOU.'..tab] or 0)) })[tab] or me.victorydata['BOARD.YOU.'..tab] or "---"),100,y)
                               love.graphics.print("Your current rank: "..(me.victorydata['BOARD.YOU.'..tab] or "unranked"),100,y)
                               Color(180,255,0,puzzle.vda)
                               love.graphics.print("World average: "..(({ TME = time.sec2time(tonumber(me.victorydata['BOARD.AVG.'..tab] or 0)), PTM = time.sec2time(tonumber(me.victorydata['BOARD.AVG.'..tab] or 0)) })[tab] or me.victorydata['BOARD.AVG.'..tab] or "---"),500,y)
                               y = y + 50
                            end
                          end  
                        end    
                     end         
                  end    ,    
        fail = function()
                 DrawImage("failed",
                                400-(ImageWidth('failed')/2),
                               300-(ImageHeight('failed')/2) )
                 puzzle.failure = puzzle.failure or love.graphics.newText(glob.love2dfont,me.failure)
                 love.graphics.draw(puzzle.failure,
                                    400-(puzzle.failure:getWidth()/2),
                                    400-(puzzle.failure:getHeight()/2))  
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
       local y = (i*15)+515; i = i - 1
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
                      if (v=='rplate1' or v=='rplate2' or v=='gplate1' or v=='gplate2' or v==nil) and v~=pp and (not wv) and puzzle.tools[p or 'trash']>0 and table2multidim(puzzle.floors,puzzle.format):get({tx,ty}) then
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
o.dir = ({ E='R', N='U', W='L', S='D'})[o.dir] or o.dir; 
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
    ret = ret or prefixed(strval(obs:get({x,y})),"laser_")
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
        me.compilelasers()
        if puzzle.breakblocks==0 then 
           (({
               ['Break-Away'] = me.endofpuzzle,
               ['Break-Free'] = function() table2multidim(puzzle.obstacles,puzzle.format):def({x,y},'a_exit') end,
               ['Break&Collect'] = function()
                                   for k,v in pairs(puzzle.oriblocks) do
                                       puzzle.obstacles[v]='dot'
                                       end
                                   puzzle.mission='Collect'    
                                   end
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

function me.finish(o,v)
puzzle.stats.di_in = puzzle.stats.di_in + 1
me.destroy(o)
sfx('exit')
end

function me.colfinish(o,ex)
  local x = mid(ex,2,1)
  local b = mid(o.kind,5,1)
  print('colcheck '..x.." <=> "..b)
  if x==b then
     me.finish(o,ex)
  else
     puzzle.stats.di_dead = puzzle.stats.di_dead + 1
     me.destroy(o)
     sfx('buzz')
  end      
end

me.exits = {}

function me.exits.ball_finish(o)
   local ob = table2multidim(puzzle.obstacles,puzzle.format)
   local v = ob:get({o.x,o.y}); if not v then return end
   if not v then return end
   if not suffixed(v,"exit") then return end
   ;(({
       a_exit     = me.finish   ,    
       cr_exit    = me.colfinish ,
       cg_exit    = me.colfinish,
       cb_exit    = me.colfinish,
       ce_exit    = me.colfinish
   })[v] or function(o,v) error("I don't know exit type:"..v) end)(o,v)
end

me.moves = {}

function me.moves.move_default(o)
-- print("Move Default")
me.plateturn(o) -- "plateturn" MUST come prior to "blockturn" or you will get some very undesirable behavior!
me.blockturn(o)
me.move(o)
end

function me.moves.droid(o)
-- print(serialize('droidarrows',puzzle.droidarrows.array))
--print(o.x..","..o.y..">"..strval(puzzle.droidarrows:get({o.x,o.y})))
if puzzle.droidarrows and puzzle.droidarrows:get({o.x,o.y}) then   
   o.dir = ({
      zzarrow_droid_left   = "L",
      zzarrow_droid_right  = "R",
      zzarrow_droid_up     = "U",
      zzarrow_droid_down   = "D"
   })[puzzle.droidarrows:get({o.x,o.y})]
   --print("So droid's been changed to "..o.dir)
   end
me.blockturn(o)
me.move(o)
end

function me.getwomen()
  local ret = {}
  for o in each(puzzle.objects) do
    if o.kind=="woman" then append(ret,o) end
  end
  return ret
end    

function me.moves.woman(o)
me.ass(puzzle.mission=='Walkthrough',"EOWW")
puzzle.women = me.getwomen()
end

function me.checkbump(o)
   for k,co in pairs(puzzle.objects) do
       if co~=o and co.x==o.x and co.y==o.y then me.collide[objects[o.kind].collide](o,co) end
   end
end   

function me.addexplosion(x,y)
end

function me.laserkill()
  -- Kill EVERYTHING in the path of a laser
  for kleur,gegevens in pairs(puzzle.lasers) do
      if gegevens.shoot then
         for atile in each(gegevens.tiles) do
             for i,o in pairs(puzzle.objects) do
                 if o.x==atile[1] and o.y==atile[2] then
                 -- puzzle.objects[i] = nil
                 me.destroy(o)
                 print(o.kind.." #"..i.." was destroyed by a laser!")
                 puzzle.objects[i] = nil
                 me.addexplosion(o.x,o.y)
                 if suffixed(o.kind,'ball') then puzzle.stats.di_dead = puzzle.stats.di_dead + 1 end
                 if o.kind=='woman' then
                    me.collide.woman(o,{kind='whatever'}) 
                    end    
                 end
             end 
         end
      end
  end
  --[[
  for i in each(me.destroylist) do
      puzzle.objects[i]=nil
      print("object #"..i.." set to nil")
  end   
  puzzle.objects = packtable(puzzle.objects)
  ]]
  puzzle.stats.di_out = countballs(puzzle)  
end

function me.move(o)
   local oldx,oldy   
   if not me.objgoblock(o) then 
      oldx = o.x
      oldy = o.y
      me.checkbump(o)
      o.x,o.y = me.gocoords(o)
      o.modx = o.modx or 0
      o.mody = o.mody or 0
      o.modx = o.modx + (32 * (oldx-o.x))
      o.mody = o.mody + (32 * (oldy-o.y))
      me.checkbump(o)
   end
end

function me.anna(ihave)
   -- *import tablemerge
   local v,a,g = mkl.newestversion()
   local annaquery = {v1=a[1]+2000,v2=a[2],v3=a[3], game='BPC', HC='Game', A="BPC_Stats",puz = me.rec}
   local want = {'id','secu','puz','time','tools','survived','v1','v2','v3'}
   local unhashed = ''
   local ok,data
   if user.data.online then
      tablemerge(annaquery,{                               
                               time     = puzzle.time,
                               tools    = puzzle.usedtools,
                               survived = ihave,
                               id       = user.data.onlineid,
                               secu     = user.data.secucode
                           })
      for key in each(want) do   
          unhashed = unhashed .. key .. annaquery[key]
      end
      annaquery.hash = md5.sumhexa(unhashed)   
   end
   print("Next query sent to Anna\n",serialize("annaquery",annaquery))
   ok,data = user.call_anna(annaquery)               
   if ok then me.victorydata = data end
end

function me.endofpuzzle()
    local ihave = puzzle.stats.di_out
    if puzzle.mission=='Normal' or puzzle.mission=="Break-Free" or puzzle.mission=='Color Split' then ihave = puzzle.stats.di_in end
    if ihave>=puzzle.stats.di_req then
       -- success!
       if me.rec then -- Only act upon an original puzzle!
          -- Let's first update the local data
          user.data.puzzlesolved = user.data.puzzlesolved or {}
          user.data.puzzlesolved[me.rec] = user.data.puzzlesolved[me.rec] or {}
          local myupd = user.data.puzzlesolved[me.rec]
          if (not myupd.time) or (myupd.time>puzzle.time) then myupd.time = puzzle.time end
          if (not myupd.toolsused) or (myupd.toolsused>puzzle.usedtools) then myupd.toolsused = puzzle.usedtools end
          if (not myupd.ballssurvived) or (myupd.ballssurvived<ihave) then myupd.ballssurvived=ihave end
          user.save()
          -- if this is an original puzzle, let's set up the personal stats and contact Anna about it.
          if me.mode == "official" then me.anna(ihave) end
       end       
       -- all done. let's congratulate the user
       me.stage='succeed'
    else
       -- fail!
       me.stage='fail'
       me.failure='Only '..ihave..' balls survived. '..puzzle.stats.di_req..' were required!'
    end
end


function me.update()
    me.destroylist = {};
    (({
         play = function()
                  local ob = table2multidim(puzzle.obstacles,puzzle.format)
                   -- Let's set it all up here
                   local timer = floor(love.timer.getTime()*1000)
                   me.oldtimer = me.oldtimer or timer
                   local tsec = os.date("%S")
                   me.oldtsec = me.oldtsec or tsec
                   if tsec~=me.oldtsec then puzzle.time = puzzle.time + 1; me.oldtsec = tsec end
                   --print(abs(timer-me.oldtimer).." acttimer:"..timer.." old-timer:"..me.oldtimer)
                   if abs(timer-me.oldtimer)>me.gamespeed then
                      for kleur,d in pairs(puzzle.lasers) do
                          d.shoot=false
                      end
                      --print("CYCLE!")
                      for o in each(puzzle.objects) do
                          (me.moves[objects[o.kind].movement] or function(o) me.error("IUOM",objects[o.kind].movement) end)(o);
                          (me.exits[objects[o.kind].finish]   or chain.nothing)(o)
                          if prefixed(ob:get({o.x,o.y}) or "gezeik","zzarrow_normal_") then
                             o.dir = upper(mid(ob:get({o.x,o.y}),#("zzarrow_normal_")+1,1))
                          end 
                          if ob:get({o.x,o.y})=='dot' and prefixed(o.kind,"ball") then
                             ob:def({o.x,o.y},nil)                             
                          end
                          if table2multidim(puzzle.floors,puzzle.format):get({o.x,o.y})==nil then -- and o.modx==0 and o.mody==0 then
                             local of = {
                                          img    = cpImg(assets[objects[o.kind].image]),
                                          x      = (o.x*32)+(16),
                                          y      = ((o.y*32)+20)+(16),
                                          r      = objects[o.kind].color[1],
                                          g      = objects[o.kind].color[2],
                                          b      = objects[o.kind].color[3],
                                          a      = objects[o.kind].alpha
                                        }
                             append(puzzle.falling,of)
                             sfx("fall")            
                             HotCenter(of.img)
                             me.destroy(o)
                             if prefixed(o.kind,"ball") then puzzle.stats.di_dead = puzzle.stats.di_dead + 1 end     
                             if o.kind=="woman" then
                                me.stage='fail'
                                me.failure="A woman fell to her death"
                             end                                   
                          end
                        for kleur,d in pairs(puzzle.lasers) do
       										d.shoot=d.shoot or ob:get({o.x,o.y})=='platelaser_'..kleur
     										end
                      end                                            
                      for i in each(me.destroylist) do
                          puzzle.objects[i]=nil
                          print("object #"..i.." set to nil")
                      end
   										me.laserkill()
                      if (#me.destroylist>0) then
                         print("packing objects table")
                         puzzle.objects = packtable(puzzle.objects)
                         puzzle.stats.di_out = countballs(puzzle)
                      end
                      
                      me.oldtimer=timer
                   end
                   -- Puzzle solved or failed?
                   if puzzle.stats.di_out==0 then me.endofpuzzle() end 
                   if puzzle.mission=='Collect' then
                      puzzle.dots = me.countdots()
                      if puzzle.dots==0 then me.endofpuzzle() end                   
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

local womandir = {
                    up    = function(o) return o.x  ,o.y-1 end,
                    down  = function(o) return o.x  ,o.y+1 end,
                    left  = function(o) return o.x-1,o.y   end,
                    right = function(o) return o.x+1,o.y   end,
                 }
local womankeymove = {
                          w = womandir.up,
                          s = womandir.down,
                          a = womandir.left,
                          d = womandir.right,
                          up = womandir.up,
                          down = womandir.down,
                          left = womandir.left,
                          right = womandir.right,
                          kp4 = womandir.left,
                          kp8 = womandir.up,
                          kp2 = womandir.down,
                          kp6 = womandir.right
                     }                  

function me.keypressed(k,scancode)
 local key = love.keyboard.getKeyFromScancode( scancode )  -- <== this line should make sure the "WASD" support works the same on all keyboards. Otherwise users of an AZERTY keyboard in stead of QWERTY could suffer greatly. In other words, AZERTY users can now use the power of WASD (although I guess it's ZQSD in their case) :) 
 local wgoto = womankeymove[key]
 local xgoto,ygoto
 local obs = table2multidim(puzzle.obstacles,puzzle.format)
 local home
 if not wgoto then return end
 for o in each(puzzle.women) do
   xgoto,ygoto = wgoto(o)
   if not me.block(xgoto,ygoto) then o.x=xgoto o.y=ygoto end
   me.checkbump(o)
   print(o.x.."x"..o.y..">"..strval(obs:get({o.x,o.y})))
   if me.stage~='fail' and obs:get({o.x,o.y})=='womanhome' then
      me.destroy(o)
      home=true
   end
 end
 if home then
    for i in each(me.destroylist) do
             puzzle.objects[i]=nil
             print("object #"..i.." set to nil")
    end
    if (#me.destroylist>0) then
             print("packing objects table")
             puzzle.objects = packtable(puzzle.objects)
             puzzle.stats.di_out = countballs(puzzle)
    end
    puzzle.women=me.getwomen()
    if #puzzle.women==0 then me.endofpuzzle()  end 
 end   
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

function me.countdots()
    local cnt,locs = 0,{}
    for k,v in pairs(puzzle.obstacles) do
        if v=="dot" then cnt=cnt+1 append(locs,k) end
    end
    return cnt,locs 
end

function me.standardlaserclass() return { lines = {}, tiles = {}, shoot=false } end

function me.compilelasers()
  print("Compiling lasers")
  puzzle.lasers = { red = me.standardlaserclass(), green = me.standardlaserclass(), ember = me.standardlaserclass(), blue = me.standardlaserclass() }
  local einde = { Left = {0,15,0, 14,0,16}, Right = {32,15,32, 14,32,16}, Up = {15,0,14, 0,16,0}, Down = {15,32,14, 32,16,32} }
  local start = { Right = {0,15,15, 14,15,16}, Left = {32,15,15,14,15,16}, Down = {15,0,16, 15,14,15}, Up = {15,32,16, 15,14,15} }
  local go = { Left = {-1,0}, Right={1,0}, Up={0,-1}, Down = {0,1}}
  local ob = table2multidim(puzzle.obstacles,puzzle.format)
  local o
  local oinstruction,odir,ocol
  local gx,gy,gd,sx,sy
  for y=0,puzzle.format[2] do
      for x=0,puzzle.format[1] do
          o = ob:get({x,y})
          if o and prefixed(o,"laser_") then
             -- *if debug_lasercompile
             print('- Laser found at: ('..x..","..y..")")
             -- *fi
             oinstruction = mysplit(o,"_")
             odir = oinstruction[2]
             ocol = oinstruction[3]
             gd = go[odir]
             gx=x+gd[1]
             gy=y+gd[2]
             sx,sy=gx,gy
             while not me.block(gx,gy) do
                   -- *if debug_lasercompile
                   print("  = Adding tile: ("..gx..","..gy..")")
                   -- *fi
                   append(puzzle.lasers[ocol].tiles,{gx,gy})
                   gx=gx+gd[1]             
                   gy=gy+gd[2]
             end
             gx=gx-gd[1]             
             gy=gy-gd[2]
             append(puzzle.lasers[ocol].lines,{(sx*32)+start[odir][1],(sy*32)+start[odir][2]+20,(gx*32)+einde[odir][1],(gy*32)+einde[odir][2]+20,1})
             append(puzzle.lasers[ocol].lines,{(sx*32)+start[odir][3],(sy*32)+start[odir][4]+20,(gx*32)+einde[odir][3],(gy*32)+einde[odir][4]+20,.5})
             append(puzzle.lasers[ocol].lines,{(sx*32)+start[odir][5],(sy*32)+start[odir][6]+20,(gx*32)+einde[odir][5],(gy*32)+einde[odir][6]+20,.5})
          end 
      end
  end
  -- *if debug_lasercompile
  print(serialize('lasers',puzzle.lasers))
  -- *fi
end

function me.startpuzzle()
  me.stage = 'play'
  me.ass(countballs(puzzle)>0,"ENOB")
  if puzzle.mission=="Break-Away" or puzzle.mission=="Break-Free"  or puzzle.mission=='Break&Collect' then
     puzzle.breakblocks, puzzle.oriblocks = me.countbreakblocks()
     me.ass(puzzle.breakblocks,"ENBB")
  end
  if puzzle.mission=='Collect' then
     puzzle.dots = me.countdots()
  end
  local nocolext = function() me.ass(puzzle.mission=='Color Split','ENCE') end
  for k,v in pairs(puzzle.obstacles) do
      (({
           a_exit  = function() me.ass(puzzle.mission=='Normal','ENNE') end,
           cr_exit = nocolext,
           cg_exit = nocolext,
           cb_exit = nocolext,
           ce_exit = nocolext           
      })[v or 'Rare jongens! Die Romeinen!'] or chain.nothing)()
  end
  me.compilelasers()
end

function me.pickpuzzle()
chain.go(me.pickchain)
end

function me.leave()
music.stop()
end

function me.giveup()
me.stage='fail'
me.failure="You gave up"
end

function me.restart()
  music.stop()
  puzzle    = (({ official = function() return save.load("SCRIPT/GAME.LLL/PUZZLES/"..upper(me.rec)) end,
                  homemade = function() return save.load("homemadepuzzles/"..me.loadpz) end,
                  test     = function() return save.load("homemadepuzzles/"..me.testpz) end,
                  
              })[me.mode] or function() error('Unknown mode') end)()
  me.stage='intro'                
end

function me.nextpuzzle()
   local num = tonumber(right(me.rec,2))
   local ori = num
   local function pz() return "Pz"..right("0"..num,2) end
   repeat
      num = num + 1
      if not titles[pz()] then num=1 end
      if num==ori then 
         num=ori+1 
         if not titles[pz()] then num=1 end
         break 
      end
   until not user.data.puzzlesolved[pz()]
   me.rec = pz()
   me.source = "Puzzle #"..right(pz(),2)
   me.restart()
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
                    succeed= {znext = {enable=not (test or homemade), fun=me.nextpuzzle},
                              zagain = {enable=true, fun=me.restart},
                              pick = {enable=not test, fun=me.pickpuzzle},
                              back = {enable=true, fun=me.back}},
                              
                 }
    me.stage   = 'intro'                
end


-- This import must always come last, otherwise the functions tied to the objects will all be turned to nil.
-- *localimport objects
me.objects = objects

return me
