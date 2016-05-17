--[[
	BallPlay Cupid
	Puzzle #14
	
	
	
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
Version: 16.05.17
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
	["missionnum"] = 1,
	["walls"] = {
		[">2:0<"] = "pz_wall_modern_s",
		[">21:14<"] = "pz_wall_modern_se",
		[">18:5<"] = "pz_wall_modern_s",
		[">9:2<"] = "pz_wall_modern_n",
		[">3:11<"] = "pz_wall_modern_n",
		[">4:2<"] = "pz_wall_modern_n",
		[">1:4<"] = "pz_wall_modern_w",
		[">13:5<"] = "pz_wall_modern_nw",
		[">16:1<"] = "pz_wall_modern_e",
		[">4:0<"] = "pz_wall_modern_s",
		[">21:5<"] = "pz_wall_modern_ne",
		[">17:14<"] = "pz_wall_modern_n",
		[">21:12<"] = "pz_wall_modern_e",
		[">8:4<"] = "pz_wall_modern_s",
		[">1:0<"] = "pz_wall_modern_nw",
		[">7:11<"] = "pz_wall_modern_n",
		[">8:11<"] = "pz_wall_modern_n",
		[">3:7<"] = "pz_wall_modern_e",
		[">21:7<"] = "pz_wall_modern_e",
		[">10:9<"] = "pz_wall_modern_nws",
		[">8:6<"] = "pz_wall_modern_n",
		[">4:9<"] = "pz_wall_modern_s",
		[">13:9<"] = "pz_wall_modern_s",
		[">13:6<"] = "pz_wall_modern_w",
		[">16:7<"] = "pz_wall_modern_n",
		[">17:9<"] = "pz_wall_modern_ne",
		[">24:5<"] = "pz_wall_modern_e",
		[">11:11<"] = "pz_wall_modern_n",
		[">8:0<"] = "pz_wall_modern_s",
		[">7:0<"] = "pz_wall_modern_s",
		[">4:11<"] = "pz_wall_modern_n",
		[">21:6<"] = "pz_wall_modern_e",
		[">24:3<"] = "pz_wall_modern_e",
		[">1:1<"] = "pz_wall_modern_w",
		[">16:3<"] = "pz_wall_modern_e",
		[">1:11<"] = "pz_wall_modern_sw",
		[">8:2<"] = "pz_wall_modern_n",
		[">20:14<"] = "pz_wall_modern_n",
		[">7:6<"] = "pz_wall_modern_n",
		[">12:8<"] = "pz_wall_modern_e",
		[">17:11<"] = "pz_wall_modern_se",
		[">22:7<"] = "pz_wall_modern_w",
		[">7:4<"] = "pz_wall_modern_s",
		[">13:2<"] = "pz_wall_modern_n",
		[">17:10<"] = "pz_wall_modern_e",
		[">5:4<"] = "pz_wall_modern_s",
		[">1:5<"] = "pz_wall_modern_w",
		[">23:10<"] = "pz_wall_modern_n",
		[">1:3<"] = "pz_wall_modern_w",
		[">20:5<"] = "pz_wall_modern_s",
		[">1:7<"] = "pz_wall_modern_w",
		[">3:9<"] = "pz_wall_modern_nes",
		[">19:9<"] = "pz_wall_modern_w",
		[">15:11<"] = "pz_wall_modern_n",
		[">2:11<"] = "pz_wall_modern_n",
		[">24:10<"] = "pz_wall_modern_se",
		[">16:9<"] = "pz_wall_modern_s",
		[">15:0<"] = "pz_wall_modern_s",
		[">17:12<"] = "pz_wall_modern_s",
		[">24:9<"] = "pz_wall_modern_e",
		[">22:10<"] = "pz_wall_modern_n",
		[">5:6<"] = "pz_wall_modern_n",
		[">13:7<"] = "pz_wall_modern_sw",
		[">5:9<"] = "pz_wall_modern_s",
		[">15:12<"] = "pz_wall_modern_s",
		[">23:1<"] = "pz_wall_modern_s",
		[">9:11<"] = "pz_wall_modern_n",
		[">14:5<"] = "pz_wall_modern_nws",
		[">10:11<"] = "pz_wall_modern_n",
		[">16:0<"] = "pz_wall_modern_ne",
		[">24:2<"] = "pz_wall_modern_e",
		[">24:6<"] = "pz_wall_modern_e",
		[">6:6<"] = "pz_wall_modern_n",
		[">19:5<"] = "pz_wall_modern_s",
		[">12:0<"] = "pz_wall_modern_s",
		[">3:2<"] = "pz_wall_modern_ses",
		[">5:2<"] = "pz_wall_modern_n",
		[">3:8<"] = "pz_wall_modern_e",
		[">12:9<"] = "pz_wall_modern_nes",
		[">11:0<"] = "pz_wall_modern_s",
		[">6:11<"] = "pz_wall_modern_n",
		[">5:0<"] = "pz_wall_modern_s",
		[">7:9<"] = "pz_wall_modern_s",
		[">14:7<"] = "pz_wall_modern_n",
		[">4:4<"] = "pz_wall_modern_s",
		[">17:5<"] = "pz_wall_modern_s",
		[">9:9<"] = "pz_wall_modern_s",
		[">14:11<"] = "pz_wall_modern_n",
		[">22:5<"] = "pz_wall_modern_w",
		[">10:2<"] = "pz_wall_modern_n",
		[">3:6<"] = "pz_wall_modern_ses",
		[">14:0<"] = "pz_wall_modern_s",
		[">6:4<"] = "pz_wall_modern_s",
		[">21:13<"] = "pz_wall_modern_e",
		[">14:14<"] = "pz_wall_modern_n",
		[">22:8<"] = "pz_wall_modern_nws",
		[">24:8<"] = "pz_wall_modern_e",
		[">18:14<"] = "pz_wall_modern_n",
		[">9:6<"] = "pz_wall_modern_se",
		[">9:0<"] = "pz_wall_modern_s",
		[">10:8<"] = "pz_wall_modern_w",
		[">7:2<"] = "pz_wall_modern_n",
		[">6:0<"] = "pz_wall_modern_s",
		[">1:6<"] = "pz_wall_modern_w",
		[">14:4<"] = "pz_wall_modern_w",
		[">3:0<"] = "pz_wall_modern_s",
		[">10:7<"] = "pz_wall_modern_nw",
		[">1:9<"] = "pz_wall_modern_w",
		[">19:14<"] = "pz_wall_modern_n",
		[">1:10<"] = "pz_wall_modern_w",
		[">16:2<"] = "pz_wall_modern_e",
		[">24:7<"] = "pz_wall_modern_e",
		[">16:12<"] = "pz_wall_modern_s",
		[">16:5<"] = "pz_wall_modern_nes",
		[">5:11<"] = "pz_wall_modern_n",
		[">13:12<"] = "pz_wall_modern_nw",
		[">9:5<"] = "pz_wall_modern_e",
		[">15:9<"] = "pz_wall_modern_s",
		[">21:11<"] = "pz_wall_modern_e",
		[">22:3<"] = "pz_wall_modern_w",
		[">19:12<"] = "pz_wall_modern_nws",
		[">16:11<"] = "pz_wall_modern_n",
		[">3:4<"] = "pz_wall_modern_nes",
		[">9:4<"] = "pz_wall_modern_ne",
		[">10:0<"] = "pz_wall_modern_s",
		[">18:12<"] = "pz_wall_modern_s",
		[">6:9<"] = "pz_wall_modern_s",
		[">4:6<"] = "pz_wall_modern_n",
		[">6:2<"] = "pz_wall_modern_n",
		[">22:6<"] = "pz_wall_modern_w",
		[">15:14<"] = "pz_wall_modern_n",
		[">24:4<"] = "pz_wall_modern_e",
		[">16:14<"] = "pz_wall_modern_n",
		[">19:10<"] = "pz_wall_modern_w",
		[">17:7<"] = "pz_wall_modern_n",
		[">14:12<"] = "pz_wall_modern_s",
		[">18:7<"] = "pz_wall_modern_n",
		[">8:9<"] = "pz_wall_modern_s",
		[">14:2<"] = "pz_wall_modern_sws",
		[">12:2<"] = "pz_wall_modern_n",
		[">12:11<"] = "pz_wall_modern_n",
		[">11:7<"] = "pz_wall_modern_s",
		[">13:13<"] = "pz_wall_modern_w",
		[">12:7<"] = "pz_wall_modern_ne",
		[">13:0<"] = "pz_wall_modern_s",
		[">21:8<"] = "pz_wall_modern_nes",
		[">11:2<"] = "pz_wall_modern_n",
		[">13:11<"] = "pz_wall_modern_n",
		[">15:7<"] = "pz_wall_modern_n",
		[">14:9<"] = "pz_wall_modern_s",
		[">16:4<"] = "pz_wall_modern_e",
		[">24:1<"] = "pz_wall_modern_ne",
		[">19:8<"] = "pz_wall_modern_w",
		[">1:2<"] = "pz_wall_modern_w",
		[">22:2<"] = "pz_wall_modern_w",
		[">21:10<"] = "pz_wall_modern_ses",
		[">22:1<"] = "pz_wall_modern_nw",
		[">19:11<"] = "pz_wall_modern_w",
		[">22:4<"] = "pz_wall_modern_w",
		[">14:3<"] = "pz_wall_modern_w",
		[">19:7<"] = "pz_wall_modern_sws",
		[">1:8<"] = "pz_wall_modern_w",
		[">3:3<"] = "pz_wall_modern_e",
		[">13:14<"] = "pz_wall_modern_sw"
	            },
	["mission"] = "Normal",
	["tools"] = {
		["plate2"] = 0,
		["plate1"] = 0,
		["trash"] = 0,
		["barrier"] = 3
	            },
	["title"] = "Solid. Solid as a rock.",
	["falling"] = {},
	["reqballs"] = 5,
	["obstacles"] = {
		[">20:13<"] = "zplate1",
		[">2:10<"] = "zplate2",
		[">15:6<"] = "zplate2",
		[">16:10<"] = "a_exit",
		[">20:6<"] = "zplate2",
		[">11:10<"] = "zplate1",
		[">20:9<"] = "zplate1",
		[">2:1<"] = "zplate1",
		[">15:1<"] = "zplate2",
		[">2:5<"] = "zplate2",
		[">23:9<"] = "zplate1"
	                },
	["floors"] = {
		[">12:1<"] = "pz_floor_modern_bluegrey",
		[">8:10<"] = "pz_floor_modern_bluegrey",
		[">11:1<"] = "pz_floor_modern_bluegrey",
		[">4:1<"] = "pz_floor_modern_bluegrey",
		[">21:9<"] = "pz_floor_modern_bluegrey",
		[">6:1<"] = "pz_floor_modern_bluegrey",
		[">8:1<"] = "pz_floor_modern_bluegrey",
		[">15:13<"] = "pz_floor_modern_bluegrey",
		[">10:10<"] = "pz_floor_modern_bluegrey",
		[">20:6<"] = "pz_floor_modern_bluegrey",
		[">5:1<"] = "pz_floor_modern_bluegrey",
		[">15:2<"] = "pz_floor_modern_bluegrey",
		[">20:11<"] = "pz_floor_modern_bluegrey",
		[">7:1<"] = "pz_floor_modern_bluegrey",
		[">2:9<"] = "pz_floor_modern_bluegrey",
		[">23:3<"] = "pz_floor_modern_bluegrey",
		[">20:10<"] = "pz_floor_modern_bluegrey",
		[">4:5<"] = "pz_floor_modern_bluegrey",
		[">23:2<"] = "pz_floor_modern_bluegrey",
		[">6:10<"] = "pz_floor_modern_bluegrey",
		[">2:1<"] = "pz_floor_modern_bluegrey",
		[">16:10<"] = "pz_floor_modern_bluegrey",
		[">5:10<"] = "pz_floor_modern_bluegrey",
		[">20:13<"] = "pz_floor_modern_bluegrey",
		[">14:1<"] = "pz_floor_modern_bluegrey",
		[">7:5<"] = "pz_floor_modern_bluegrey",
		[">2:5<"] = "pz_floor_modern_bluegrey",
		[">16:13<"] = "pz_floor_modern_bluegrey",
		[">14:10<"] = "pz_floor_modern_bluegrey",
		[">13:1<"] = "pz_floor_modern_bluegrey",
		[">2:10<"] = "pz_floor_modern_bluegrey",
		[">23:4<"] = "pz_floor_modern_bluegrey",
		[">23:5<"] = "pz_floor_modern_bluegrey",
		[">9:1<"] = "pz_floor_modern_bluegrey",
		[">14:13<"] = "pz_floor_modern_bluegrey",
		[">15:4<"] = "pz_floor_modern_bluegrey",
		[">18:6<"] = "pz_floor_modern_bluegrey",
		[">20:12<"] = "pz_floor_modern_bluegrey",
		[">10:1<"] = "pz_floor_modern_bluegrey",
		[">16:6<"] = "pz_floor_modern_bluegrey",
		[">13:10<"] = "pz_floor_modern_bluegrey",
		[">11:10<"] = "pz_floor_modern_bluegrey",
		[">3:10<"] = "pz_floor_modern_bluegrey",
		[">3:5<"] = "pz_floor_modern_bluegrey",
		[">5:5<"] = "pz_floor_modern_bluegrey",
		[">15:1<"] = "pz_floor_modern_bluegrey",
		[">23:9<"] = "pz_floor_modern_bluegrey",
		[">14:6<"] = "pz_floor_modern_bluegrey",
		[">7:10<"] = "pz_floor_modern_bluegrey",
		[">2:8<"] = "pz_floor_modern_bluegrey",
		[">15:10<"] = "pz_floor_modern_bluegrey",
		[">2:2<"] = "pz_floor_modern_bluegrey",
		[">2:4<"] = "pz_floor_modern_bluegrey",
		[">20:8<"] = "pz_floor_modern_bluegrey",
		[">2:7<"] = "pz_floor_modern_bluegrey",
		[">6:5<"] = "pz_floor_modern_bluegrey",
		[">15:3<"] = "pz_floor_modern_bluegrey",
		[">11:9<"] = "pz_floor_modern_bluegrey",
		[">19:6<"] = "pz_floor_modern_bluegrey",
		[">2:3<"] = "pz_floor_modern_bluegrey",
		[">4:10<"] = "pz_floor_modern_bluegrey",
		[">3:1<"] = "pz_floor_modern_bluegrey",
		[">8:5<"] = "pz_floor_modern_bluegrey",
		[">11:8<"] = "pz_floor_modern_bluegrey",
		[">15:5<"] = "pz_floor_modern_bluegrey",
		[">19:13<"] = "pz_floor_modern_bluegrey",
		[">17:13<"] = "pz_floor_modern_bluegrey",
		[">9:10<"] = "pz_floor_modern_bluegrey",
		[">17:6<"] = "pz_floor_modern_bluegrey",
		[">12:10<"] = "pz_floor_modern_bluegrey",
		[">20:9<"] = "pz_floor_modern_bluegrey",
		[">20:7<"] = "pz_floor_modern_bluegrey",
		[">23:7<"] = "pz_floor_modern_bluegrey",
		[">23:6<"] = "pz_floor_modern_bluegrey",
		[">22:9<"] = "pz_floor_modern_bluegrey",
		[">18:13<"] = "pz_floor_modern_bluegrey",
		[">23:8<"] = "pz_floor_modern_bluegrey",
		[">2:6<"] = "pz_floor_modern_bluegrey",
		[">15:6<"] = "pz_floor_modern_bluegrey"
	             },
	["objects"] = {
		[2] = {
			["y"] = 2,
			["x"] = 23,
			["kind"] = "ball",
			["dir"] = "D"
		      },
		[5] = {
			["y"] = 6,
			["x"] = 14,
			["kind"] = "ball",
			["dir"] = "R"
		      },
		[3] = {
			["y"] = 8,
			["x"] = 11,
			["kind"] = "ball",
			["dir"] = "D"
		      },
		[1] = {
			["y"] = 13,
			["x"] = 14,
			["kind"] = "ball",
			["dir"] = "R"
		      },
		[4] = {
			["y"] = 5,
			["x"] = 8,
			["kind"] = "ball",
			["dir"] = "L"
		      }
	              }
       }


ret2 = {
	["tab"] = "settings",
	["strip"] = {
		["floor"] = {
			["cstrip"] = "modern",
			["tile"] = "pz_floor_modern_bluegrey"
		            },
		["wall"] = {
			["cstrip"] = "modern",
			["tile"] = "pz_wall_modern_ne"
		           },
		["plates"] = {
			["tile"] = "zplate2"
		             },
		["exits"] = {
			["tile"] = "a_exit"
		            }
	            },
	["odir"] = 4
       }




return ret1, ret2


