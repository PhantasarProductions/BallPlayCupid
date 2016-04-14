--[[
	BallPlay Cupid
	English Language File
	
	
	
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
	English Language file - Ballplay Cupid
	
	
	
	
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
Version: 16.04.10
]]

--- Language file. English

--[[

        This is the original English language file.
        The best way to set up a translation is by "cannibalizing" this file, and replace all the strings with the version in your language.
        
        A few notes, though....
        I only know this works with scripts using the roman alphabet, and I never tested if special characters such as umlauts and accent marks work.
        I guess there's only one way to find out. :)
        
        But if you are quite handy with Lua, there are a few ways to deal with that ;) 
        
        If you make a translation, please use the template below to fill out all data.
        (Please note, the copyright notice above, may NOT be modified).
        
        
        BallPlay Cupid - Translation file
        Translated to language: English
        Original English file:  Jeroen P. Broks
        Translation by:         Jeroen P. Broks
        
        
]]

-- Don't bother modifying the mkl lines. My building scripts put in the data that goes there automatically.
mkl.version("BallPlay Cupid - English.lua","16.04.14")
mkl.lic    ("BallPlay Cupid - English.lua","GNU General Public License 3")

local lang = {

      translator = 'Jeroen P. Broks',  -- When translating, replace my name here, with yours ;)
      
      font = nil,  -- If set to 'nil' the default Love2D font will be used. Otherwise the sytem will use the font you define here. Please only use this feature if the language of your choice requires characters the Love Font does not support.

      onoff = {
                [true]='On',
                [false]='Off'
              },
       
      yes = "Yes",
      no  = "No",
      
      general = {
                   reallyquit = "Do you really want to quit?"
                }        ,

      menu = {
                gamestart = "Start the game",
                homegamestart = "Start a homemade puzzle",
                editor = "Start the puzzle editor",
                sfx = "Sound Effects",
                music = "Music",
                cblind = "Color Blind Mode",
                viewmyprofile = "View my on-line profile",
                language = "Language",
                license = "Credits & License",
                logout = "Log out",
                quit = "Quit"
             },
      edit = {
                 layers = {
                              objects = "Objects",
                              obstacles = "Obstacles",
                              plates = "Plates",
                              breakblocks = "Break Blcks",
                              lasers = "Lasers",
                              walls = "Walls",
                              floors = "Floors",
                              settings = "Settings",
                              exits = "Exits"
                          },
                 savebox = {
                              warning = "You are going back to the main menu.",
                              save    = "Save",
                              dntsave = "Don't Save",
                              cancel  = "Cancel"
                           },
                 settingsmessage = "Left mouse button = increase, right mouse button = decrease"          
             },     
      game = {
                 symbols = {
                              di_in    = "Balls arrived",
                              di_out   = "Balls in play",
                              di_dead  = "Balls destroyed",
                              di_req   = "Balls required"
                           },
                 buttons = {
                              start    = "Start",
                              pick     = "Pick",
                              back     = "Back",
                              pause    = "Pause",
                              zcont    = "Continue",
                              giveup   = "Give Up",
                              zagain   = "Retry",
                              znext    = "Next"
                           },          
                 error = {
                              ENOF     = "No exit present, while the mission requires it",
                              ENOB     = "No balls present",
                              ENBB     = "No break-away blocks present", -- This error can only appear in break-away or break-free puzzles.
                              IUOM     = "Unknown movement code",
                              IUKT     = "Unnown tool selected"
                         }          
             }         
}

return lang
