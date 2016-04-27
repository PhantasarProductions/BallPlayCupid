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
Version: 16.04.27
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
mkl.version("BallPlay Cupid - English.lua","16.04.27")
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
      editsave = {"Save","No Save","Save back to menu","Don't save back to menu","Cancel"},       
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
      missions = {
                              Normal         = "Bring as many balls as you can\nto the finish",
                              ['Break-Away']  = "Break all blocks away\nand get as little\nballs destroyed as possible",
                              ['Break-Free']  = "Break all blocks away.\nThe last block broken\nwill turn into an exit",
                              ['Color Split'] = "Bring all balls to the exit of the same color\nBalls arrving at the wrong exit will\nbe destroyed\n\nIf you suffer from color blindness\nPlease go back to the main menu\nand turn on the\ncolor-blind mode.",
                              Walkthrough     = "You may see a woman, and she needs\nto get home\nYou can use the directional bottoms or the\nwasd keys to control her\n\nIf there are multiple women they all move in\nthe same direction if possible.\n\nBe warned, ALL women must get home.\n\nIf they get touched by a ball\nor any other moving object\nthey'll die instantly causing you to fail the puzzle.\n\nAs the end of the puzzle,\nyou must at least still have\n\nthe number of balls written\nat the \"clubs\" symbol to be\nin the field!",
                              Collect         = "See all the flashing dots?\nCollect them all!\nYou can do so by making a ball roll over them!"
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
                              EOWW     = "You may only place a woman in a 'Walkthrough' mission",
                              ENNE     = "Normal exits may only be present in normal missions. Break-Free puzzles should put them in automatically, and they should not be present from the start!",
                              ENCE     = "Colored exits may only be present in color-split missions!",
                              IUOM     = "Unknown movement code: ",
                              IUKT     = "Unnown tool selected"
                         },
                 suctab = {
                              TME      = "Best time",
                              PTM      = "Best time perfect survival",
                              TLS      = "Least tools used",
                              SUR      = "Balls survived"
                          }                  
             }         
}

return lang
