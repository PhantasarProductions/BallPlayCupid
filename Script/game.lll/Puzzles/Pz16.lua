--[[
	BallPlay Genius
	Puzzle #16
	
	
	
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
Version: 16.05.01
]]

  -- This file has been generated by BallPlay Cupid.
  -- and may only be used in combination with that game
  -- and in unmodified form. 
  -- unless stated otherwise in the game license.


local ret1, ret2



ret1 = {
	["format"] = {
		[2] = 15,
		[1] = 25
	             },
	["partime"] = 0,
	["reqballs"] = 4,
	["mission"] = "Normal",
	["floors"] = {
		[">1:6<"] = "pz_floor_nature_untitled",
		[">21:13<"] = "pz_floor_nature_untitled",
		[">3:11<"] = "pz_floor_nature_untitled",
		[">11:4<"] = "pz_floor_nature_untitled",
		[">13:5<"] = "pz_floor_nature_untitled",
		[">10:5<"] = "pz_floor_nature_untitled",
		[">0:13<"] = "pz_floor_nature_untitled",
		[">21:5<"] = "pz_floor_nature_untitled",
		[">14:3<"] = "pz_floor_nature_untitled",
		[">21:12<"] = "pz_floor_nature_untitled",
		[">0:12<"] = "pz_floor_nature_untitled",
		[">20:11<"] = "pz_floor_nature_untitled",
		[">3:7<"] = "pz_floor_nature_untitled",
		[">21:7<"] = "pz_floor_nature_untitled",
		[">0:8<"] = "pz_floor_nature_untitled",
		[">20:10<"] = "pz_floor_nature_untitled",
		[">4:9<"] = "pz_floor_nature_untitled",
		[">13:6<"] = "pz_floor_nature_untitled",
		[">16:7<"] = "pz_floor_nature_untitled",
		[">23:11<"] = "pz_floor_nature_untitled",
		[">20:13<"] = "pz_floor_nature_untitled",
		[">13:3<"] = "pz_floor_nature_untitled",
		[">10:3<"] = "pz_floor_nature_untitled",
		[">0:10<"] = "pz_floor_nature_untitled",
		[">8:0<"] = "pz_floor_nature_untitled",
		[">2:5<"] = "pz_floor_nature_untitled",
		[">21:6<"] = "pz_floor_nature_untitled",
		[">7:7<"] = "pz_floor_nature_untitled",
		[">20:12<"] = "pz_floor_nature_untitled",
		[">2:10<"] = "pz_floor_nature_untitled",
		[">1:11<"] = "pz_floor_nature_untitled",
		[">10:4<"] = "pz_floor_nature_untitled",
		[">8:2<"] = "pz_floor_nature_untitled",
		[">9:1<"] = "pz_floor_nature_untitled",
		[">0:6<"] = "pz_floor_nature_untitled",
		[">7:6<"] = "pz_floor_nature_untitled",
		[">18:6<"] = "pz_floor_nature_untitled",
		[">12:3<"] = "pz_floor_nature_untitled",
		[">22:7<"] = "pz_floor_nature_untitled",
		[">13:2<"] = "pz_floor_nature_untitled",
		[">4:8<"] = "pz_floor_nature_untitled",
		[">23:12<"] = "pz_floor_nature_untitled",
		[">12:6<"] = "pz_floor_nature_untitled",
		[">1:5<"] = "pz_floor_nature_untitled",
		[">23:10<"] = "pz_floor_nature_untitled",
		[">2:7<"] = "pz_floor_nature_untitled",
		[">6:5<"] = "pz_floor_nature_untitled",
		[">0:9<"] = "pz_floor_nature_untitled",
		[">22:11<"] = "pz_floor_nature_untitled",
		[">8:5<"] = "pz_floor_nature_untitled",
		[">1:7<"] = "pz_floor_nature_untitled",
		[">15:5<"] = "pz_floor_nature_untitled",
		[">3:9<"] = "pz_floor_nature_untitled",
		[">17:6<"] = "pz_floor_nature_untitled",
		[">11:2<"] = "pz_floor_nature_untitled",
		[">23:13<"] = "pz_floor_nature_untitled",
		[">2:11<"] = "pz_floor_nature_untitled",
		[">11:5<"] = "pz_floor_nature_untitled",
		[">12:2<"] = "pz_floor_nature_untitled",
		[">23:8<"] = "pz_floor_nature_untitled",
		[">13:0<"] = "pz_floor_nature_untitled",
		[">5:7<"] = "pz_floor_nature_untitled",
		[">22:10<"] = "pz_floor_nature_untitled",
		[">5:6<"] = "pz_floor_nature_untitled",
		[">13:7<"] = "pz_floor_nature_untitled",
		[">11:1<"] = "pz_floor_nature_untitled",
		[">15:6<"] = "pz_floor_nature_untitled",
		[">6:7<"] = "pz_floor_nature_untitled",
		[">13:4<"] = "pz_floor_nature_untitled",
		[">21:9<"] = "pz_floor_nature_untitled",
		[">14:5<"] = "pz_floor_nature_untitled",
		[">8:1<"] = "pz_floor_nature_untitled",
		[">22:13<"] = "pz_floor_nature_untitled",
		[">3:5<"] = "pz_floor_nature_untitled",
		[">22:12<"] = "pz_floor_nature_untitled",
		[">20:6<"] = "pz_floor_nature_untitled",
		[">8:7<"] = "pz_floor_nature_untitled",
		[">19:5<"] = "pz_floor_nature_untitled",
		[">4:12<"] = "pz_floor_nature_untitled",
		[">12:0<"] = "pz_floor_nature_untitled",
		[">2:9<"] = "pz_floor_nature_untitled",
		[">14:0<"] = "pz_floor_nature_untitled",
		[">3:8<"] = "pz_floor_nature_untitled",
		[">4:5<"] = "pz_floor_nature_untitled",
		[">1:12<"] = "pz_floor_nature_untitled",
		[">11:0<"] = "pz_floor_nature_untitled",
		[">11:6<"] = "pz_floor_nature_untitled",
		[">19:8<"] = "pz_floor_nature_untitled",
		[">17:5<"] = "pz_floor_nature_untitled",
		[">14:4<"] = "pz_floor_nature_untitled",
		[">14:2<"] = "pz_floor_nature_untitled",
		[">23:7<"] = "pz_floor_nature_untitled",
		[">10:2<"] = "pz_floor_nature_untitled",
		[">3:6<"] = "pz_floor_nature_untitled",
		[">8:4<"] = "pz_floor_nature_untitled",
		[">0:7<"] = "pz_floor_nature_untitled",
		[">8:3<"] = "pz_floor_nature_untitled",
		[">0:11<"] = "pz_floor_nature_untitled",
		[">22:8<"] = "pz_floor_nature_untitled",
		[">14:1<"] = "pz_floor_nature_untitled",
		[">7:5<"] = "pz_floor_nature_untitled",
		[">23:6<"] = "pz_floor_nature_untitled",
		[">4:10<"] = "pz_floor_nature_untitled",
		[">23:5<"] = "pz_floor_nature_untitled",
		[">13:1<"] = "pz_floor_nature_untitled",
		[">22:6<"] = "pz_floor_nature_untitled",
		[">22:5<"] = "pz_floor_nature_untitled",
		[">20:7<"] = "pz_floor_nature_untitled",
		[">12:4<"] = "pz_floor_nature_untitled",
		[">3:13<"] = "pz_floor_nature_untitled",
		[">1:9<"] = "pz_floor_nature_untitled",
		[">20:5<"] = "pz_floor_nature_untitled",
		[">1:10<"] = "pz_floor_nature_untitled",
		[">22:9<"] = "pz_floor_nature_untitled",
		[">20:9<"] = "pz_floor_nature_untitled",
		[">19:11<"] = "pz_floor_nature_untitled",
		[">16:5<"] = "pz_floor_nature_untitled",
		[">6:6<"] = "pz_floor_nature_untitled",
		[">18:5<"] = "pz_floor_nature_untitled",
		[">9:5<"] = "pz_floor_nature_untitled",
		[">9:7<"] = "pz_floor_nature_untitled",
		[">21:11<"] = "pz_floor_nature_untitled",
		[">8:6<"] = "pz_floor_nature_untitled",
		[">3:12<"] = "pz_floor_nature_untitled",
		[">14:7<"] = "pz_floor_nature_untitled",
		[">12:7<"] = "pz_floor_nature_untitled",
		[">10:1<"] = "pz_floor_nature_untitled",
		[">10:0<"] = "pz_floor_nature_untitled",
		[">12:5<"] = "pz_floor_nature_untitled",
		[">9:6<"] = "pz_floor_nature_untitled",
		[">3:10<"] = "pz_floor_nature_untitled",
		[">11:7<"] = "pz_floor_nature_untitled",
		[">5:5<"] = "pz_floor_nature_untitled",
		[">10:7<"] = "pz_floor_nature_untitled",
		[">10:6<"] = "pz_floor_nature_untitled",
		[">14:6<"] = "pz_floor_nature_untitled",
		[">19:10<"] = "pz_floor_nature_untitled",
		[">17:7<"] = "pz_floor_nature_untitled",
		[">9:2<"] = "pz_floor_nature_untitled",
		[">18:7<"] = "pz_floor_nature_untitled",
		[">19:9<"] = "pz_floor_nature_untitled",
		[">4:7<"] = "pz_floor_nature_untitled",
		[">1:13<"] = "pz_floor_nature_untitled",
		[">11:3<"] = "pz_floor_nature_untitled",
		[">4:6<"] = "pz_floor_nature_untitled",
		[">2:12<"] = "pz_floor_nature_untitled",
		[">19:6<"] = "pz_floor_nature_untitled",
		[">16:6<"] = "pz_floor_nature_untitled",
		[">21:8<"] = "pz_floor_nature_untitled",
		[">2:8<"] = "pz_floor_nature_untitled",
		[">20:8<"] = "pz_floor_nature_untitled",
		[">15:7<"] = "pz_floor_nature_untitled",
		[">23:9<"] = "pz_floor_nature_untitled",
		[">19:13<"] = "pz_floor_nature_untitled",
		[">9:4<"] = "pz_floor_nature_untitled",
		[">4:13<"] = "pz_floor_nature_untitled",
		[">9:0<"] = "pz_floor_nature_untitled",
		[">9:3<"] = "pz_floor_nature_untitled",
		[">21:10<"] = "pz_floor_nature_untitled",
		[">12:1<"] = "pz_floor_nature_untitled",
		[">4:11<"] = "pz_floor_nature_untitled",
		[">2:13<"] = "pz_floor_nature_untitled",
		[">0:5<"] = "pz_floor_nature_untitled",
		[">19:7<"] = "pz_floor_nature_untitled",
		[">1:8<"] = "pz_floor_nature_untitled",
		[">2:6<"] = "pz_floor_nature_untitled",
		[">19:12<"] = "pz_floor_nature_untitled"
	             },
	["tools"] = {
		["plate2"] = 100,
		["plate1"] = 100,
		["trash"] = 100,
		["barrier"] = 0
	            },
	["title"] = "\73\116\39\115\32\115\111\32\101\97\115\121\32\116\111\32\101\110\106\111\121\32\121\111\117\114\32\100\97\121",
	["missionnum"] = 1,
	["obstacles"] = {
		[">20:12<"] = "zplate2",
		[">21:10<"] = "a_exit",
		[">3:8<"] = "zplate2",
		[">2:10<"] = "a_exit",
		[">1:12<"] = "zplate2",
		[">1:6<"] = "zplate1",
		[">22:12<"] = "zplate1",
		[">3:12<"] = "zplate1",
		[">1:8<"] = "zplate1",
		[">22:8<"] = "zplate2",
		[">21:6<"] = "zplate1",
		[">22:6<"] = "zplate2",
		[">2:6<"] = "zplate2",
		[">20:8<"] = "zplate1"
	                },
	["falling"] = {},
	["walls"] = {
		[">5:7<"] = "pz_wall_nature_bush",
		[">13:7<"] = "pz_wall_nature_bush",
		[">21:13<"] = "pz_wall_nature_bush",
		[">6:7<"] = "pz_wall_nature_bush",
		[">14:4<"] = "pz_wall_nature_bush",
		[">13:5<"] = "pz_wall_nature_bush",
		[">14:5<"] = "pz_wall_nature_bush",
		[">10:5<"] = "pz_wall_nature_bush",
		[">8:1<"] = "pz_wall_nature_bush",
		[">0:13<"] = "pz_wall_nature_bush",
		[">22:13<"] = "pz_wall_nature_bush",
		[">3:5<"] = "pz_wall_nature_bush",
		[">8:4<"] = "pz_wall_nature_bush",
		[">8:7<"] = "pz_wall_nature_bush",
		[">19:5<"] = "pz_wall_nature_bush",
		[">4:12<"] = "pz_wall_nature_bush",
		[">3:7<"] = "pz_wall_nature_bush",
		[">1:13<"] = "pz_wall_nature_bush",
		[">0:8<"] = "pz_wall_nature_bush",
		[">4:9<"] = "pz_wall_nature_bush",
		[">4:5<"] = "pz_wall_nature_bush",
		[">11:0<"] = "pz_wall_nature_bush",
		[">19:8<"] = "pz_wall_nature_bush",
		[">16:7<"] = "pz_wall_nature_bush",
		[">17:5<"] = "pz_wall_nature_bush",
		[">23:11<"] = "pz_wall_nature_bush",
		[">2:13<"] = "pz_wall_nature_bush",
		[">0:10<"] = "pz_wall_nature_bush",
		[">8:0<"] = "pz_wall_nature_bush",
		[">0:11<"] = "pz_wall_nature_bush",
		[">14:1<"] = "pz_wall_nature_bush",
		[">7:5<"] = "pz_wall_nature_bush",
		[">4:11<"] = "pz_wall_nature_bush",
		[">4:10<"] = "pz_wall_nature_bush",
		[">7:7<"] = "pz_wall_nature_bush",
		[">11:3<"] = "pz_wall_nature_bush",
		[">3:13<"] = "pz_wall_nature_bush",
		[">9:0<"] = "pz_wall_nature_bush",
		[">12:5<"] = "pz_wall_nature_bush",
		[">14:3<"] = "pz_wall_nature_bush",
		[">14:2<"] = "pz_wall_nature_bush",
		[">23:5<"] = "pz_wall_nature_bush",
		[">19:11<"] = "pz_wall_nature_bush",
		[">8:2<"] = "pz_wall_nature_bush",
		[">14:0<"] = "pz_wall_nature_bush",
		[">0:6<"] = "pz_wall_nature_bush",
		[">9:5<"] = "pz_wall_nature_bush",
		[">0:5<"] = "pz_wall_nature_bush",
		[">22:5<"] = "pz_wall_nature_bush",
		[">9:7<"] = "pz_wall_nature_bush",
		[">21:5<"] = "pz_wall_nature_bush",
		[">0:9<"] = "pz_wall_nature_bush",
		[">4:13<"] = "pz_wall_nature_bush",
		[">18:5<"] = "pz_wall_nature_bush",
		[">10:0<"] = "pz_wall_nature_bush",
		[">16:5<"] = "pz_wall_nature_bush",
		[">4:8<"] = "pz_wall_nature_bush",
		[">23:12<"] = "pz_wall_nature_bush",
		[">12:7<"] = "pz_wall_nature_bush",
		[">2:5<"] = "pz_wall_nature_bush",
		[">23:9<"] = "pz_wall_nature_bush",
		[">23:7<"] = "pz_wall_nature_bush",
		[">19:10<"] = "pz_wall_nature_bush",
		[">17:7<"] = "pz_wall_nature_bush",
		[">23:6<"] = "pz_wall_nature_bush",
		[">18:7<"] = "pz_wall_nature_bush",
		[">1:5<"] = "pz_wall_nature_bush",
		[">4:7<"] = "pz_wall_nature_bush",
		[">23:10<"] = "pz_wall_nature_bush",
		[">6:5<"] = "pz_wall_nature_bush",
		[">11:7<"] = "pz_wall_nature_bush",
		[">10:7<"] = "pz_wall_nature_bush",
		[">8:3<"] = "pz_wall_nature_bush",
		[">20:13<"] = "pz_wall_nature_bush",
		[">20:5<"] = "pz_wall_nature_bush",
		[">19:12<"] = "pz_wall_nature_bush",
		[">8:5<"] = "pz_wall_nature_bush",
		[">15:7<"] = "pz_wall_nature_bush",
		[">15:5<"] = "pz_wall_nature_bush",
		[">19:13<"] = "pz_wall_nature_bush",
		[">0:7<"] = "pz_wall_nature_bush",
		[">5:5<"] = "pz_wall_nature_bush",
		[">19:9<"] = "pz_wall_nature_bush",
		[">23:13<"] = "pz_wall_nature_bush",
		[">20:7<"] = "pz_wall_nature_bush",
		[">12:0<"] = "pz_wall_nature_bush",
		[">0:12<"] = "pz_wall_nature_bush",
		[">19:7<"] = "pz_wall_nature_bush",
		[">23:8<"] = "pz_wall_nature_bush",
		[">13:0<"] = "pz_wall_nature_bush",
		[">14:7<"] = "pz_wall_nature_bush"
	            },
	["objects"] = {
		[1] = {
			["y"] = 4,
			["x"] = 9,
			["dir"] = "D",
			["kind"] = "ball"
		      },
		[2] = {
			["y"] = 4,
			["x"] = 10,
			["dir"] = "D",
			["kind"] = "ball"
		      },
		[3] = {
			["y"] = 4,
			["x"] = 12,
			["dir"] = "D",
			["kind"] = "ball"
		      },
		[4] = {
			["y"] = 4,
			["x"] = 13,
			["dir"] = "D",
			["kind"] = "ball"
		      },
		[5] = {
			["y"] = 2,
			["x"] = 11,
			["dir"] = "D",
			["kind"] = "ball"
		      },
		[6] = {
			["y"] = 1,
			["x"] = 11,
			["dir"] = "U",
			["kind"] = "ball"
		      },
		[7] = {
			["y"] = 11,
			["x"] = 3,
			["dir"] = "U",
			["kind"] = "ghostamber"
		      },
		[8] = {
			["y"] = 11,
			["x"] = 22,
			["dir"] = "U",
			["kind"] = "ghostamber"
		      },
		[9] = {
			["y"] = 11,
			["x"] = 1,
			["dir"] = "U",
			["kind"] = "ghostblue"
		      },
		[10] = {
			["y"] = 11,
			["x"] = 20,
			["dir"] = "U",
			["kind"] = "ghostblue"
		       },
		[11] = {
			["y"] = 9,
			["x"] = 20,
			["dir"] = "U",
			["kind"] = "ghostgreen"
		       },
		[12] = {
			["y"] = 9,
			["x"] = 1,
			["dir"] = "U",
			["kind"] = "ghostgreen"
		       },
		[13] = {
			["y"] = 9,
			["x"] = 3,
			["dir"] = "U",
			["kind"] = "ghostred"
		       },
		[14] = {
			["y"] = 9,
			["x"] = 22,
			["dir"] = "U",
			["kind"] = "ghostred"
		       }
	              }
       }


ret2 = {
	["tab"] = "settings",
	["strip"] = {
		["floor"] = {
			["cstrip"] = "nature",
			["tile"] = "pz_floor_nature_untitled"
		            },
		["plates"] = {
			["tile"] = "zplate1"
		             },
		["wall"] = {
			["cstrip"] = "nature",
			["tile"] = "pz_wall_nature_bush"
		           },
		["exits"] = {
			["tile"] = "a_exit"
		            }
	            },
	["odir"] = 1
       }




return ret1, ret2


