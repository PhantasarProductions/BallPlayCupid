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
Version: 16.04.08
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
                          exits = {a_exit  = {'exit',  0,255,255},
                                   cr_exit = {'exit',255,  0,  0},
                                   cg_exit = {'exit',  0,255,  0},
                                   cb_exit = {'exit',  0,  0,255},
                                   ce_exit = {'exit',255,180,  0}
                                   }          
                 }                   
glob.obstacles = {}   for sk,ls in pairs(glob.sobstacles) do for k,v in pairs(ls) do glob.obstacles[k] = v end end


glob.missions = {"Normal","Break-Away","Break-Free","Collect","Break to Collect","Walkthrough"}      

                           
return glob
