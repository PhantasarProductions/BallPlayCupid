--[[
	BallPlay Cupid
	Dutch translation
	
	
	
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
Version: 16.04.30
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
        Translated to language: Dutch
        Original English file:  Jeroen P. Broks
        Translation by:         Jeroen P. Broks
        
        
]]

-- Don't bother modifying the mkl lines. My building scripts put in the data that goes there automatically.
mkl.version("BallPlay Cupid - Nederlands.lua","16.04.30")
mkl.lic    ("BallPlay Cupid - Nederlands.lua","GNU General Public License 3")

local lang = {

      translator = 'Jeroen P. Broks',  -- When translating, replace my name here, with yours ;)
      
      font = nil,  -- If set to 'nil' the default Love2D font will be used. Otherwise the sytem will use the font you define here. Please only use this feature if the language of your choice requires characters the Love Font does not support.

      onoff = {
                [true]='Aan',
                [false]='Uit'
              },
       
      yes = "Ja",
      no  = "Nee",
      
      general = {
                   reallyquit = "Wil je echt stoppen?"
                }        ,

      menu = {
                gamestart = "Start het spel",
                homegamestart = "Start een zelfgemaakte puzzel",
                editor = "Start de puzzle editor",
                sfx = "Geluidseffecten",
                music = "Musiek",
                cblind = "Kleurenblind Modus",
                viewmyprofile = "Geef mijn on-line profiel weer",
                language = "Taal",
                license = "Credits & Licenties",
                logout = "Uitloggen",
                quit = "Stoppen"
             },
      editsave = {"Opslaan","Niet opslaan","Opslaan en terug naar het menu","Niet opslaan en teru menu","Annuleren"},       
      edit = {
                 layers = {
                              objects = "Objecten",
                              obstacles = "Obstakels",
                              plates = "Platen",
                              breakblocks = "BreekBlokn",
                              lasers = "Lasers",
                              walls = "Muren",
                              floors = "Vloeren",
                              settings = "Settings",
                              exits = "Uitgangen"
                          },
                 savebox = {
                              warning = "Je gaat terug naar het hoofdmenu.",
                              save    = "Opslaan",
                              dntsave = "Niet Opslaan",
                              cancel  = "Annuleren"
                           },
                 settingsmessage = "Linker muisknop = verhogen, rechter muisknop = verlagen"          
             }, 
      missions = {
                              Normal           = "Breng zo veel\nmogelijk ballen als\nalsje kunt naar de\nfinish",
                              ['Break-Away']    = "Breek alle blokken weg\nEn zorg dat er zo\nmin mogelijk ballen\nworden vernietgid",
                              ['Break-Free']    = "Breek alle blokken wg\nHet laatste blok dat\nje wegbreekt\nwordt de uitgang",
                              ['Color Split']   = "Breng alle ballen\nnaar de uitgang met\ndezelfde kleur.\n \nBallen die verkeerd\nuitkomen worden\nvernietigd",
                              Walkthrough       = "Je ziet een vrouw en ze moet naar huis.\nJe kunt haar besturen met de\npijltjestoesten, het nummerieke\ntoetsenbord of met\nWASD (voor de Belgen\nonder ons. Het spel is ook berekend op\nAZERTY toetsenborden)\n \nAls er meerder vrouwen staan\ngaan ze indien mogelijk\nallemaal dezelfde kant op.\n \nAls een vrouw een bal of ander voorwerp\naanraakt is ze dood en\nverlies je meteen de\npuzzle.",
                              Collect           = "Zie je die flitsende punten?\nVerzamel ze allemaal!\n \nDat doe je door er een bal\noverheen te laten rollen.",
                              ["Break&Collect"] = "Eerst:\nAlle blokken breken\nDaarna: Verschijnen er punten op de plekken waar\nde blokken ooit waren.\nVerzamel ze allemaal!"
                 },           
      game = {
                 symbols = {
                              di_in    = "Ballen aangekomen",
                              di_out   = "Ballen in het spel",
                              di_dead  = "Ballen vernietigd",
                              di_req   = "Ballen vereist"
                           },
                 buttons = {
                              start    = "Start",
                              pick     = "Kies",
                              back     = "Terug",
                              pause    = "Pauze",
                              zcont    = "Ga verder",
                              giveup   = "Opgeven",
                              zagain   = "Opnieuw",
                              znext    = "Volgende"
                           },          
                 error = {
                              ENOF     = "Er is geen uitgang, hoewel de missie dat wel eist",
                              ENOB     = "Geen ballen aanwezig",
                              ENBB     = "Geen breekblokken aanwezig ", -- This error can only appear in break-away or break-free puzzles.
                              EOWW     = "Je mag alleen vrouwen plaatsen in een 'Walkthrough' puzzel",
                              ENNE     = "Normale exits mogen alleen aanwezig zijn in normale puzzels. In Break-Free puzzles worden ze automatisch geplaatst en mogen ze niet vanaf het begin aanwezig zijn.",
                              ENCE     = "Gekleurde exits mogen alleen aanwezig zijn in Color-Split missies.",
                              IUOM     = "Onbekende movement code: ",
                              IUKT     = "Onbekende tool geslecteerd"
                         },
                 suctab = {
                              TME      = "Beste tijd",
                              PTM      = "Beste tijd en een perfecte oplossing",
                              TLS      = "Minste tools gebruikt",
                              SUR      = "Ballen overleefd"
                          }                  
             }         
}

return lang
