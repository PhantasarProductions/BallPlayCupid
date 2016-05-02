--[[
	BallPlay Cupid
	Puzzle 29
	
	
	
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
		[2] = 15,
		[1] = 25
	             },
	["partime"] = 0,
	["floors"] = {
		[">5:7<"] = "pz_floor_horror house_mvloer",
		[">5:6<"] = "pz_floor_horror house_mvloer",
		[">13:7<"] = "pz_floor_horror house_mvloer",
		[">1:6<"] = "pz_floor_horror house_mvloer",
		[">6:7<"] = "pz_floor_horror house_mvloer",
		[">13:4<"] = "pz_floor_horror house_mvloer",
		[">14:4<"] = "pz_floor_horror house_mvloer",
		[">1:4<"] = "pz_floor_horror house_mvloer",
		[">13:5<"] = "pz_floor_horror house_mvloer",
		[">14:5<"] = "pz_floor_horror house_mvloer",
		[">10:5<"] = "pz_floor_horror house_mvloer",
		[">10:11<"] = "pz_floor_horror house_mvloer",
		[">3:5<"] = "pz_floor_horror house_mvloer",
		[">5:8<"] = "pz_floor_horror house_mvloer",
		[">3:3<"] = "pz_floor_horror house_mvloer",
		[">8:7<"] = "pz_floor_horror house_mvloer",
		[">7:11<"] = "pz_floor_horror house_mvloer",
		[">8:11<"] = "pz_floor_horror house_mvloer",
		[">3:7<"] = "pz_floor_horror house_mvloer",
		[">9:13<"] = "pz_floor_horror house_mvloer",
		[">8:6<"] = "pz_floor_horror house_mvloer",
		[">3:8<"] = "pz_floor_horror house_mvloer",
		[">4:5<"] = "pz_floor_horror house_mvloer",
		[">13:6<"] = "pz_floor_horror house_mvloer",
		[">11:6<"] = "pz_floor_horror house_mvloer",
		[">16:7<"] = "pz_floor_horror house_mvloer",
		[">17:5<"] = "pz_floor_horror house_mvloer",
		[">5:3<"] = "pz_floor_horror house_mvloer",
		[">4:4<"] = "pz_floor_horror house_mvloer",
		[">7:13<"] = "pz_floor_horror house_mvloer",
		[">9:9<"] = "pz_floor_horror house_mvloer",
		[">10:12<"] = "pz_floor_horror house_mvloer",
		[">3:6<"] = "pz_floor_horror house_mvloer",
		[">14:3<"] = "pz_floor_horror house_mvloer",
		[">16:6<"] = "pz_floor_horror house_mvloer",
		[">3:4<"] = "pz_floor_horror house_mvloer",
		[">2:3<"] = "pz_floor_horror house_mvloer",
		[">8:13<"] = "pz_floor_horror house_mvloer",
		[">2:5<"] = "pz_floor_horror house_mvloer",
		[">6:6<"] = "pz_floor_horror house_mvloer",
		[">7:7<"] = "pz_floor_horror house_mvloer",
		[">10:7<"] = "pz_floor_horror house_mvloer",
		[">7:12<"] = "pz_floor_horror house_mvloer",
		[">16:8<"] = "pz_floor_horror house_mvloer",
		[">13:3<"] = "pz_floor_horror house_mvloer",
		[">12:4<"] = "pz_floor_horror house_mvloer",
		[">15:6<"] = "pz_floor_horror house_mvloer",
		[">10:13<"] = "pz_floor_horror house_mvloer",
		[">12:5<"] = "pz_floor_horror house_mvloer",
		[">17:7<"] = "pz_floor_horror house_mvloer",
		[">17:4<"] = "pz_floor_horror house_mvloer",
		[">9:10<"] = "pz_floor_horror house_mvloer",
		[">2:8<"] = "pz_floor_horror house_mvloer",
		[">16:5<"] = "pz_floor_horror house_mvloer",
		[">14:8<"] = "pz_floor_horror house_mvloer",
		[">9:12<"] = "pz_floor_horror house_mvloer",
		[">9:5<"] = "pz_floor_horror house_mvloer",
		[">15:8<"] = "pz_floor_horror house_mvloer",
		[">15:4<"] = "pz_floor_horror house_mvloer",
		[">9:7<"] = "pz_floor_horror house_mvloer",
		[">12:8<"] = "pz_floor_horror house_mvloer",
		[">15:3<"] = "pz_floor_horror house_mvloer",
		[">12:3<"] = "pz_floor_horror house_mvloer",
		[">15:7<"] = "pz_floor_horror house_mvloer",
		[">9:8<"] = "pz_floor_horror house_mvloer",
		[">5:5<"] = "pz_floor_horror house_mvloer",
		[">17:8<"] = "pz_floor_horror house_mvloer",
		[">4:8<"] = "pz_floor_horror house_mvloer",
		[">7:6<"] = "pz_floor_horror house_mvloer",
		[">12:7<"] = "pz_floor_horror house_mvloer",
		[">6:3<"] = "pz_floor_horror house_mvloer",
		[">10:6<"] = "pz_floor_horror house_mvloer",
		[">14:6<"] = "pz_floor_horror house_mvloer",
		[">2:7<"] = "pz_floor_horror house_mvloer",
		[">12:6<"] = "pz_floor_horror house_mvloer",
		[">16:3<"] = "pz_floor_horror house_mvloer",
		[">5:4<"] = "pz_floor_horror house_mvloer",
		[">1:5<"] = "pz_floor_horror house_mvloer",
		[">4:7<"] = "pz_floor_horror house_mvloer",
		[">1:3<"] = "pz_floor_horror house_mvloer",
		[">6:5<"] = "pz_floor_horror house_mvloer",
		[">4:6<"] = "pz_floor_horror house_mvloer",
		[">11:7<"] = "pz_floor_horror house_mvloer",
		[">11:13<"] = "pz_floor_horror house_mvloer",
		[">2:4<"] = "pz_floor_horror house_mvloer",
		[">17:3<"] = "pz_floor_horror house_mvloer",
		[">8:12<"] = "pz_floor_horror house_mvloer",
		[">8:5<"] = "pz_floor_horror house_mvloer",
		[">1:7<"] = "pz_floor_horror house_mvloer",
		[">15:5<"] = "pz_floor_horror house_mvloer",
		[">16:4<"] = "pz_floor_horror house_mvloer",
		[">13:8<"] = "pz_floor_horror house_mvloer",
		[">7:5<"] = "pz_floor_horror house_mvloer",
		[">17:6<"] = "pz_floor_horror house_mvloer",
		[">6:8<"] = "pz_floor_horror house_mvloer",
		[">9:11<"] = "pz_floor_horror house_mvloer",
		[">11:12<"] = "pz_floor_horror house_mvloer",
		[">11:11<"] = "pz_floor_horror house_mvloer",
		[">11:5<"] = "pz_floor_horror house_mvloer",
		[">4:3<"] = "pz_floor_horror house_mvloer",
		[">6:4<"] = "pz_floor_horror house_mvloer",
		[">1:8<"] = "pz_floor_horror house_mvloer",
		[">2:6<"] = "pz_floor_horror house_mvloer",
		[">14:7<"] = "pz_floor_horror house_mvloer"
	             },
	["falling"] = {},
	["ghostwomen"] = {},
	["mission"] = "Color Split",
	["walls"] = {
		[">6:2<"] = "pz_wall_dungeon_backwall2",
		[">8:10<"] = "pz_wall_dungeon_backwall3",
		[">11:1<"] = "pz_wall_dungeon_westwall2",
		[">18:5<"] = "pz_wall_dungeon_eastwall2",
		[">0:1<"] = "pz_wall_dungeon_westwall2",
		[">11:4<"] = "pz_wall_dungeon_backwall2",
		[">12:12<"] = "pz_wall_dungeon_eastwall2",
		[">0:3<"] = "pz_wall_dungeon_westwall2",
		[">0:5<"] = "pz_wall_dungeon_westwall2",
		[">18:4<"] = "pz_wall_dungeon_eastwall2",
		[">7:2<"] = "pz_wall_dungeon_eastwall2",
		[">8:4<"] = "pz_wall_dungeon_backwall2",
		[">10:10<"] = "pz_wall_dungeon_backwall3",
		[">15:2<"] = "pz_wall_dungeon_backwall2",
		[">7:10<"] = "pz_wall_dungeon_backwall2",
		[">7:1<"] = "pz_wall_dungeon_eastwall2",
		[">2:9<"] = "pz_wall_dungeon_southwall2",
		[">5:2<"] = "pz_wall_dungeon_backwall2",
		[">4:9<"] = "pz_wall_dungeon_southwall2",
		[">13:9<"] = "pz_wall_dungeon_southwall2",
		[">12:9<"] = "pz_wall_dungeon_se_bigcorner2",
		[">6:11<"] = "pz_wall_dungeon_westwall2",
		[">6:10<"] = "pz_wall_dungeon_westwall2",
		[">18:2<"] = "pz_wall_dungeon_eastwall2",
		[">0:7<"] = "pz_wall_dungeon_westwall2",
		[">0:2<"] = "pz_wall_dungeon_westwall2",
		[">0:4<"] = "pz_wall_dungeon_westwall2",
		[">6:13<"] = "pz_wall_dungeon_westwall2",
		[">10:8<"] = "pz_wall_dungeon_se_bigcorner2",
		[">10:14<"] = "pz_wall_dungeon_southwall2",
		[">1:9<"] = "pz_wall_dungeon_southwall2",
		[">10:4<"] = "pz_wall_dungeon_backwall2",
		[">16:2<"] = "pz_wall_dungeon_backwall3",
		[">0:6<"] = "pz_wall_dungeon_westwall2",
		[">15:9<"] = "pz_wall_dungeon_southwall2",
		[">9:14<"] = "pz_wall_dungeon_southwall2",
		[">18:6<"] = "pz_wall_dungeon_eastwall2",
		[">9:4<"] = "pz_wall_dungeon_backwall3",
		[">17:2<"] = "pz_wall_dungeon_backwall2",
		[">13:2<"] = "pz_wall_dungeon_backwall2",
		[">11:10<"] = "pz_wall_dungeon_backwall2",
		[">8:14<"] = "pz_wall_dungeon_southwall2",
		[">12:11<"] = "pz_wall_dungeon_eastwall2",
		[">18:7<"] = "pz_wall_dungeon_eastwall2",
		[">14:2<"] = "pz_wall_dungeon_backwall2",
		[">11:2<"] = "pz_wall_dungeon_westwall2",
		[">11:14<"] = "pz_wall_dungeon_southwall2",
		[">18:1<"] = "pz_wall_dungeon_eastwall2",
		[">5:9<"] = "pz_wall_dungeon_southwall2",
		[">7:14<"] = "pz_wall_dungeon_southwall2",
		[">3:2<"] = "pz_wall_dungeon_backwall2",
		[">8:8<"] = "pz_wall_dungeon_sw_bigcorner2",
		[">16:9<"] = "pz_wall_dungeon_southwall2",
		[">4:2<"] = "pz_wall_dungeon_backwall2",
		[">11:8<"] = "pz_wall_dungeon_sw_bigcorner2",
		[">14:9<"] = "pz_wall_dungeon_southwall2",
		[">3:9<"] = "pz_wall_dungeon_southwall2",
		[">18:8<"] = "pz_wall_dungeon_eastwall2",
		[">2:2<"] = "pz_wall_dungeon_backwall3",
		[">1:2<"] = "pz_wall_dungeon_backwall2",
		[">12:10<"] = "pz_wall_dungeon_eastwall2",
		[">7:8<"] = "pz_wall_dungeon_se_bigcorner2",
		[">17:9<"] = "pz_wall_dungeon_southwall2",
		[">0:8<"] = "pz_wall_dungeon_westwall2",
		[">18:3<"] = "pz_wall_dungeon_eastwall2",
		[">6:9<"] = "pz_wall_dungeon_sw_bigcorner2",
		[">12:2<"] = "pz_wall_dungeon_backwall2",
		[">12:13<"] = "pz_wall_dungeon_eastwall2",
		[">7:4<"] = "pz_wall_dungeon_backwall2",
		[">6:12<"] = "pz_wall_dungeon_westwall2"
	            },
	["title"] = "Maniac Mansion",
	["obstacles"] = {
		[">10:5<"] = "bb01",
		[">7:13<"] = "cb_exit",
		[">9:7<"] = "bb01",
		[">11:11<"] = "cg_exit",
		[">10:6<"] = "bb01",
		[">10:7<"] = "bb01",
		[">8:6<"] = "bb01",
		[">9:12<"] = "zzzglass",
		[">11:13<"] = "ce_exit",
		[">8:7<"] = "bb01",
		[">7:11<"] = "cr_exit",
		[">9:5<"] = "bb01",
		[">8:5<"] = "bb01"
	                },
	["reqballs"] = 6,
	["tools"] = {
		["plate2"] = 25,
		["plate1"] = 25,
		["trash"] = 25,
		["barrier"] = 0
	            },
	["missionnum"] = 4,
	["objects"] = {
		[8] = {
			["y"] = 4,
			["x"] = 2,
			["kind"] = "ballred",
			["dir"] = "U"
		      },
		[2] = {
			["y"] = 4,
			["x"] = 5,
			["kind"] = "ballember",
			["dir"] = "D"
		      },
		[5] = {
			["y"] = 7,
			["x"] = 5,
			["kind"] = "ballblue",
			["dir"] = "D"
		      },
		[3] = {
			["y"] = 4,
			["x"] = 13,
			["kind"] = "ballember",
			["dir"] = "D"
		      },
		[7] = {
			["y"] = 7,
			["x"] = 2,
			["kind"] = "ballgreen",
			["dir"] = "E"
		      },
		[1] = {
			["y"] = 7,
			["x"] = 16,
			["kind"] = "ballgreen",
			["dir"] = "D"
		      },
		[4] = {
			["y"] = 7,
			["x"] = 13,
			["kind"] = "ballred",
			["dir"] = "D"
		      },
		[6] = {
			["y"] = 4,
			["x"] = 16,
			["kind"] = "ballblue",
			["dir"] = "D"
		      }
	              }
       }


ret2 = {
	["tab"] = "walls",
	["strip"] = {
		["wall"] = {
			["cstrip"] = "dungeon",
			["tile"] = "pz_wall_dungeon_westwall2"
		           },
		["exits"] = {
			["tile"] = "ce_exit"
		            },
		["plates"] = {
			["tile"] = "zzzglass"
		             },
		["floor"] = {
			["cstrip"] = "horror house",
			["tile"] = "pz_floor_horror house_mvloer"
		            },
		["breakblocks"] = {
			["tile"] = "bb01"
		                  }
	            },
	["odir"] = 4
       }




return ret1, ret2


