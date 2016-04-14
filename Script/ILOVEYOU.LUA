--[[
	BallPlay Cupid
	Main File
	
	
	
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

--[[

    Important note!
    The GNU license DOES allow modified versions of the game, but in order to make sure the rankings on-line 
    are 100% fair (or at least as fair as possible) I will not allow modified versions to use the net features.
    
    The "USER.LUA" file contains the possibility to turn of all network features. You MUST do this before distributing
    a modified version ofthe game! If "Anna" suspects data being transmitted from a modified version of the game
    "she" will ban the player without mercy. If this happens too often, I may even need to block out the server
    entirely for this game, so please don't spoil it for the rest of us, and be a good boy or girl and block out
    the network features if you modify the game. 
    
    (Okay, when it just handles modified artwork, audio files or fonts, I will be merciful, but as soon as any
    script file needs to be modified the network features must be "shut down")
    
    This game requires Love2D version 0.10

]]

-- External libs
filestuff = filestuff or j_love_import("Libs/filestuff.lll/filestuff.lua")	-- *import filestuff
strings = strings or j_love_import("Libs/strings.lll/strings.lua")	-- *import strings
quickmath = quickmath or j_love_import("Libs/quickmath.lua")	-- *import quickmath
multidim = multidim or j_love_import("Libs/multidim.lll/multidim.lua")	-- *import multidim
phantasar = phantasar or j_love_import("Libs/phantasar.lll/phantasar.lua")	-- *import phantasar
md5 = md5 or j_love_import("Libs/md5.lll/md5.lua")	-- *import md5
home = home or j_love_import("Libs/home.lll/home.lua")	-- *import home
music = music or j_love_import("Libs/music.lll/music.lua")	-- *import music
time = time or j_love_import("Libs/time.lll/time.lua")	-- *import time
save = save or j_love_import("Libs/save.lll/save.lua")	-- *import save
packtable = packtable or j_love_import("Libs/packtable.lll/packtable.lua")	-- *import packtable
sfx = sfx or j_love_import("SCRIPT/sfx.lua")	-- *import sfx
append = append or j_love_import("Libs/append.lll/append.lua")	-- *import append

-- Interal libs
glob = glob or j_love_import("SCRIPT/glob.lua")	-- *import glob
user = user or j_love_import("SCRIPT/user.lua")	-- *import user
-- import mouse
-- (mouse may not be needed, so it will no longer be imported)

-- Program parts
title = title or j_love_import("SCRIPT/title.lua")	-- *import title
mainmenu = mainmenu or j_love_import("SCRIPT/mainmenu.lua")	-- *import mainmenu
homemadepuzzleselector = homemadepuzzleselector or j_love_import("SCRIPT/homemadepuzzleselector.lua")	-- *import homemadepuzzleselector

mkl.version("BallPlay Cupid - ILoveYou.lua","16.04.14")
mkl.lic    ("BallPlay Cupid - ILoveYou.lua","GNU General Public License 3")




--home.createmydatadir()
love.filesystem.createDirectory("users")
love.filesystem.createDirectory("homemadepuzzles")
love.filesystem.createDirectory("config")



function initgame()
local junk =            {
                           image = { cupid = "GFX/TITLE/CUPID.PNG",
                                    di_out = "GFX/GAME/SYMBOL/DIAMONDS.PNG",
                                     di_in = "GFX/GAME/SYMBOL/HEARTS.PNG",
                                    di_req = "GFX/GAME/SYMBOL/CLUBS.PNG",
                                   di_dead = "GFX/GAME/SYMBOL/SPADES.PNG",
                                      logo = "GFX/TITLE/LOGO.PNG",
                                       gpl = "GFX/GENERAL/GPL.PNG",
                                   intback = "GFX/INTERFACE/DARK-DROPS.JPG",
                                gamepaused = "GFX/GAME/GENERAL/PAUSED.PNG",
                                     gratz = "GFX/GAME/GENERAL/GRATZ.PNG",
                                  menuitem = "GFX/MAINMENU/ITEM.PNG"},
                           audio = {
                                  sfx_buzz = "AUDIO/INTERFACE/BUZZ.OGG" },
                           font  = {}
                        }
phantasar.adddir(junk,"image","GFX/GAME/PUZZLE/OBJECTS")                        
phantasar.adddir(junk,"image","GFX/GAME/PUZZLE/OBSTACLES")
phantasar.adddir(junk,"image","GFX/GAME/FRACTALS","frac_")
phantasar.adddir(junk,"audio","AUDIO/GAME","sfx_")
for t in each({"wall","floor"}) do
    local list = love.filesystem.getDirectoryItems( "GFX/GAME/PUZZLE/"..upper(t).."S" )
    for d in each(list) do
        stuff = stuff or {}
        stuff[t] = stuff[t] or {}
        stuff[t][#stuff[t]+1] = lower(d) 
        print("Adding "..t.." dir: "..d)
        phantasar.adddir(junk,'image','GFX/GAME/PUZZLE/'..upper(t).."S/"..d,"pz_"..t.."_"..lower(d).."_")
        end
    end
print("Loading all assets");
assets = phantasar.init(junk,"Title")
print("Get the interface canvasses");
end initgame() initgame=nil -- Execute immediately and get this shit out of the RAM as we don't need it any more.               

function great_quit()
local ql 
ql = ql or { general = {reallyquit="Do you really want to quit?"},yes="Yes",no="No"} 
local ret = love.window.showMessageBox("Ballplay Cupid",ql.general.reallyquit,{ql.yes,ql.no,escapebutton=2})==2
if user.data then user.save() end
return ret
end
