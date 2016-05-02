--[[
	BallPlay Cupid
	Puzzle #49
	
	
	
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
["background"] = "space",
	["music"] = "MUSIC/THEME/URBAN-JUNGLE-2061.MP3",
	["format"] = {
		[2] = 15,
		[1] = 25
	             },
	["partime"] = 0,
	["floors"] = {
		[">12:13<"] = "pz_floor_modern_bluegrey",
		[">9:2<"] = "pz_floor_nature_untitled",
		[">3:11<"] = "pz_floor_modern_bluegrey",
		[">5:12<"] = "pz_floor_modern_bluegrey",
		[">18:10<"] = "pz_floor_modern_bluegrey",
		[">14:3<"] = "pz_floor_modern_bluegrey",
		[">7:2<"] = "pz_floor_modern_bluegrey",
		[">3:3<"] = "pz_floor_modern_bluegrey",
		[">8:11<"] = "pz_floor_modern_bluegrey",
		[">3:7<"] = "pz_floor_modern_bluegrey",
		[">21:7<"] = "pz_floor_modern_bluegrey",
		[">10:9<"] = "pz_floor_modern_bluegrey",
		[">20:10<"] = "pz_floor_modern_bluegrey",
		[">13:6<"] = "pz_floor_modern_bluegrey",
		[">16:7<"] = "pz_floor_modern_bluegrey",
		[">17:9<"] = "pz_floor_modern_bluegrey",
		[">2:1<"] = "pz_floor_modern_bluegrey",
		[">2:13<"] = "pz_floor_modern_bluegrey",
		[">13:3<"] = "pz_floor_modern_bluegrey",
		[">10:3<"] = "pz_floor_nature_untitled",
		[">2:3<"] = "pz_floor_modern_bluegrey",
		[">2:5<"] = "pz_floor_modern_bluegrey",
		[">9:3<"] = "pz_floor_nature_untitled",
		[">1:1<"] = "pz_floor_modern_bluegrey",
		[">2:10<"] = "pz_floor_modern_bluegrey",
		[">1:11<"] = "pz_floor_modern_bluegrey",
		[">19:4<"] = "pz_floor_modern_bluegrey",
		[">8:2<"] = "pz_floor_modern_bluegrey",
		[">9:1<"] = "pz_floor_nature_untitled",
		[">9:12<"] = "pz_floor_modern_bluegrey",
		[">15:8<"] = "pz_floor_modern_bluegrey",
		[">9:7<"] = "pz_floor_modern_bluegrey",
		[">12:8<"] = "pz_floor_modern_bluegrey",
		[">18:6<"] = "pz_floor_modern_bluegrey",
		[">12:3<"] = "pz_floor_modern_bluegrey",
		[">19:3<"] = "pz_floor_modern_bluegrey",
		[">11:10<"] = "pz_floor_modern_bluegrey",
		[">12:6<"] = "pz_floor_modern_bluegrey",
		[">8:3<"] = "pz_floor_modern_bluegrey",
		[">2:7<"] = "pz_floor_modern_bluegrey",
		[">11:13<"] = "pz_floor_modern_bluegrey",
		[">20:8<"] = "pz_floor_modern_bluegrey",
		[">1:7<"] = "pz_floor_modern_bluegrey",
		[">11:8<"] = "pz_floor_modern_bluegrey",
		[">19:9<"] = "pz_floor_modern_bluegrey",
		[">11:2<"] = "pz_floor_nature_untitled",
		[">11:12<"] = "pz_floor_modern_bluegrey",
		[">16:8<"] = "pz_floor_modern_bluegrey",
		[">16:9<"] = "pz_floor_modern_bluegrey",
		[">12:1<"] = "pz_floor_modern_bluegrey",
		[">11:1<"] = "pz_floor_nature_untitled",
		[">15:6<"] = "pz_floor_modern_bluegrey",
		[">6:12<"] = "pz_floor_modern_bluegrey",
		[">21:9<"] = "pz_floor_modern_bluegrey",
		[">9:11<"] = "pz_floor_modern_bluegrey",
		[">8:1<"] = "pz_floor_modern_bluegrey",
		[">10:11<"] = "pz_floor_modern_bluegrey",
		[">18:4<"] = "pz_floor_modern_bluegrey",
		[">10:10<"] = "pz_floor_modern_bluegrey",
		[">19:5<"] = "pz_floor_modern_bluegrey",
		[">4:12<"] = "pz_floor_modern_bluegrey",
		[">1:13<"] = "pz_floor_modern_bluegrey",
		[">9:13<"] = "pz_floor_modern_bluegrey",
		[">3:8<"] = "pz_floor_modern_bluegrey",
		[">1:12<"] = "pz_floor_modern_bluegrey",
		[">11:6<"] = "pz_floor_modern_bluegrey",
		[">18:3<"] = "pz_floor_modern_bluegrey",
		[">17:3<"] = "pz_floor_modern_bluegrey",
		[">10:12<"] = "pz_floor_modern_bluegrey",
		[">3:6<"] = "pz_floor_modern_bluegrey",
		[">14:1<"] = "pz_floor_modern_bluegrey",
		[">8:13<"] = "pz_floor_modern_bluegrey",
		[">10:8<"] = "pz_floor_modern_bluegrey",
		[">13:1<"] = "pz_floor_modern_bluegrey",
		[">3:13<"] = "pz_floor_modern_bluegrey",
		[">10:2<"] = "pz_floor_nature_untitled",
		[">12:12<"] = "pz_floor_modern_bluegrey",
		[">20:9<"] = "pz_floor_modern_bluegrey",
		[">1:6<"] = "pz_floor_modern_bluegrey",
		[">17:7<"] = "pz_floor_modern_bluegrey",
		[">12:2<"] = "pz_floor_modern_bluegrey",
		[">13:12<"] = "pz_floor_modern_bluegrey",
		[">10:7<"] = "pz_floor_modern_bluegrey",
		[">20:7<"] = "pz_floor_modern_bluegrey",
		[">2:12<"] = "pz_floor_modern_bluegrey",
		[">17:8<"] = "pz_floor_modern_bluegrey",
		[">3:12<"] = "pz_floor_modern_bluegrey",
		[">11:11<"] = "pz_floor_modern_bluegrey",
		[">13:2<"] = "pz_floor_modern_bluegrey",
		[">10:1<"] = "pz_floor_nature_untitled",
		[">2:8<"] = "pz_floor_modern_bluegrey",
		[">3:2<"] = "pz_floor_modern_bluegrey",
		[">9:6<"] = "pz_floor_modern_bluegrey",
		[">17:10<"] = "pz_floor_modern_bluegrey",
		[">13:11<"] = "pz_floor_modern_bluegrey",
		[">12:7<"] = "pz_floor_modern_bluegrey",
		[">2:9<"] = "pz_floor_modern_bluegrey",
		[">10:6<"] = "pz_floor_modern_bluegrey",
		[">14:6<"] = "pz_floor_modern_bluegrey",
		[">12:11<"] = "pz_floor_modern_bluegrey",
		[">8:12<"] = "pz_floor_modern_bluegrey",
		[">1:3<"] = "pz_floor_modern_bluegrey",
		[">18:7<"] = "pz_floor_modern_bluegrey",
		[">18:9<"] = "pz_floor_modern_bluegrey",
		[">11:3<"] = "pz_floor_nature_untitled",
		[">2:4<"] = "pz_floor_modern_bluegrey",
		[">2:2<"] = "pz_floor_modern_bluegrey",
		[">11:7<"] = "pz_floor_modern_bluegrey",
		[">13:13<"] = "pz_floor_modern_bluegrey",
		[">19:6<"] = "pz_floor_modern_bluegrey",
		[">19:10<"] = "pz_floor_modern_bluegrey",
		[">21:8<"] = "pz_floor_modern_bluegrey",
		[">3:1<"] = "pz_floor_modern_bluegrey",
		[">9:8<"] = "pz_floor_modern_bluegrey",
		[">15:7<"] = "pz_floor_modern_bluegrey",
		[">15:3<"] = "pz_floor_modern_bluegrey",
		[">11:9<"] = "pz_floor_modern_bluegrey",
		[">18:8<"] = "pz_floor_modern_bluegrey",
		[">19:8<"] = "pz_floor_modern_bluegrey",
		[">1:2<"] = "pz_floor_modern_bluegrey",
		[">14:2<"] = "pz_floor_modern_bluegrey",
		[">21:10<"] = "pz_floor_modern_bluegrey",
		[">18:5<"] = "pz_floor_modern_bluegrey",
		[">16:3<"] = "pz_floor_modern_bluegrey",
		[">2:11<"] = "pz_floor_modern_bluegrey",
		[">7:12<"] = "pz_floor_modern_bluegrey",
		[">19:7<"] = "pz_floor_modern_bluegrey",
		[">1:8<"] = "pz_floor_modern_bluegrey",
		[">2:6<"] = "pz_floor_modern_bluegrey",
		[">10:13<"] = "pz_floor_modern_bluegrey"
	             },
	["ghostwomen"] = {},
	["obstacles"] = {
		[">2:13<"] = "laser_Up_red",
		[">10:2<"] = "womanhome",
		[">7:2<"] = "platelaser_red"
	                },
	["mission"] = "Walkthrough",
	["walls"] = {
		[">8:10<"] = "pz_wall_modern_s",
		[">4:1<"] = "pz_wall_modern_e",
		[">11:4<"] = "pz_wall_modern_n",
		[">1:4<"] = "pz_wall_modern_sws",
		[">13:5<"] = "pz_wall_modern_s",
		[">10:5<"] = "pz_wall_modern_s",
		[">0:3<"] = "pz_wall_modern_w",
		[">0:13<"] = "pz_wall_modern_w",
		[">8:4<"] = "pz_wall_modern_n",
		[">18:11<"] = "pz_wall_modern_n",
		[">1:0<"] = "pz_wall_modern_s",
		[">12:14<"] = "pz_wall_modern_n",
		[">7:11<"] = "pz_wall_modern_nws",
		[">7:10<"] = "pz_wall_modern_nw",
		[">7:1<"] = "pz_wall_modern_nws",
		[">0:8<"] = "pz_wall_modern_w",
		[">8:6<"] = "pz_wall_modern_w",
		[">4:9<"] = "pz_wall_modern_se",
		[">13:9<"] = "pz_wall_modern_se",
		[">0:10<"] = "pz_wall_modern_nw",
		[">8:0<"] = "pz_wall_modern_s",
		[">0:2<"] = "pz_wall_modern_w",
		[">7:0<"] = "pz_wall_modern_nw",
		[">6:13<"] = "pz_wall_modern_n",
		[">4:11<"] = "pz_wall_modern_nes",
		[">21:6<"] = "pz_wall_modern_s",
		[">13:8<"] = "pz_wall_modern_e",
		[">12:5<"] = "pz_wall_modern_s",
		[">10:4<"] = "pz_wall_modern_n",
		[">0:6<"] = "pz_wall_modern_w",
		[">9:14<"] = "pz_wall_modern_n",
		[">17:11<"] = "pz_wall_modern_n",
		[">4:13<"] = "pz_wall_modern_ses",
		[">22:7<"] = "pz_wall_modern_e",
		[">7:4<"] = "pz_wall_modern_sw",
		[">4:8<"] = "pz_wall_modern_e",
		[">0:0<"] = "pz_wall_modern_nw",
		[">6:3<"] = "pz_wall_modern_sw",
		[">5:13<"] = "pz_wall_modern_n",
		[">1:5<"] = "pz_wall_modern_nws",
		[">11:14<"] = "pz_wall_modern_n",
		[">0:9<"] = "pz_wall_modern_sw",
		[">22:11<"] = "pz_wall_modern_se",
		[">8:5<"] = "pz_wall_modern_nw",
		[">15:5<"] = "pz_wall_modern_s",
		[">9:10<"] = "pz_wall_modern_nws",
		[">17:6<"] = "pz_wall_modern_nws",
		[">3:14<"] = "pz_wall_modern_n",
		[">11:5<"] = "pz_wall_modern_s",
		[">15:1<"] = "pz_wall_modern_e",
		[">15:0<"] = "pz_wall_modern_ne",
		[">22:10<"] = "pz_wall_modern_e",
		[">15:10<"] = "pz_wall_modern_sw",
		[">13:7<"] = "pz_wall_modern_ses",
		[">0:1<"] = "pz_wall_modern_w",
		[">13:4<"] = "pz_wall_modern_n",
		[">14:5<"] = "pz_wall_modern_s",
		[">7:3<"] = "pz_wall_modern_sws",
		[">0:5<"] = "pz_wall_modern_nw",
		[">3:5<"] = "pz_wall_modern_nes",
		[">20:6<"] = "pz_wall_modern_nes",
		[">20:3<"] = "pz_wall_modern_e",
		[">8:7<"] = "pz_wall_modern_w",
		[">4:14<"] = "pz_wall_modern_se",
		[">12:0<"] = "pz_wall_modern_s",
		[">14:0<"] = "pz_wall_modern_s",
		[">4:5<"] = "pz_wall_modern_ne",
		[">12:9<"] = "pz_wall_modern_ses",
		[">11:0<"] = "pz_wall_modern_s",
		[">6:11<"] = "pz_wall_modern_s",
		[">17:5<"] = "pz_wall_modern_w",
		[">16:10<"] = "pz_wall_modern_sws",
		[">4:4<"] = "pz_wall_modern_se",
		[">7:13<"] = "pz_wall_modern_sws",
		[">9:9<"] = "pz_wall_modern_sws",
		[">14:11<"] = "pz_wall_modern_e",
		[">0:7<"] = "pz_wall_modern_w",
		[">0:11<"] = "pz_wall_modern_w",
		[">3:4<"] = "pz_wall_modern_ses",
		[">4:10<"] = "pz_wall_modern_ne",
		[">14:10<"] = "pz_wall_modern_ne",
		[">13:14<"] = "pz_wall_modern_n",
		[">15:2<"] = "pz_wall_modern_nes",
		[">17:4<"] = "pz_wall_modern_sws",
		[">12:4<"] = "pz_wall_modern_n",
		[">4:0<"] = "pz_wall_modern_ne",
		[">1:9<"] = "pz_wall_modern_sws",
		[">6:2<"] = "pz_wall_modern_w",
		[">1:10<"] = "pz_wall_modern_nws",
		[">16:2<"] = "pz_wall_modern_s",
		[">19:2<"] = "pz_wall_modern_s",
		[">19:11<"] = "pz_wall_modern_n",
		[">16:5<"] = "pz_wall_modern_ne",
		[">5:11<"] = "pz_wall_modern_s",
		[">0:4<"] = "pz_wall_modern_sw",
		[">9:5<"] = "pz_wall_modern_s",
		[">14:13<"] = "pz_wall_modern_e",
		[">21:11<"] = "pz_wall_modern_n",
		[">14:14<"] = "pz_wall_modern_se",
		[">10:14<"] = "pz_wall_modern_n",
		[">0:14<"] = "pz_wall_modern_sw",
		[">15:4<"] = "pz_wall_modern_n",
		[">9:4<"] = "pz_wall_modern_n",
		[">10:0<"] = "pz_wall_modern_s",
		[">13:10<"] = "pz_wall_modern_s",
		[">17:2<"] = "pz_wall_modern_s",
		[">3:10<"] = "pz_wall_modern_nes",
		[">16:6<"] = "pz_wall_modern_nes",
		[">22:6<"] = "pz_wall_modern_ne",
		[">18:2<"] = "pz_wall_modern_s",
		[">1:14<"] = "pz_wall_modern_n",
		[">8:14<"] = "pz_wall_modern_n",
		[">0:12<"] = "pz_wall_modern_w",
		[">2:0<"] = "pz_wall_modern_s",
		[">13:0<"] = "pz_wall_modern_s",
		[">16:11<"] = "pz_wall_modern_sw",
		[">8:9<"] = "pz_wall_modern_sw",
		[">14:12<"] = "pz_wall_modern_e",
		[">2:14<"] = "pz_wall_modern_n",
		[">3:9<"] = "pz_wall_modern_ses",
		[">4:6<"] = "pz_wall_modern_e",
		[">20:2<"] = "pz_wall_modern_ne",
		[">20:5<"] = "pz_wall_modern_e",
		[">5:15<"] = "pz_wall_modern_nws",
		[">8:8<"] = "pz_wall_modern_w",
		[">14:4<"] = "pz_wall_modern_n",
		[">22:9<"] = "pz_wall_modern_e",
		[">4:7<"] = "pz_wall_modern_e",
		[">14:9<"] = "pz_wall_modern_sw",
		[">16:4<"] = "pz_wall_modern_n",
		[">20:11<"] = "pz_wall_modern_n",
		[">3:0<"] = "pz_wall_modern_s",
		[">9:0<"] = "pz_wall_modern_s",
		[">12:10<"] = "pz_wall_modern_nes",
		[">15:9<"] = "pz_wall_modern_sws",
		[">14:8<"] = "pz_wall_modern_w",
		[">6:1<"] = "pz_wall_modern_nw",
		[">22:8<"] = "pz_wall_modern_e",
		[">4:3<"] = "pz_wall_modern_e",
		[">7:14<"] = "pz_wall_modern_sw",
		[">20:4<"] = "pz_wall_modern_e",
		[">4:2<"] = "pz_wall_modern_e",
		[">14:7<"] = "pz_wall_modern_sws"
	            },
	["title"] = "The final frontier",
	["falling"] = {},
	["reqballs"] = 12,
	["missionnum"] = 7,
	["tools"] = {
		["plate2"] = 100,
		["plate1"] = 100,
		["trash"] = 100,
		["barrier"] = 0
	            },
	["objects"] = {
		[14] = {
			["y"] = 8,
			["x"] = 9,
			["kind"] = "ball",
			["dir"] = "D"
		       },
		[2] = {
			["y"] = 8,
			["x"] = 3,
			["kind"] = "robot",
			["dir"] = "D"
		      },
		[12] = {
			["y"] = 10,
			["x"] = 20,
			["kind"] = "ball",
			["dir"] = "D"
		       },
		[11] = {
			["y"] = 7,
			["x"] = 20,
			["kind"] = "ball",
			["dir"] = "D"
		       },
		[10] = {
			["y"] = 10,
			["x"] = 17,
			["kind"] = "ball",
			["dir"] = "D"
		       },
		[9] = {
			["y"] = 7,
			["x"] = 17,
			["kind"] = "ball",
			["dir"] = "D"
		      },
		[8] = {
			["y"] = 9,
			["x"] = 19,
			["kind"] = "ghostred",
			["dir"] = "D"
		      },
		[19] = {
			["y"] = 13,
			["x"] = 8,
			["kind"] = "ball",
			["dir"] = "D"
		       },
		[7] = {
			["y"] = 8,
			["x"] = 18,
			["kind"] = "ghostred",
			["dir"] = "D"
		      },
		[1] = {
			["y"] = 2,
			["x"] = 2,
			["kind"] = "woman",
			["dir"] = "D"
		      },
		[6] = {
			["y"] = 8,
			["x"] = 19,
			["kind"] = "ghostblue",
			["dir"] = "U"
		      },
		[5] = {
			["y"] = 9,
			["x"] = 18,
			["kind"] = "ghostblue",
			["dir"] = "U"
		      },
		[4] = {
			["y"] = 7,
			["x"] = 1,
			["kind"] = "robot",
			["dir"] = "E"
		      },
		[3] = {
			["y"] = 8,
			["x"] = 1,
			["kind"] = "robot",
			["dir"] = "D"
		      },
		[20] = {
			["y"] = 13,
			["x"] = 13,
			["kind"] = "ball",
			["dir"] = "D"
		       },
		[18] = {
			["y"] = 11,
			["x"] = 9,
			["kind"] = "ball",
			["dir"] = "D"
		       },
		[17] = {
			["y"] = 11,
			["x"] = 12,
			["kind"] = "ball",
			["dir"] = "D"
		       },
		[16] = {
			["y"] = 10,
			["x"] = 11,
			["kind"] = "ball",
			["dir"] = "D"
		       },
		[15] = {
			["y"] = 10,
			["x"] = 10,
			["kind"] = "ball",
			["dir"] = "D"
		       },
		[13] = {
			["y"] = 8,
			["x"] = 12,
			["kind"] = "ball",
			["dir"] = "D"
		       }
	              }
       }


ret2 = {
	["tab"] = "settings",
	["strip"] = {
		["lasers"] = {
			["tile"] = "platelaser_red"
		             },
		["floor"] = {
			["cstrip"] = "modern",
			["tile"] = "pz_floor_modern_bluegrey"
		            },
		["wall"] = {
			["cstrip"] = "modern",
			["tile"] = "pz_wall_modern_sw"
		           },
		["exits"] = {
			["tile"] = "womanhome"
		            }
	            },
	["odir"] = 2
       }




return ret1, ret2


