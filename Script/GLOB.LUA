--[[
	BallPlay Cupid
	Global definitions
	
	
	
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
local glob = {}
glob.love2dfont = love.graphics.getFont()


glob.config = {}
glob.config.music = true
glob.config.sfx = true
glob.config.colorblind = false
glob.config.lang = 'ENGLISH'

glob.sobstacles = {       plates = {gplate1={'plate1',255,255,  0},gplate2={'plate2',255,255,  0},
                                    rplate1={'plate1',255,  0,  0},rplate2={'plate2',255,  0,  0},
                                    zplate1={'plate1',  0,255,255},zplate2={'plate2',  0,255,255},
                                    zzarrowup   ={'arrow_up'   ,0,255,255},
                                    zzarrowdown ={'arrow_down' ,0,255,255},
                                    zzarrowright={'arrow_right',0,255,255},
                                    zzarrowleft ={'arrow_left' ,0,255,255}
                                    },
                          exits = { a_exit = {'exit',  0,255,255},
                                   cr_exit = {'exit',255,  0,  0},
                                   cg_exit = {'exit',  0,255,  0},
                                   cb_exit = {'exit',  0,  0,255},
                                   ce_exit = {'exit',255,180,  0},
                                 womanhome = {'hut' ,255,255,255}
                                   },       
                          breakblocks = { 
                                           bb01 = {"breakblock",  0,180,255},
                                           bb02 = {"breakblock",255,  0,  0},
                                           bb03 = {"breakblock",  0,180,  0},
                                           bb04 = {"breakblock",255,180,180},
                                           bb05 = {"breakblock",180,100,  0},
                                           bb06 = {"breakblock",  0,  0,180},
                                           bb07 = {"breakblock",100, 60,  0},
                                           bb08 = {"breakblock",180,255,  0},
                                           bb09 = {"breakblock",  0,255,180},
                                           bb10 = {"breakblock",180,  0,255},
                                           bb11 = {"breakblock",255,255,255},
                                           bb12 = {"breakblock",255,180,   0},
                                        }            
                 }                   
glob.obstacles = {}   for sk,ls in pairs(glob.sobstacles) do for k,v in pairs(ls) do glob.obstacles[k] = v end end


glob.missions = {"Normal","Break-Away","Break-Free","Color Split","Collect","Break&Collect","Walkthrough"}     

glob.randommusic =  love.filesystem.getDirectoryItems( "MUSIC/RANDOM" )
for i=1,#glob.randommusic do glob.randommusic[i]="MUSIC/RANDOM/"..glob.randommusic[i] end
glob.maxmusic = #glob.randommusic 

                           
return glob
