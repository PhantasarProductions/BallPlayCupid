--[[
	BallPlay Cupid
	Puzzle 30
	
	
	
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
Version: 16.06.17
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
		[1] = 25,
		[2] = 15
	             },
	["partime"] = 0,
	["floors"] = {
		[">4:1<"] = "pz_floor_modern_bluegrey",
		[">21:13<"] = "pz_floor_modern_bluegrey",
		[">11:4<"] = "pz_floor_modern_bluegrey",
		[">16:1<"] = "pz_floor_modern_bluegrey",
		[">21:5<"] = "pz_floor_modern_bluegrey",
		[">21:12<"] = "pz_floor_modern_bluegrey",
		[">3:3<"] = "pz_floor_modern_bluegrey",
		[">17:1<"] = "pz_floor_modern_bluegrey",
		[">22:4<"] = "pz_floor_modern_bluegrey",
		[">18:13<"] = "pz_floor_modern_bluegrey",
		[">3:7<"] = "pz_floor_modern_bluegrey",
		[">22:5<"] = "pz_floor_modern_bluegrey",
		[">23:3<"] = "pz_floor_modern_bluegrey",
		[">8:6<"] = "pz_floor_modern_bluegrey",
		[">4:9<"] = "pz_floor_modern_bluegrey",
		[">13:9<"] = "pz_floor_modern_bluegrey",
		[">17:9<"] = "pz_floor_modern_bluegrey",
		[">2:1<"] = "pz_floor_modern_bluegrey",
		[">20:13<"] = "pz_floor_modern_bluegrey",
		[">11:11<"] = "pz_floor_modern_bluegrey",
		[">19:2<"] = "pz_floor_modern_bluegrey",
		[">2:3<"] = "pz_floor_modern_bluegrey",
		[">2:5<"] = "pz_floor_modern_bluegrey",
		[">21:6<"] = "pz_floor_modern_bluegrey",
		[">7:7<"] = "pz_floor_modern_bluegrey",
		[">20:12<"] = "pz_floor_modern_bluegrey",
		[">16:3<"] = "pz_floor_modern_bluegrey",
		[">7:8<"] = "pz_floor_modern_bluegrey",
		[">19:4<"] = "pz_floor_modern_bluegrey",
		[">8:2<"] = "pz_floor_modern_bluegrey",
		[">7:6<"] = "pz_floor_modern_bluegrey",
		[">15:3<"] = "pz_floor_modern_bluegrey",
		[">7:4<"] = "pz_floor_modern_bluegrey",
		[">19:3<"] = "pz_floor_modern_bluegrey",
		[">11:10<"] = "pz_floor_modern_bluegrey",
		[">4:8<"] = "pz_floor_modern_bluegrey",
		[">23:12<"] = "pz_floor_modern_bluegrey",
		[">6:3<"] = "pz_floor_modern_bluegrey",
		[">5:4<"] = "pz_floor_modern_bluegrey",
		[">8:3<"] = "pz_floor_modern_bluegrey",
		[">2:7<"] = "pz_floor_modern_bluegrey",
		[">6:5<"] = "pz_floor_modern_bluegrey",
		[">11:13<"] = "pz_floor_modern_bluegrey",
		[">20:5<"] = "pz_floor_modern_bluegrey",
		[">8:5<"] = "pz_floor_modern_bluegrey",
		[">15:5<"] = "pz_floor_modern_bluegrey",
		[">11:8<"] = "pz_floor_modern_bluegrey",
		[">17:13<"] = "pz_floor_modern_bluegrey",
		[">19:9<"] = "pz_floor_modern_bluegrey",
		[">6:8<"] = "pz_floor_modern_bluegrey",
		[">23:13<"] = "pz_floor_modern_bluegrey",
		[">11:12<"] = "pz_floor_modern_bluegrey",
		[">11:5<"] = "pz_floor_modern_bluegrey",
		[">16:9<"] = "pz_floor_modern_bluegrey",
		[">15:1<"] = "pz_floor_modern_bluegrey",
		[">17:12<"] = "pz_floor_modern_bluegrey",
		[">6:2<"] = "pz_floor_modern_bluegrey",
		[">5:6<"] = "pz_floor_modern_bluegrey",
		[">21:4<"] = "pz_floor_modern_bluegrey",
		[">11:1<"] = "pz_floor_modern_bluegrey",
		[">5:9<"] = "pz_floor_modern_bluegrey",
		[">15:12<"] = "pz_floor_modern_bluegrey",
		[">23:1<"] = "pz_floor_modern_bluegrey",
		[">21:9<"] = "pz_floor_modern_bluegrey",
		[">6:1<"] = "pz_floor_modern_bluegrey",
		[">7:3<"] = "pz_floor_modern_bluegrey",
		[">8:1<"] = "pz_floor_modern_bluegrey",
		[">22:13<"] = "pz_floor_modern_bluegrey",
		[">15:13<"] = "pz_floor_modern_bluegrey",
		[">22:12<"] = "pz_floor_modern_bluegrey",
		[">19:1<"] = "pz_floor_modern_bluegrey",
		[">5:1<"] = "pz_floor_modern_bluegrey",
		[">20:3<"] = "pz_floor_modern_bluegrey",
		[">8:7<"] = "pz_floor_modern_bluegrey",
		[">15:2<"] = "pz_floor_modern_bluegrey",
		[">2:9<"] = "pz_floor_modern_bluegrey",
		[">5:2<"] = "pz_floor_modern_bluegrey",
		[">3:8<"] = "pz_floor_modern_bluegrey",
		[">4:5<"] = "pz_floor_modern_bluegrey",
		[">12:9<"] = "pz_floor_modern_bluegrey",
		[">11:6<"] = "pz_floor_modern_bluegrey",
		[">18:3<"] = "pz_floor_modern_bluegrey",
		[">21:1<"] = "pz_floor_modern_bluegrey",
		[">7:9<"] = "pz_floor_modern_bluegrey",
		[">23:2<"] = "pz_floor_modern_bluegrey",
		[">22:9<"] = "pz_floor_modern_bluegrey",
		[">3:2<"] = "pz_floor_modern_bluegrey",
		[">17:3<"] = "pz_floor_modern_bluegrey",
		[">4:4<"] = "pz_floor_modern_bluegrey",
		[">5:7<"] = "pz_floor_modern_bluegrey",
		[">9:9<"] = "pz_floor_modern_bluegrey",
		[">14:11<"] = "pz_floor_modern_bluegrey",
		[">23:6<"] = "pz_floor_modern_bluegrey",
		[">17:4<"] = "pz_floor_modern_bluegrey",
		[">3:6<"] = "pz_floor_modern_bluegrey",
		[">19:5<"] = "pz_floor_modern_bluegrey",
		[">21:3<"] = "pz_floor_modern_bluegrey",
		[">7:1<"] = "pz_floor_modern_bluegrey",
		[">21:2<"] = "pz_floor_modern_bluegrey",
		[">3:4<"] = "pz_floor_modern_bluegrey",
		[">4:2<"] = "pz_floor_modern_bluegrey",
		[">7:5<"] = "pz_floor_modern_bluegrey",
		[">20:6<"] = "pz_floor_modern_bluegrey",
		[">16:13<"] = "pz_floor_modern_bluegrey",
		[">14:10<"] = "pz_floor_modern_bluegrey",
		[">16:4<"] = "pz_floor_modern_bluegrey",
		[">18:2<"] = "pz_floor_modern_bluegrey",
		[">23:5<"] = "pz_floor_modern_bluegrey",
		[">20:1<"] = "pz_floor_modern_bluegrey",
		[">3:9<"] = "pz_floor_modern_bluegrey",
		[">6:6<"] = "pz_floor_modern_bluegrey",
		[">18:6<"] = "pz_floor_modern_bluegrey",
		[">23:4<"] = "pz_floor_modern_bluegrey",
		[">11:2<"] = "pz_floor_modern_bluegrey",
		[">16:2<"] = "pz_floor_modern_bluegrey",
		[">20:9<"] = "pz_floor_modern_bluegrey",
		[">16:12<"] = "pz_floor_modern_bluegrey",
		[">16:5<"] = "pz_floor_modern_bluegrey",
		[">16:6<"] = "pz_floor_modern_bluegrey",
		[">4:6<"] = "pz_floor_modern_bluegrey",
		[">18:4<"] = "pz_floor_modern_bluegrey",
		[">15:9<"] = "pz_floor_modern_bluegrey",
		[">15:4<"] = "pz_floor_modern_bluegrey",
		[">22:3<"] = "pz_floor_modern_bluegrey",
		[">18:1<"] = "pz_floor_modern_bluegrey",
		[">20:4<"] = "pz_floor_modern_bluegrey",
		[">2:4<"] = "pz_floor_modern_bluegrey",
		[">22:1<"] = "pz_floor_modern_bluegrey",
		[">2:8<"] = "pz_floor_modern_bluegrey",
		[">17:5<"] = "pz_floor_modern_bluegrey",
		[">6:9<"] = "pz_floor_modern_bluegrey",
		[">18:9<"] = "pz_floor_modern_bluegrey",
		[">14:12<"] = "pz_floor_modern_bluegrey",
		[">5:5<"] = "pz_floor_modern_bluegrey",
		[">18:12<"] = "pz_floor_modern_bluegrey",
		[">23:9<"] = "pz_floor_modern_bluegrey",
		[">23:7<"] = "pz_floor_modern_bluegrey",
		[">22:6<"] = "pz_floor_modern_bluegrey",
		[">15:6<"] = "pz_floor_modern_bluegrey",
		[">10:9<"] = "pz_floor_modern_bluegrey",
		[">2:2<"] = "pz_floor_modern_bluegrey",
		[">8:9<"] = "pz_floor_modern_bluegrey",
		[">11:3<"] = "pz_floor_modern_bluegrey",
		[">14:13<"] = "pz_floor_modern_bluegrey",
		[">19:13<"] = "pz_floor_modern_bluegrey",
		[">11:7<"] = "pz_floor_modern_bluegrey",
		[">23:8<"] = "pz_floor_modern_bluegrey",
		[">19:6<"] = "pz_floor_modern_bluegrey",
		[">17:6<"] = "pz_floor_modern_bluegrey",
		[">8:8<"] = "pz_floor_modern_bluegrey",
		[">3:1<"] = "pz_floor_modern_bluegrey",
		[">20:2<"] = "pz_floor_modern_bluegrey",
		[">8:4<"] = "pz_floor_modern_bluegrey",
		[">14:9<"] = "pz_floor_modern_bluegrey",
		[">11:9<"] = "pz_floor_modern_bluegrey",
		[">18:5<"] = "pz_floor_modern_bluegrey",
		[">17:2<"] = "pz_floor_modern_bluegrey",
		[">7:2<"] = "pz_floor_modern_bluegrey",
		[">22:2<"] = "pz_floor_modern_bluegrey",
		[">6:4<"] = "pz_floor_modern_bluegrey",
		[">6:7<"] = "pz_floor_modern_bluegrey",
		[">5:3<"] = "pz_floor_modern_bluegrey",
		[">4:7<"] = "pz_floor_modern_bluegrey",
		[">4:3<"] = "pz_floor_modern_bluegrey",
		[">3:5<"] = "pz_floor_modern_bluegrey",
		[">5:8<"] = "pz_floor_modern_bluegrey",
		[">2:6<"] = "pz_floor_modern_bluegrey",
		[">19:12<"] = "pz_floor_modern_bluegrey"
	             },
	["falling"] = {},
	["ghostwomen"] = {},
	["mission"] = "Normal",
	["walls"] = {
		[">8:10<"] = "pz_wall_modern_n",
		[">21:14<"] = "pz_wall_modern_n",
		[">12:13<"] = "pz_wall_modern_e",
		[">9:2<"] = "pz_wall_modern_e",
		[">14:4<"] = "pz_wall_modern_w",
		[">12:12<"] = "pz_wall_modern_e",
		[">18:10<"] = "pz_wall_modern_n",
		[">10:5<"] = "pz_wall_modern_w",
		[">4:0<"] = "pz_wall_modern_s",
		[">17:14<"] = "pz_wall_modern_n",
		[">18:11<"] = "pz_wall_modern_s",
		[">1:0<"] = "pz_wall_modern_nw",
		[">12:14<"] = "pz_wall_modern_se",
		[">7:10<"] = "pz_wall_modern_n",
		[">21:0<"] = "pz_wall_modern_s",
		[">20:10<"] = "pz_wall_modern_n",
		[">24:7<"] = "pz_wall_modern_e",
		[">16:7<"] = "pz_wall_modern_n",
		[">19:0<"] = "pz_wall_modern_s",
		[">5:10<"] = "pz_wall_modern_n",
		[">23:11<"] = "pz_wall_modern_s",
		[">24:5<"] = "pz_wall_modern_e",
		[">10:3<"] = "pz_wall_modern_w",
		[">8:0<"] = "pz_wall_modern_s",
		[">7:0<"] = "pz_wall_modern_s",
		[">10:7<"] = "pz_wall_modern_w",
		[">1:1<"] = "pz_wall_modern_w",
		[">2:10<"] = "pz_wall_modern_n",
		[">12:5<"] = "pz_wall_modern_e",
		[">10:4<"] = "pz_wall_modern_w",
		[">9:1<"] = "pz_wall_modern_e",
		[">17:8<"] = "pz_wall_modern_s",
		[">15:8<"] = "pz_wall_modern_s",
		[">9:7<"] = "pz_wall_modern_e",
		[">12:8<"] = "pz_wall_modern_nes",
		[">17:11<"] = "pz_wall_modern_s",
		[">12:3<"] = "pz_wall_modern_e",
		[">22:7<"] = "pz_wall_modern_sws",
		[">17:10<"] = "pz_wall_modern_n",
		[">1:5<"] = "pz_wall_modern_w",
		[">23:10<"] = "pz_wall_modern_n",
		[">1:3<"] = "pz_wall_modern_w",
		[">11:14<"] = "pz_wall_modern_n",
		[">22:11<"] = "pz_wall_modern_s",
		[">20:8<"] = "pz_wall_modern_s",
		[">1:7<"] = "pz_wall_modern_w",
		[">24:0<"] = "pz_wall_modern_ne",
		[">9:10<"] = "pz_wall_modern_n",
		[">15:11<"] = "pz_wall_modern_nes",
		[">20:7<"] = "pz_wall_modern_n",
		[">16:8<"] = "pz_wall_modern_s",
		[">12:2<"] = "pz_wall_modern_e",
		[">15:0<"] = "pz_wall_modern_s",
		[">24:9<"] = "pz_wall_modern_e",
		[">22:10<"] = "pz_wall_modern_n",
		[">15:10<"] = "pz_wall_modern_ses",
		[">24:13<"] = "pz_wall_modern_e",
		[">23:14<"] = "pz_wall_modern_n",
		[">15:14<"] = "pz_wall_modern_n",
		[">14:5<"] = "pz_wall_modern_w",
		[">10:11<"] = "pz_wall_modern_w",
		[">16:0<"] = "pz_wall_modern_s",
		[">18:0<"] = "pz_wall_modern_s",
		[">10:10<"] = "pz_wall_modern_sws",
		[">24:2<"] = "pz_wall_modern_e",
		[">24:6<"] = "pz_wall_modern_e",
		[">12:0<"] = "pz_wall_modern_ne",
		[">24:12<"] = "pz_wall_modern_e",
		[">14:0<"] = "pz_wall_modern_nw",
		[">13:11<"] = "pz_wall_modern_w",
		[">11:0<"] = "pz_wall_modern_s",
		[">22:14<"] = "pz_wall_modern_n",
		[">6:0<"] = "pz_wall_modern_s",
		[">16:10<"] = "pz_wall_modern_n",
		[">10:2<"] = "pz_wall_modern_w",
		[">14:7<"] = "pz_wall_modern_sw",
		[">20:11<"] = "pz_wall_modern_s",
		[">6:10<"] = "pz_wall_modern_n",
		[">5:0<"] = "pz_wall_modern_s",
		[">22:8<"] = "pz_wall_modern_nws",
		[">14:1<"] = "pz_wall_modern_w",
		[">19:8<"] = "pz_wall_modern_s",
		[">24:14<"] = "pz_wall_modern_se",
		[">4:10<"] = "pz_wall_modern_n",
		[">10:8<"] = "pz_wall_modern_nws",
		[">9:3<"] = "pz_wall_modern_e",
		[">10:13<"] = "pz_wall_modern_w",
		[">21:10<"] = "pz_wall_modern_n",
		[">18:14<"] = "pz_wall_modern_n",
		[">10:14<"] = "pz_wall_modern_sw",
		[">1:2<"] = "pz_wall_modern_w",
		[">1:9<"] = "pz_wall_modern_w",
		[">13:8<"] = "pz_wall_modern_s",
		[">1:10<"] = "pz_wall_modern_sw",
		[">10:6<"] = "pz_wall_modern_w",
		[">12:4<"] = "pz_wall_modern_e",
		[">19:11<"] = "pz_wall_modern_s",
		[">10:12<"] = "pz_wall_modern_w",
		[">14:8<"] = "pz_wall_modern_s",
		[">13:12<"] = "pz_wall_modern_w",
		[">9:5<"] = "pz_wall_modern_e",
		[">14:14<"] = "pz_wall_modern_n",
		[">21:11<"] = "pz_wall_modern_s",
		[">12:6<"] = "pz_wall_modern_e",
		[">21:7<"] = "pz_wall_modern_n",
		[">14:3<"] = "pz_wall_modern_w",
		[">16:11<"] = "pz_wall_modern_s",
		[">10:1<"] = "pz_wall_modern_w",
		[">9:8<"] = "pz_wall_modern_nes",
		[">13:10<"] = "pz_wall_modern_sws",
		[">9:6<"] = "pz_wall_modern_e",
		[">3:10<"] = "pz_wall_modern_n",
		[">10:0<"] = "pz_wall_modern_nw",
		[">24:1<"] = "pz_wall_modern_e",
		[">19:14<"] = "pz_wall_modern_n",
		[">24:4<"] = "pz_wall_modern_e",
		[">16:14<"] = "pz_wall_modern_n",
		[">19:10<"] = "pz_wall_modern_n",
		[">17:7<"] = "pz_wall_modern_n",
		[">24:10<"] = "pz_wall_modern_se",
		[">18:7<"] = "pz_wall_modern_n",
		[">17:0<"] = "pz_wall_modern_s",
		[">14:2<"] = "pz_wall_modern_w",
		[">12:7<"] = "pz_wall_modern_e",
		[">20:0<"] = "pz_wall_modern_s",
		[">20:14<"] = "pz_wall_modern_n",
		[">13:13<"] = "pz_wall_modern_w",
		[">24:11<"] = "pz_wall_modern_ne",
		[">2:0<"] = "pz_wall_modern_s",
		[">21:8<"] = "pz_wall_modern_s",
		[">1:6<"] = "pz_wall_modern_w",
		[">12:1<"] = "pz_wall_modern_e",
		[">15:7<"] = "pz_wall_modern_n",
		[">12:11<"] = "pz_wall_modern_e",
		[">14:6<"] = "pz_wall_modern_w",
		[">18:8<"] = "pz_wall_modern_s",
		[">3:0<"] = "pz_wall_modern_s",
		[">9:0<"] = "pz_wall_modern_ne",
		[">12:10<"] = "pz_wall_modern_ses",
		[">22:0<"] = "pz_wall_modern_s",
		[">24:8<"] = "pz_wall_modern_e",
		[">23:0<"] = "pz_wall_modern_s",
		[">24:3<"] = "pz_wall_modern_e",
		[">9:4<"] = "pz_wall_modern_e",
		[">19:7<"] = "pz_wall_modern_n",
		[">1:8<"] = "pz_wall_modern_w",
		[">1:4<"] = "pz_wall_modern_w",
		[">13:14<"] = "pz_wall_modern_sw"
	            },
	["title"] = "Love, shine a light.",
	["obstacles"] = {
		[">14:10<"] = "platelaser_ember",
		[">20:12<"] = "platelaser_green",
		[">11:1<"] = "laser_Down_red",
		[">15:6<"] = "laser_Up_green",
		[">23:4<"] = "laser_Left_green",
		[">15:12<"] = "platelaser_green",
		[">23:1<"] = "laser_Down_blue",
		[">11:4<"] = "zzzglass",
		[">16:12<"] = "platelaser_blue",
		[">20:1<"] = "laser_Down_red",
		[">14:13<"] = "gplate2",
		[">15:4<"] = "laser_Right_blue",
		[">22:13<"] = "platelaser_red",
		[">17:6<"] = "laser_Up_blue",
		[">15:3<"] = "laser_Right_green",
		[">20:6<"] = "laser_Up_ember",
		[">21:6<"] = "laser_Up_red",
		[">22:12<"] = "platelaser_ember",
		[">19:1<"] = "laser_Down_blue",
		[">22:1<"] = "laser_Down_red",
		[">11:6<"] = "zzzglass",
		[">17:1<"] = "laser_Down_red",
		[">22:6<"] = "laser_Up_blue",
		[">18:13<"] = "platelaser_red",
		[">11:8<"] = "zzzglass",
		[">16:1<"] = "laser_Down_blue",
		[">11:13<"] = "zzzglass",
		[">23:3<"] = "laser_Left_ember",
		[">23:12<"] = "gplate2",
		[">18:6<"] = "laser_Up_red",
		[">21:13<"] = "platelaser_green",
		[">11:3<"] = "zzzglass",
		[">21:12<"] = "platelaser_red",
		[">23:2<"] = "laser_Left_red",
		[">11:7<"] = "zzzglass",
		[">18:12<"] = "platelaser_green",
		[">19:6<"] = "laser_Up_green",
		[">16:13<"] = "platelaser_ember",
		[">17:13<"] = "platelaser_blue",
		[">11:9<"] = "zzzglass",
		[">17:3<"] = "a_exit",
		[">18:1<"] = "laser_Down_ember",
		[">15:5<"] = "laser_Right_ember",
		[">19:13<"] = "platelaser_ember",
		[">14:11<"] = "platelaser_red",
		[">21:1<"] = "laser_Down_ember",
		[">11:11<"] = "zzzglass",
		[">11:2<"] = "zzzglass",
		[">23:13<"] = "gplate1",
		[">11:12<"] = "zzzglass",
		[">15:2<"] = "laser_Right_ember",
		[">11:5<"] = "zzzglass",
		[">11:10<"] = "zzzglass",
		[">16:6<"] = "laser_Up_ember",
		[">15:1<"] = "laser_Down_red",
		[">14:12<"] = "gplate1",
		[">19:12<"] = "platelaser_blue"
	                },
	["reqballs"] = 11,
	["tools"] = {
		["plate2"] = 100,
		["plate1"] = 100,
		["trash"] = 0,
		["barrier"] = 0
	            },
	["missionnum"] = 1,
	["objects"] = {
		[14] = {
			["y"] = 12,
			["x"] = 17,
			["kind"] = "ghostred",
			["dir"] = "E"
		       },
		[2] = {
			["y"] = 2,
			["x"] = 3,
			["kind"] = "ball",
			["dir"] = "U"
		      },
		[5] = {
			["y"] = 2,
			["x"] = 6,
			["kind"] = "ball",
			["dir"] = "U"
		      },
		[12] = {
			["y"] = 1,
			["x"] = 2,
			["kind"] = "ball",
			["dir"] = "E"
		       },
		[11] = {
			["y"] = 9,
			["x"] = 2,
			["kind"] = "ball",
			["dir"] = "E"
		       },
		[4] = {
			["y"] = 4,
			["x"] = 7,
			["kind"] = "ball",
			["dir"] = "U"
		      },
		[10] = {
			["y"] = 7,
			["x"] = 7,
			["kind"] = "ball",
			["dir"] = "U"
		       },
		[9] = {
			["y"] = 5,
			["x"] = 5,
			["kind"] = "ball",
			["dir"] = "U"
		      },
		[16] = {
			["y"] = 12,
			["x"] = 23,
			["kind"] = "ghostblue",
			["dir"] = "E"
		       },
		[8] = {
			["y"] = 7,
			["x"] = 3,
			["kind"] = "ball",
			["dir"] = "U"
		      },
		[13] = {
			["y"] = 13,
			["x"] = 15,
			["kind"] = "ghostgreen",
			["dir"] = "E"
		       },
		[3] = {
			["y"] = 4,
			["x"] = 4,
			["kind"] = "ball",
			["dir"] = "U"
		      },
		[7] = {
			["y"] = 2,
			["x"] = 8,
			["kind"] = "ball",
			["dir"] = "U"
		      },
		[1] = {
			["y"] = 13,
			["x"] = 11,
			["kind"] = "ghostblue",
			["dir"] = "U"
		      },
		[15] = {
			["y"] = 13,
			["x"] = 20,
			["kind"] = "ghostamber",
			["dir"] = "E"
		       },
		[6] = {
			["y"] = 7,
			["x"] = 5,
			["kind"] = "ball",
			["dir"] = "U"
		      }
	              }
       }


ret2 = {
	["tab"] = "plates",
	["strip"] = {
		["plates"] = {
			["tile"] = "zzzglass"
		             },
		["exits"] = {
			["tile"] = "a_exit"
		            },
		["wall"] = {
			["cstrip"] = "modern",
			["tile"] = "pz_wall_modern_nw"
		           },
		["floor"] = {
			["cstrip"] = "modern",
			["tile"] = "pz_floor_modern_bluegrey"
		            },
		["lasers"] = {
			["tile"] = "laser_Up_blue"
		             }
	            },
	["odir"] = 3
       }




return ret1, ret2


