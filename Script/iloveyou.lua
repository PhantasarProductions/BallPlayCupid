--[[
	Main file: Ballplay Cupid
	
	
	
	
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

]]

-- External libs
-- *import strings
-- *import quickmath
-- *import multidim
-- *import phantasar
-- *import md5
-- *import home
-- *import music
-- *import time
-- *import save
-- *import packtable
-- *import sfx
-- *import append

-- Interal libs
-- *import glob
-- *import user
-- import mouse
-- (mouse may not be needed, so it will no longer be imported)

-- Program parts
-- *import title
-- *import mainmenu
-- *import homemadepuzzleselector

mkl.version("BallPlay Cupid - iloveyou.lua","16.04.09")
mkl.lic    ("BallPlay Cupid - iloveyou.lua","GNU General Public License 3")




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
                                  menuitem = "GFX/MAINMENU/ITEM.PNG"},
                           audio = {  buzz = "AUDIO/INTERFACE/BUZZ.OGG" },
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
end initgame()               

function great_quit()
local ql 
ql = ql or { general = {reallyquit="Do you really want to quit?"},yes="Yes",no="No"} 
local ret = love.window.showMessageBox("Ballplay Cupid",ql.general.reallyquit,{ql.yes,ql.no,escapebutton=2})==2
if user.data then user.save() end
return ret
end
