--[[
	BallPlay Cupid
	Puzzle 45
	
	
	
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
Version: 16.05.02
]]

  -- This file has been generated by BallPlay Cupid.
  -- and may only be used in combination with that game
  -- and in unmodified form. 
  -- unless stated otherwise in the game license.


local ret1, ret2



ret1 = {
	["format"] = {
		[1] = 25,
		[2] = 15
	             },
	["partime"] = 0,
	["background"] = "hellfire",
	["missionnum"] = 7,
	["music"] = "MUSIC/THEME/DARK/EMILYROSE.OGG",
	["falling"] = {},
	["floors"] = {
		[">12:13<"] = "pz_floor_hell_floor",
		[">21:13<"] = "pz_floor_hell_floor",
		[">5:14<"] = "pz_floor_hell_floor",
		[">3:11<"] = "pz_floor_hell_floor",
		[">19:14<"] = "pz_floor_hell_floor",
		[">12:12<"] = "pz_floor_hell_floor",
		[">18:10<"] = "pz_floor_hell_floor",
		[">16:1<"] = "pz_floor_hell_floor",
		[">10:5<"] = "pz_floor_hell_floor",
		[">0:13<"] = "pz_floor_hell_floor",
		[">21:5<"] = "pz_floor_hell_floor",
		[">14:3<"] = "pz_floor_hell_floor",
		[">7:2<"] = "pz_floor_hell_floor",
		[">8:4<"] = "pz_floor_hell_floor",
		[">18:11<"] = "pz_floor_hell_floor",
		[">12:14<"] = "pz_floor_hell_floor",
		[">21:2<"] = "pz_floor_nature_untitled",
		[">18:13<"] = "pz_floor_hell_floor",
		[">3:7<"] = "pz_floor_hell_floor",
		[">21:7<"] = "pz_floor_hell_floor",
		[">0:8<"] = "pz_floor_hell_floor",
		[">23:3<"] = "pz_floor_nature_untitled",
		[">20:10<"] = "pz_floor_hell_floor",
		[">16:7<"] = "pz_floor_hell_floor",
		[">17:9<"] = "pz_floor_hell_floor",
		[">5:10<"] = "pz_floor_hell_floor",
		[">23:11<"] = "pz_floor_hell_floor",
		[">20:13<"] = "pz_floor_hell_floor",
		[">10:3<"] = "pz_floor_hell_floor",
		[">8:0<"] = "pz_floor_hell_floor",
		[">0:2<"] = "pz_floor_hell_floor",
		[">0:4<"] = "pz_floor_hell_floor",
		[">6:13<"] = "pz_floor_hell_floor",
		[">2:5<"] = "pz_floor_hell_floor",
		[">20:12<"] = "pz_floor_hell_floor",
		[">1:1<"] = "pz_floor_hell_floor",
		[">17:0<"] = "pz_floor_hell_floor",
		[">12:5<"] = "pz_floor_hell_floor",
		[">7:8<"] = "pz_floor_hell_floor",
		[">19:4<"] = "pz_floor_hell_floor",
		[">0:6<"] = "pz_floor_hell_floor",
		[">15:8<"] = "pz_floor_hell_floor",
		[">7:6<"] = "pz_floor_hell_floor",
		[">9:14<"] = "pz_floor_hell_floor",
		[">17:11<"] = "pz_floor_hell_floor",
		[">12:3<"] = "pz_floor_hell_floor",
		[">22:7<"] = "pz_floor_hell_floor",
		[">7:4<"] = "pz_floor_hell_floor",
		[">13:2<"] = "pz_floor_hell_floor",
		[">0:0<"] = "pz_floor_hell_floor",
		[">6:3<"] = "pz_floor_hell_floor",
		[">17:10<"] = "pz_floor_hell_floor",
		[">5:13<"] = "pz_floor_hell_floor",
		[">5:4<"] = "pz_floor_hell_floor",
		[">1:5<"] = "pz_floor_hell_floor",
		[">8:3<"] = "pz_floor_hell_floor",
		[">11:14<"] = "pz_floor_hell_floor",
		[">0:9<"] = "pz_floor_hell_floor",
		[">22:11<"] = "pz_floor_hell_floor",
		[">20:8<"] = "pz_floor_hell_floor",
		[">20:0<"] = "pz_floor_nature_untitled",
		[">24:0<"] = "pz_floor_nature_untitled",
		[">9:10<"] = "pz_floor_hell_floor",
		[">17:13<"] = "pz_floor_hell_floor",
		[">15:11<"] = "pz_floor_hell_floor",
		[">2:11<"] = "pz_floor_hell_floor",
		[">3:14<"] = "pz_floor_hell_floor",
		[">16:8<"] = "pz_floor_hell_floor",
		[">15:1<"] = "pz_floor_hell_floor",
		[">15:0<"] = "pz_floor_hell_floor",
		[">17:12<"] = "pz_floor_hell_floor",
		[">24:9<"] = "pz_floor_hell_floor",
		[">22:10<"] = "pz_floor_hell_floor",
		[">15:10<"] = "pz_floor_hell_floor",
		[">21:4<"] = "pz_floor_nature_untitled",
		[">11:1<"] = "pz_floor_hell_floor",
		[">15:6<"] = "pz_floor_hell_floor",
		[">6:12<"] = "pz_floor_hell_floor",
		[">15:12<"] = "pz_floor_hell_floor",
		[">23:1<"] = "pz_floor_nature_untitled",
		[">9:11<"] = "pz_floor_hell_floor",
		[">7:3<"] = "pz_floor_hell_floor",
		[">18:4<"] = "pz_floor_hell_floor",
		[">16:0<"] = "pz_floor_hell_floor",
		[">24:2<"] = "pz_floor_nature_untitled",
		[">5:1<"] = "pz_floor_hell_floor",
		[">20:3<"] = "pz_floor_nature_untitled",
		[">6:6<"] = "pz_floor_hell_floor",
		[">15:2<"] = "pz_floor_hell_floor",
		[">4:12<"] = "pz_floor_hell_floor",
		[">1:13<"] = "pz_floor_hell_floor",
		[">14:0<"] = "pz_floor_hell_floor",
		[">9:13<"] = "pz_floor_hell_floor",
		[">4:5<"] = "pz_floor_hell_floor",
		[">23:2<"] = "pz_floor_nature_untitled",
		[">5:0<"] = "pz_floor_hell_floor",
		[">7:9<"] = "pz_floor_hell_floor",
		[">7:13<"] = "pz_floor_hell_floor",
		[">9:9<"] = "pz_floor_hell_floor",
		[">14:11<"] = "pz_floor_hell_floor",
		[">10:2<"] = "pz_floor_hell_floor",
		[">0:7<"] = "pz_floor_hell_floor",
		[">22:8<"] = "pz_floor_hell_floor",
		[">14:1<"] = "pz_floor_hell_floor",
		[">4:10<"] = "pz_floor_hell_floor",
		[">14:10<"] = "pz_floor_hell_floor",
		[">13:1<"] = "pz_floor_hell_floor",
		[">10:14<"] = "pz_floor_hell_floor",
		[">23:4<"] = "pz_floor_nature_untitled",
		[">23:5<"] = "pz_floor_hell_floor",
		[">19:11<"] = "pz_floor_hell_floor",
		[">14:13<"] = "pz_floor_hell_floor",
		[">22:3<"] = "pz_floor_nature_untitled",
		[">3:12<"] = "pz_floor_hell_floor",
		[">0:14<"] = "pz_floor_hell_floor",
		[">2:8<"] = "pz_floor_hell_floor",
		[">9:6<"] = "pz_floor_hell_floor",
		[">3:10<"] = "pz_floor_hell_floor",
		[">22:6<"] = "pz_floor_hell_floor",
		[">23:7<"] = "pz_floor_hell_floor",
		[">19:10<"] = "pz_floor_hell_floor",
		[">8:12<"] = "pz_floor_hell_floor",
		[">8:9<"] = "pz_floor_hell_floor",
		[">14:12<"] = "pz_floor_hell_floor",
		[">18:1<"] = "pz_floor_hell_floor",
		[">19:6<"] = "pz_floor_hell_floor",
		[">21:8<"] = "pz_floor_hell_floor",
		[">15:7<"] = "pz_floor_hell_floor",
		[">14:9<"] = "pz_floor_hell_floor",
		[">19:13<"] = "pz_floor_hell_floor",
		[">18:8<"] = "pz_floor_hell_floor",
		[">22:0<"] = "pz_floor_nature_untitled",
		[">7:12<"] = "pz_floor_hell_floor",
		[">7:14<"] = "pz_floor_hell_floor",
		[">1:8<"] = "pz_floor_hell_floor",
		[">2:6<"] = "pz_floor_hell_floor",
		[">13:14<"] = "pz_floor_hell_floor",
		[">8:10<"] = "pz_floor_hell_floor",
		[">21:14<"] = "pz_floor_hell_floor",
		[">1:6<"] = "pz_floor_hell_floor",
		[">9:2<"] = "pz_floor_hell_floor",
		[">4:2<"] = "pz_floor_hell_floor",
		[">1:4<"] = "pz_floor_hell_floor",
		[">13:5<"] = "pz_floor_hell_floor",
		[">20:1<"] = "pz_floor_nature_untitled",
		[">0:3<"] = "pz_floor_hell_floor",
		[">4:0<"] = "pz_floor_hell_floor",
		[">1:0<"] = "pz_floor_hell_floor",
		[">7:11<"] = "pz_floor_hell_floor",
		[">7:10<"] = "pz_floor_hell_floor",
		[">22:9<"] = "pz_floor_hell_floor",
		[">21:0<"] = "pz_floor_nature_untitled",
		[">10:9<"] = "pz_floor_hell_floor",
		[">8:6<"] = "pz_floor_hell_floor",
		[">4:9<"] = "pz_floor_hell_floor",
		[">24:7<"] = "pz_floor_hell_floor",
		[">13:6<"] = "pz_floor_hell_floor",
		[">2:1<"] = "pz_floor_hell_floor",
		[">19:0<"] = "pz_floor_hell_floor",
		[">24:14<"] = "pz_floor_hell_floor",
		[">24:5<"] = "pz_floor_hell_floor",
		[">2:13<"] = "pz_floor_hell_floor",
		[">11:11<"] = "pz_floor_hell_floor",
		[">14:7<"] = "pz_floor_hell_floor",
		[">0:10<"] = "pz_floor_hell_floor",
		[">16:3<"] = "pz_floor_hell_floor",
		[">19:2<"] = "pz_floor_hell_floor",
		[">10:0<"] = "pz_floor_hell_floor",
		[">6:8<"] = "pz_floor_hell_floor",
		[">2:3<"] = "pz_floor_hell_floor",
		[">2:0<"] = "pz_floor_hell_floor",
		[">1:3<"] = "pz_floor_hell_floor",
		[">21:6<"] = "pz_floor_hell_floor",
		[">7:7<"] = "pz_floor_hell_floor",
		[">10:7<"] = "pz_floor_hell_floor",
		[">2:10<"] = "pz_floor_hell_floor",
		[">7:1<"] = "pz_floor_hell_floor",
		[">15:13<"] = "pz_floor_hell_floor",
		[">12:10<"] = "pz_floor_hell_floor",
		[">9:0<"] = "pz_floor_hell_floor",
		[">21:9<"] = "pz_floor_hell_floor",
		[">2:12<"] = "pz_floor_hell_floor",
		[">6:1<"] = "pz_floor_hell_floor",
		[">16:4<"] = "pz_floor_hell_floor",
		[">10:4<"] = "pz_floor_hell_floor",
		[">13:0<"] = "pz_floor_hell_floor",
		[">8:2<"] = "pz_floor_hell_floor",
		[">9:1<"] = "pz_floor_hell_floor",
		[">9:12<"] = "pz_floor_hell_floor",
		[">11:5<"] = "pz_floor_hell_floor",
		[">20:14<"] = "pz_floor_hell_floor",
		[">22:5<"] = "pz_floor_hell_floor",
		[">9:7<"] = "pz_floor_hell_floor",
		[">12:8<"] = "pz_floor_hell_floor",
		[">18:6<"] = "pz_floor_hell_floor",
		[">4:13<"] = "pz_floor_hell_floor",
		[">18:14<"] = "pz_floor_hell_floor",
		[">17:2<"] = "pz_floor_hell_floor",
		[">20:11<"] = "pz_floor_hell_floor",
		[">11:10<"] = "pz_floor_hell_floor",
		[">15:3<"] = "pz_floor_hell_floor",
		[">4:14<"] = "pz_floor_hell_floor",
		[">1:11<"] = "pz_floor_hell_floor",
		[">11:7<"] = "pz_floor_hell_floor",
		[">18:3<"] = "pz_floor_hell_floor",
		[">20:9<"] = "pz_floor_hell_floor",
		[">4:7<"] = "pz_floor_hell_floor",
		[">3:3<"] = "pz_floor_hell_floor",
		[">1:14<"] = "pz_floor_hell_floor",
		[">2:2<"] = "pz_floor_hell_floor",
		[">17:14<"] = "pz_floor_hell_floor",
		[">15:9<"] = "pz_floor_hell_floor",
		[">2:7<"] = "pz_floor_hell_floor",
		[">6:5<"] = "pz_floor_hell_floor",
		[">20:2<"] = "pz_floor_nature_untitled",
		[">13:9<"] = "pz_floor_hell_floor",
		[">11:13<"] = "pz_floor_hell_floor",
		[">10:6<"] = "pz_floor_hell_floor",
		[">24:11<"] = "pz_floor_hell_floor",
		[">7:0<"] = "pz_floor_hell_floor",
		[">8:5<"] = "pz_floor_hell_floor",
		[">1:7<"] = "pz_floor_hell_floor",
		[">15:5<"] = "pz_floor_hell_floor",
		[">11:8<"] = "pz_floor_hell_floor",
		[">12:7<"] = "pz_floor_hell_floor",
		[">18:5<"] = "pz_floor_hell_floor",
		[">19:9<"] = "pz_floor_hell_floor",
		[">11:2<"] = "pz_floor_hell_floor",
		[">16:6<"] = "pz_floor_hell_floor",
		[">11:12<"] = "pz_floor_hell_floor",
		[">6:9<"] = "pz_floor_hell_floor",
		[">24:10<"] = "pz_floor_hell_floor",
		[">16:14<"] = "pz_floor_hell_floor",
		[">12:2<"] = "pz_floor_hell_floor",
		[">23:8<"] = "pz_floor_hell_floor",
		[">9:3<"] = "pz_floor_hell_floor",
		[">10:1<"] = "pz_floor_hell_floor",
		[">5:7<"] = "pz_floor_hell_floor",
		[">8:11<"] = "pz_floor_hell_floor",
		[">6:2<"] = "pz_floor_hell_floor",
		[">6:4<"] = "pz_floor_hell_floor",
		[">12:1<"] = "pz_floor_hell_floor",
		[">20:5<"] = "pz_floor_hell_floor",
		[">21:3<"] = "pz_floor_nature_untitled",
		[">23:6<"] = "pz_floor_hell_floor",
		[">0:1<"] = "pz_floor_hell_floor",
		[">15:4<"] = "pz_floor_hell_floor",
		[">13:4<"] = "pz_floor_hell_floor",
		[">6:14<"] = "pz_floor_hell_floor",
		[">23:14<"] = "pz_floor_hell_floor",
		[">15:14<"] = "pz_floor_hell_floor",
		[">14:5<"] = "pz_floor_hell_floor",
		[">19:7<"] = "pz_floor_hell_floor",
		[">19:12<"] = "pz_floor_hell_floor",
		[">8:1<"] = "pz_floor_hell_floor",
		[">10:11<"] = "pz_floor_hell_floor",
		[">0:5<"] = "pz_floor_hell_floor",
		[">3:5<"] = "pz_floor_hell_floor",
		[">24:8<"] = "pz_floor_hell_floor",
		[">18:0<"] = "pz_floor_hell_floor",
		[">10:10<"] = "pz_floor_hell_floor",
		[">5:12<"] = "pz_floor_hell_floor",
		[">20:6<"] = "pz_floor_hell_floor",
		[">14:8<"] = "pz_floor_hell_floor",
		[">24:6<"] = "pz_floor_hell_floor",
		[">8:7<"] = "pz_floor_hell_floor",
		[">19:5<"] = "pz_floor_hell_floor",
		[">2:9<"] = "pz_floor_hell_floor",
		[">12:0<"] = "pz_floor_hell_floor",
		[">24:12<"] = "pz_floor_hell_floor",
		[">16:11<"] = "pz_floor_hell_floor",
		[">13:11<"] = "pz_floor_hell_floor",
		[">12:9<"] = "pz_floor_hell_floor",
		[">3:8<"] = "pz_floor_hell_floor",
		[">6:0<"] = "pz_floor_hell_floor",
		[">1:12<"] = "pz_floor_hell_floor",
		[">11:0<"] = "pz_floor_hell_floor",
		[">10:13<"] = "pz_floor_hell_floor",
		[">6:10<"] = "pz_floor_hell_floor",
		[">17:5<"] = "pz_floor_hell_floor",
		[">18:2<"] = "pz_floor_hell_floor",
		[">3:2<"] = "pz_floor_hell_floor",
		[">17:3<"] = "pz_floor_hell_floor",
		[">16:10<"] = "pz_floor_hell_floor",
		[">5:3<"] = "pz_floor_hell_floor",
		[">17:4<"] = "pz_floor_hell_floor",
		[">0:12<"] = "pz_floor_hell_floor",
		[">8:14<"] = "pz_floor_hell_floor",
		[">10:8<"] = "pz_floor_hell_floor",
		[">11:3<"] = "pz_floor_hell_floor",
		[">10:12<"] = "pz_floor_hell_floor",
		[">3:6<"] = "pz_floor_hell_floor",
		[">2:4<"] = "pz_floor_hell_floor",
		[">14:2<"] = "pz_floor_hell_floor",
		[">4:11<"] = "pz_floor_hell_floor",
		[">0:11<"] = "pz_floor_hell_floor",
		[">3:4<"] = "pz_floor_hell_floor",
		[">8:13<"] = "pz_floor_hell_floor",
		[">7:5<"] = "pz_floor_hell_floor",
		[">6:11<"] = "pz_floor_hell_floor",
		[">16:13<"] = "pz_floor_hell_floor",
		[">19:8<"] = "pz_floor_hell_floor",
		[">5:2<"] = "pz_floor_hell_floor",
		[">5:6<"] = "pz_floor_hell_floor",
		[">6:7<"] = "pz_floor_hell_floor",
		[">5:9<"] = "pz_floor_hell_floor",
		[">3:0<"] = "pz_floor_hell_floor",
		[">3:13<"] = "pz_floor_hell_floor",
		[">1:9<"] = "pz_floor_hell_floor",
		[">13:7<"] = "pz_floor_hell_floor",
		[">1:10<"] = "pz_floor_hell_floor",
		[">16:2<"] = "pz_floor_hell_floor",
		[">23:0<"] = "pz_floor_nature_untitled",
		[">16:12<"] = "pz_floor_hell_floor",
		[">16:5<"] = "pz_floor_hell_floor",
		[">5:11<"] = "pz_floor_hell_floor",
		[">13:12<"] = "pz_floor_hell_floor",
		[">9:5<"] = "pz_floor_hell_floor",
		[">14:14<"] = "pz_floor_hell_floor",
		[">21:11<"] = "pz_floor_hell_floor",
		[">4:1<"] = "pz_floor_hell_floor",
		[">11:4<"] = "pz_floor_hell_floor",
		[">18:12<"] = "pz_floor_hell_floor",
		[">19:1<"] = "pz_floor_hell_floor",
		[">9:4<"] = "pz_floor_hell_floor",
		[">9:8<"] = "pz_floor_hell_floor",
		[">13:10<"] = "pz_floor_hell_floor",
		[">22:1<"] = "pz_floor_nature_untitled",
		[">24:4<"] = "pz_floor_nature_untitled",
		[">17:1<"] = "pz_floor_hell_floor",
		[">24:1<"] = "pz_floor_nature_untitled",
		[">5:5<"] = "pz_floor_hell_floor",
		[">23:9<"] = "pz_floor_hell_floor",
		[">23:10<"] = "pz_floor_hell_floor",
		[">12:11<"] = "pz_floor_hell_floor",
		[">17:7<"] = "pz_floor_hell_floor",
		[">12:6<"] = "pz_floor_hell_floor",
		[">18:7<"] = "pz_floor_hell_floor",
		[">18:9<"] = "pz_floor_hell_floor",
		[">20:4<"] = "pz_floor_nature_untitled",
		[">2:14<"] = "pz_floor_hell_floor",
		[">20:7<"] = "pz_floor_hell_floor",
		[">4:6<"] = "pz_floor_hell_floor",
		[">13:13<"] = "pz_floor_hell_floor",
		[">12:4<"] = "pz_floor_hell_floor",
		[">13:3<"] = "pz_floor_hell_floor",
		[">8:8<"] = "pz_floor_hell_floor",
		[">3:1<"] = "pz_floor_hell_floor",
		[">17:8<"] = "pz_floor_hell_floor",
		[">22:4<"] = "pz_floor_nature_untitled",
		[">22:14<"] = "pz_floor_hell_floor",
		[">11:9<"] = "pz_floor_hell_floor",
		[">11:6<"] = "pz_floor_hell_floor",
		[">13:8<"] = "pz_floor_hell_floor",
		[">1:2<"] = "pz_floor_hell_floor",
		[">22:2<"] = "pz_floor_nature_untitled",
		[">21:10<"] = "pz_floor_hell_floor",
		[">24:13<"] = "pz_floor_hell_floor",
		[">16:9<"] = "pz_floor_hell_floor",
		[">3:9<"] = "pz_floor_hell_floor",
		[">4:3<"] = "pz_floor_hell_floor",
		[">19:3<"] = "pz_floor_hell_floor",
		[">14:4<"] = "pz_floor_hell_floor",
		[">24:3<"] = "pz_floor_nature_untitled",
		[">21:1<"] = "pz_floor_nature_untitled"
	             },
	["ghostwomen"] = {},
	["walls"] = {
		[">14:7<"] = "pz_wall_hell_in_sw",
		[">8:10<"] = "pz_wall_hell_zwart",
		[">24:11<"] = "pz_wall_hell_in_ne",
		[">2:0<"] = "pz_wall_hell_zwart",
		[">9:3<"] = "pz_wall_hell_zwart",
		[">21:14<"] = "pz_wall_hell_zwart",
		[">21:12<"] = "pz_wall_hell_skull",
		[">12:13<"] = "pz_wall_hell_n",
		[">9:2<"] = "pz_wall_hell_zwart",
		[">13:8<"] = "pz_wall_hell_zwart",
		[">3:11<"] = "pz_wall_hell_zwart",
		[">19:14<"] = "pz_wall_hell_zwart",
		[">12:12<"] = "pz_wall_hell_zwart",
		[">18:10<"] = "pz_wall_hell_w",
		[">17:0<"] = "pz_wall_hell_zwart",
		[">16:1<"] = "pz_wall_hell_zwart",
		[">10:5<"] = "pz_wall_hell_zwart",
		[">0:3<"] = "pz_wall_hell_zwart",
		[">4:0<"] = "pz_wall_hell_zwart",
		[">21:5<"] = "pz_wall_hell_in_sw",
		[">14:3<"] = "pz_wall_hell_in_nw",
		[">7:2<"] = "pz_wall_hell_e",
		[">8:4<"] = "pz_wall_hell_zwart",
		[">1:6<"] = "pz_wall_hell_zwart",
		[">18:11<"] = "pz_wall_hell_zwart",
		[">11:4<"] = "pz_wall_hell_zwart",
		[">1:0<"] = "pz_wall_hell_zwart",
		[">13:2<"] = "pz_wall_hell_zwart",
		[">17:1<"] = "pz_wall_hell_zwart",
		[">7:11<"] = "pz_wall_hell_zwart",
		[">18:13<"] = "pz_wall_hell_e",
		[">7:1<"] = "pz_wall_hell_e",
		[">21:0<"] = "pz_wall_nature_bush",
		[">0:8<"] = "pz_wall_hell_zwart",
		[">10:9<"] = "pz_wall_hell_zwart",
		[">8:6<"] = "pz_wall_hell_zwart",
		[">9:0<"] = "pz_wall_hell_zwart",
		[">13:9<"] = "pz_wall_hell_zwart",
		[">1:4<"] = "pz_wall_hell_zwart",
		[">10:6<"] = "pz_wall_hell_zwart",
		[">19:13<"] = "pz_wall_hell_zwart",
		[">2:7<"] = "pz_wall_hell_w",
		[">9:7<"] = "pz_wall_hell_zwart",
		[">17:9<"] = "pz_wall_hell_e",
		[">2:1<"] = "pz_wall_hell_w",
		[">20:13<"] = "pz_wall_hell_zwart",
		[">19:0<"] = "pz_wall_hell_w",
		[">24:14<"] = "pz_wall_hell_s",
		[">7:4<"] = "pz_wall_hell_e",
		[">21:8<"] = "pz_wall_hell_in_nw",
		[">24:5<"] = "pz_wall_hell_s",
		[">12:5<"] = "pz_wall_hell_in_nw",
		[">2:13<"] = "pz_wall_hell_n",
		[">11:11<"] = "pz_wall_hell_zwart",
		[">10:3<"] = "pz_wall_hell_zwart",
		[">0:10<"] = "pz_wall_hell_zwart",
		[">8:0<"] = "pz_wall_hell_zwart",
		[">0:2<"] = "pz_wall_hell_zwart",
		[">7:0<"] = "pz_wall_hell_zwart",
		[">20:2<"] = "pz_wall_nature_bush",
		[">6:13<"] = "pz_wall_hell_in_ne",
		[">14:2<"] = "pz_wall_hell_zwart",
		[">2:5<"] = "pz_wall_hell_w",
		[">21:6<"] = "pz_wall_hell_zwart",
		[">7:7<"] = "pz_wall_hell_e",
		[">24:3<"] = "pz_wall_nature_bush",
		[">18:1<"] = "pz_wall_hell_zwart",
		[">11:8<"] = "pz_wall_hell_zwart",
		[">1:1<"] = "pz_wall_hell_zwart",
		[">2:10<"] = "pz_wall_hell_zwart",
		[">20:12<"] = "pz_wall_hell_in_sw",
		[">14:12<"] = "pz_wall_hell_zwart",
		[">2:12<"] = "pz_wall_hell_zwart",
		[">7:8<"] = "pz_wall_hell_e",
		[">19:4<"] = "pz_wall_hell_w",
		[">2:4<"] = "pz_wall_hell_w",
		[">2:2<"] = "pz_wall_hell_w",
		[">8:2<"] = "pz_wall_hell_zwart",
		[">9:1<"] = "pz_wall_hell_zwart",
		[">0:6<"] = "pz_wall_hell_zwart",
		[">24:7<"] = "pz_wall_hell_zwart",
		[">20:14<"] = "pz_wall_hell_zwart",
		[">8:12<"] = "pz_wall_hell_zwart",
		[">7:6<"] = "pz_wall_hell_e",
		[">12:8<"] = "pz_wall_hell_zwart",
		[">17:11<"] = "pz_wall_hell_zwart",
		[">12:3<"] = "pz_wall_hell_zwart",
		[">18:14<"] = "pz_wall_hell_e",
		[">17:2<"] = "pz_wall_hell_zwart",
		[">19:3<"] = "pz_wall_hell_w",
		[">11:10<"] = "pz_wall_hell_zwart",
		[">8:11<"] = "pz_wall_hell_zwart",
		[">23:12<"] = "pz_wall_hell_skull",
		[">23:7<"] = "pz_wall_hell_e",
		[">24:4<"] = "pz_wall_nature_bush",
		[">19:2<"] = "pz_wall_hell_w",
		[">12:7<"] = "pz_wall_hell_s",
		[">17:8<"] = "pz_wall_hell_e",
		[">17:10<"] = "pz_wall_hell_e",
		[">23:8<"] = "pz_wall_hell_zwart",
		[">15:0<"] = "pz_wall_hell_zwart",
		[">1:5<"] = "pz_wall_hell_zwart",
		[">23:10<"] = "pz_wall_hell_in_ne",
		[">1:3<"] = "pz_wall_hell_zwart",
		[">0:12<"] = "pz_wall_hell_w",
		[">0:9<"] = "pz_wall_hell_zwart",
		[">2:8<"] = "pz_wall_hell_w",
		[">11:13<"] = "pz_wall_hell_n",
		[">10:1<"] = "pz_wall_hell_zwart",
		[">20:5<"] = "pz_wall_hell_s",
		[">12:1<"] = "pz_wall_hell_zwart",
		[">20:8<"] = "pz_wall_hell_in_ne",
		[">20:0<"] = "pz_wall_nature_bush",
		[">24:0<"] = "pz_wall_nature_bush",
		[">9:10<"] = "pz_wall_hell_zwart",
		[">17:13<"] = "pz_wall_hell_in_ne",
		[">0:1<"] = "pz_wall_hell_zwart",
		[">17:6<"] = "pz_wall_hell_skull",
		[">11:2<"] = "pz_wall_hell_zwart",
		[">23:13<"] = "pz_wall_hell_skull",
		[">20:7<"] = "pz_wall_hell_zwart",
		[">3:2<"] = "pz_wall_hell_in_nw",
		[">11:5<"] = "pz_wall_hell_zwart",
		[">19:1<"] = "pz_wall_hell_w",
		[">12:2<"] = "pz_wall_hell_zwart",
		[">15:1<"] = "pz_wall_hell_zwart",
		[">13:0<"] = "pz_wall_hell_zwart",
		[">24:6<"] = "pz_wall_hell_zwart",
		[">17:12<"] = "pz_wall_hell_zwart",
		[">24:9<"] = "pz_wall_hell_zwart",
		[">6:2<"] = "pz_wall_hell_in_ne",
		[">5:6<"] = "pz_wall_hell_stalagmiet",
		[">21:4<"] = "pz_wall_nature_bush",
		[">4:1<"] = "pz_wall_hell_n",
		[">11:1<"] = "pz_wall_hell_zwart",
		[">23:6<"] = "pz_wall_hell_e",
		[">6:12<"] = "pz_wall_hell_zwart",
		[">15:2<"] = "pz_wall_hell_in_nw",
		[">13:4<"] = "pz_wall_hell_in_nw",
		[">1:13<"] = "pz_wall_hell_n",
		[">23:14<"] = "pz_wall_hell_s",
		[">9:11<"] = "pz_wall_hell_zwart",
		[">6:1<"] = "pz_wall_hell_zwart",
		[">7:3<"] = "pz_wall_hell_e",
		[">22:14<"] = "pz_wall_hell_s",
		[">8:1<"] = "pz_wall_hell_zwart",
		[">10:11<"] = "pz_wall_hell_zwart",
		[">0:5<"] = "pz_wall_hell_zwart",
		[">18:4<"] = "pz_wall_hell_in_ne",
		[">16:0<"] = "pz_wall_hell_zwart",
		[">18:0<"] = "pz_wall_hell_zwart",
		[">10:10<"] = "pz_wall_hell_zwart",
		[">12:9<"] = "pz_wall_hell_zwart",
		[">20:6<"] = "pz_wall_hell_zwart",
		[">5:1<"] = "pz_wall_hell_n",
		[">20:3<"] = "pz_wall_nature_bush",
		[">8:7<"] = "pz_wall_hell_zwart",
		[">19:5<"] = "pz_wall_hell_in_ne",
		[">11:0<"] = "pz_wall_hell_zwart",
		[">12:0<"] = "pz_wall_hell_zwart",
		[">2:9<"] = "pz_wall_hell_w",
		[">14:0<"] = "pz_wall_hell_zwart",
		[">9:13<"] = "pz_wall_hell_n",
		[">10:13<"] = "pz_wall_hell_n",
		[">13:11<"] = "pz_wall_hell_zwart",
		[">18:3<"] = "pz_wall_hell_zwart",
		[">1:12<"] = "pz_wall_hell_zwart",
		[">23:0<"] = "pz_wall_nature_bush",
		[">11:6<"] = "pz_wall_hell_in_nw",
		[">6:10<"] = "pz_wall_hell_in_se",
		[">18:2<"] = "pz_wall_hell_zwart",
		[">7:9<"] = "pz_wall_hell_e",
		[">8:5<"] = "pz_wall_hell_zwart",
		[">8:9<"] = "pz_wall_hell_zwart",
		[">10:2<"] = "pz_wall_hell_zwart",
		[">17:3<"] = "pz_wall_hell_in_ne",
		[">4:4<"] = "pz_wall_hell_skull",
		[">7:13<"] = "pz_wall_hell_n",
		[">9:9<"] = "pz_wall_hell_zwart",
		[">14:11<"] = "pz_wall_hell_zwart",
		[">12:4<"] = "pz_wall_hell_zwart",
		[">10:12<"] = "pz_wall_hell_zwart",
		[">7:10<"] = "pz_wall_hell_zwart",
		[">11:12<"] = "pz_wall_hell_zwart",
		[">0:7<"] = "pz_wall_hell_zwart",
		[">21:13<"] = "pz_wall_hell_in_sw",
		[">0:11<"] = "pz_wall_hell_zwart",
		[">8:13<"] = "pz_wall_hell_n",
		[">14:1<"] = "pz_wall_hell_zwart",
		[">7:5<"] = "pz_wall_hell_e",
		[">10:8<"] = "pz_wall_hell_zwart",
		[">18:12<"] = "pz_wall_hell_e",
		[">14:10<"] = "pz_wall_hell_w",
		[">13:1<"] = "pz_wall_hell_zwart",
		[">1:11<"] = "pz_wall_hell_zwart",
		[">24:2<"] = "pz_wall_nature_bush",
		[">11:3<"] = "pz_wall_hell_zwart",
		[">3:0<"] = "pz_wall_hell_zwart",
		[">3:13<"] = "pz_wall_hell_in_nw",
		[">1:9<"] = "pz_wall_hell_zwart",
		[">23:4<"] = "pz_wall_nature_bush",
		[">1:10<"] = "pz_wall_hell_zwart",
		[">16:2<"] = "pz_wall_hell_in_ne",
		[">23:5<"] = "pz_wall_hell_in_se",
		[">19:11<"] = "pz_wall_hell_in_sw",
		[">5:0<"] = "pz_wall_hell_zwart",
		[">14:8<"] = "pz_wall_hell_w",
		[">13:12<"] = "pz_wall_hell_zwart",
		[">9:5<"] = "pz_wall_hell_zwart",
		[">14:13<"] = "pz_wall_hell_in_nw",
		[">24:8<"] = "pz_wall_hell_zwart",
		[">6:0<"] = "pz_wall_hell_zwart",
		[">3:12<"] = "pz_wall_hell_zwart",
		[">0:14<"] = "pz_wall_hell_w",
		[">13:7<"] = "pz_wall_hell_s",
		[">9:4<"] = "pz_wall_hell_zwart",
		[">9:8<"] = "pz_wall_hell_zwart",
		[">13:10<"] = "pz_wall_hell_zwart",
		[">9:6<"] = "pz_wall_hell_zwart",
		[">3:10<"] = "pz_wall_hell_in_sw",
		[">13:3<"] = "pz_wall_hell_zwart",
		[">24:1<"] = "pz_wall_nature_bush",
		[">24:10<"] = "pz_wall_hell_zwart",
		[">23:9<"] = "pz_wall_hell_zwart",
		[">14:6<"] = "pz_wall_hell_skull",
		[">12:11<"] = "pz_wall_hell_zwart",
		[">17:7<"] = "pz_wall_hell_in_se",
		[">2:11<"] = "pz_wall_hell_zwart",
		[">18:7<"] = "pz_wall_hell_in_sw",
		[">18:9<"] = "pz_wall_hell_w",
		[">20:4<"] = "pz_wall_nature_bush",
		[">8:3<"] = "pz_wall_hell_zwart",
		[">20:1<"] = "pz_wall_nature_bush",
		[">11:7<"] = "pz_wall_hell_s",
		[">13:13<"] = "pz_wall_hell_n",
		[">1:7<"] = "pz_wall_hell_zwart",
		[">10:0<"] = "pz_wall_hell_zwart",
		[">8:8<"] = "pz_wall_hell_zwart",
		[">3:1<"] = "pz_wall_hell_zwart",
		[">2:3<"] = "pz_wall_hell_w",
		[">0:0<"] = "pz_wall_hell_zwart",
		[">14:9<"] = "pz_wall_hell_w",
		[">11:9<"] = "pz_wall_hell_zwart",
		[">18:8<"] = "pz_wall_hell_w",
		[">0:4<"] = "pz_wall_hell_zwart",
		[">1:2<"] = "pz_wall_hell_zwart",
		[">12:10<"] = "pz_wall_hell_zwart",
		[">22:0<"] = "pz_wall_nature_bush",
		[">0:13<"] = "pz_wall_hell_w",
		[">9:12<"] = "pz_wall_hell_zwart",
		[">10:4<"] = "pz_wall_hell_zwart",
		[">7:12<"] = "pz_wall_hell_zwart",
		[">10:7<"] = "pz_wall_hell_zwart",
		[">1:8<"] = "pz_wall_hell_zwart",
		[">2:6<"] = "pz_wall_hell_w",
		[">19:12<"] = "pz_wall_hell_zwart"
	            },
	["mission"] = "Walkthrough",
	["tools"] = {
		["plate2"] = 100,
		["plate1"] = 100,
		["trash"] = 100,
		["barrier"] = 0
	            },
	["title"] = "Hellfire! This fire in my skin!",
	["obstacles"] = {
		[">5:7<"] = "zzzglass",
		[">5:13<"] = "zzzglass",
		[">4:9<"] = "zzzglass",
		[">4:5<"] = "zzzglass",
		[">4:7<"] = "zzzglass",
		[">5:9<"] = "zzzglass",
		[">5:14<"] = "zzzglass",
		[">5:12<"] = "zzzglass",
		[">5:11<"] = "zzzglass",
		[">5:10<"] = "zzzglass",
		[">4:13<"] = "zzzglass",
		[">4:6<"] = "zzzglass",
		[">4:11<"] = "zzzglass",
		[">5:5<"] = "zzzglass",
		[">22:2<"] = "womanhome",
		[">4:14<"] = "zzzglass",
		[">4:12<"] = "zzzglass",
		[">4:10<"] = "zzzglass"
	                },
	["reqballs"] = 12,
	["foreground"] = "hellfire",
	["ifor"] = {
		["img"] = "circulardarkness"
	           },
	["objects"] = {
		[14] = {
			["y"] = 3,
			["x"] = 21,
			["kind"] = "ball",
			["dir"] = "E"
		       },
		[2] = {
			["y"] = 6,
			["x"] = 6,
			["kind"] = "ball",
			["dir"] = "D"
		      },
		[12] = {
			["y"] = 10,
			["x"] = 15,
			["kind"] = "ball",
			["dir"] = "E"
		       },
		[11] = {
			["y"] = 9,
			["x"] = 15,
			["kind"] = "ball",
			["dir"] = "E"
		       },
		[10] = {
			["y"] = 11,
			["x"] = 15,
			["kind"] = "ball",
			["dir"] = "E"
		       },
		[9] = {
			["y"] = 12,
			["x"] = 15,
			["kind"] = "ball",
			["dir"] = "E"
		      },
		[23] = {
			["y"] = 11,
			["x"] = 20,
			["kind"] = "ghostred",
			["dir"] = "E"
		       },
		[8] = {
			["y"] = 13,
			["x"] = 15,
			["kind"] = "ball",
			["dir"] = "E"
		      },
		[19] = {
			["y"] = 4,
			["x"] = 14,
			["kind"] = "robot",
			["dir"] = "E"
		       },
		[7] = {
			["y"] = 14,
			["x"] = 1,
			["kind"] = "ghostgreen",
			["dir"] = "E"
		      },
		[1] = {
			["y"] = 3,
			["x"] = 5,
			["kind"] = "woman",
			["dir"] = "D"
		      },
		[6] = {
			["y"] = 12,
			["x"] = 4,
			["kind"] = "ghostblue",
			["dir"] = "D"
		      },
		[5] = {
			["y"] = 4,
			["x"] = 3,
			["kind"] = "ball",
			["dir"] = "D"
		      },
		[4] = {
			["y"] = 6,
			["x"] = 3,
			["kind"] = "ball",
			["dir"] = "D"
		      },
		[21] = {
			["y"] = 10,
			["x"] = 22,
			["kind"] = "ghostblue",
			["dir"] = "E"
		       },
		[24] = {
			["y"] = 14,
			["x"] = 17,
			["kind"] = "ghostamber",
			["dir"] = "L"
		       },
		[22] = {
			["y"] = 9,
			["x"] = 20,
			["kind"] = "ghostgreen",
			["dir"] = "E"
		       },
		[18] = {
			["y"] = 5,
			["x"] = 13,
			["kind"] = "robot",
			["dir"] = "E"
		       },
		[20] = {
			["y"] = 3,
			["x"] = 15,
			["kind"] = "robot",
			["dir"] = "E"
		       },
		[3] = {
			["y"] = 4,
			["x"] = 6,
			["kind"] = "ball",
			["dir"] = "D"
		      },
		[17] = {
			["y"] = 1,
			["x"] = 21,
			["kind"] = "ball",
			["dir"] = "D"
		       },
		[16] = {
			["y"] = 1,
			["x"] = 23,
			["kind"] = "ball",
			["dir"] = "L"
		       },
		[15] = {
			["y"] = 3,
			["x"] = 23,
			["kind"] = "ball",
			["dir"] = "U"
		       },
		[13] = {
			["y"] = 8,
			["x"] = 15,
			["kind"] = "ball",
			["dir"] = "E"
		       }
	              }
       }


ret2 = {
	["tab"] = "settings",
	["strip"] = {
		["floor"] = {
			["cstrip"] = "pink",
			["tile"] = "pz_floor_nature_untitled"
		            },
		["plates"] = {
			["tile"] = "zzzglass"
		             },
		["wall"] = {
			["cstrip"] = "hell",
			["tile"] = "pz_wall_hell_skull"
		           },
		["exits"] = {
			["tile"] = "womanhome"
		            }
	            },
	["odir"] = 1
       }




return ret1, ret2

