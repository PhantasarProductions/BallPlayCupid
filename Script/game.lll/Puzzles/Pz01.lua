--[[
	BallPlay Cupid
	Puzzle #1
	
	
	
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
Version: 16.04.08
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
	["_AUTHOR"] = "Jeroen Petrus Broks",
	["partime"] = 120,
	["floors"] = {
		["\62\49\50\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\50\49\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\53\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\51\58\49\49\60"] = "pz_floor_desert_des_sand",
		["\62\49\57\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\50\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\56\58\49\48\60"] = "pz_floor_desert_des_sand",
		["\62\49\54\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\49\48\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\50\49\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\49\52\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\55\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\51\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\56\58\49\49\60"] = "pz_floor_desert_des_sand",
		["\62\49\55\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\50\49\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\56\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\55\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\50\50\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\50\51\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\50\48\58\49\48\60"] = "pz_floor_desert_des_sand",
		["\62\49\54\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\49\55\58\57\60"] = "pz_floor_desert_des_sand",
		["\62\50\51\58\49\49\60"] = "pz_floor_desert_des_sand",
		["\62\50\48\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\48\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\54\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\51\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\50\58\49\48\60"] = "pz_floor_desert_des_sand",
		["\62\49\50\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\55\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\49\57\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\53\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\55\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\57\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\55\58\49\49\60"] = "pz_floor_desert_des_sand",
		["\62\49\50\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\50\50\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\55\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\57\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\50\51\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\54\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\55\58\49\48\60"] = "pz_floor_desert_des_sand",
		["\62\53\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\53\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\50\51\58\49\48\60"] = "pz_floor_desert_des_sand",
		["\62\49\49\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\50\50\58\49\49\60"] = "pz_floor_desert_des_sand",
		["\62\50\48\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\51\58\57\60"] = "pz_floor_desert_des_sand",
		["\62\49\55\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\53\58\49\49\60"] = "pz_floor_desert_des_sand",
		["\62\50\51\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\50\58\49\49\60"] = "pz_floor_desert_des_sand",
		["\62\51\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\49\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\49\53\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\49\55\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\50\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\49\53\58\49\48\60"] = "pz_floor_desert_des_sand",
		["\62\49\51\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\49\49\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\49\53\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\54\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\54\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\50\51\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\55\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\50\50\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\53\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\50\50\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\57\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\53\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\50\48\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\54\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\49\53\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\52\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\51\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\53\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\57\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\52\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\50\50\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\56\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\52\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\55\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\52\58\49\49\60"] = "pz_floor_desert_des_sand",
		["\62\49\48\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\50\50\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\49\52\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\49\52\58\49\48\60"] = "pz_floor_desert_des_sand",
		["\62\49\51\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\49\48\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\50\51\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\50\48\58\57\60"] = "pz_floor_desert_des_sand",
		["\62\49\57\58\49\49\60"] = "pz_floor_desert_des_sand",
		["\62\49\52\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\50\50\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\51\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\54\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\57\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\51\58\49\48\60"] = "pz_floor_desert_des_sand",
		["\62\50\50\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\49\54\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\57\58\49\48\60"] = "pz_floor_desert_des_sand",
		["\62\56\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\50\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\52\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\56\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\49\57\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\50\49\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\49\53\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\49\52\58\57\60"] = "pz_floor_desert_des_sand",
		["\62\49\57\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\56\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\55\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\55\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\51\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\50\49\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\52\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\57\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\49\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\51\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\50\48\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\50\50\58\57\60"] = "pz_floor_desert_des_sand",
		["\62\56\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\49\51\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\50\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\50\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\51\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\57\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\50\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\50\49\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\55\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\49\48\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\50\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\56\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\57\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\49\55\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\50\48\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\57\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\49\50\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\49\56\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\52\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\56\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\55\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\54\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\49\49\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\50\48\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\56\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\49\53\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\49\49\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\49\57\58\57\60"] = "pz_floor_desert_des_sand",
		["\62\49\49\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\50\48\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\49\50\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\50\51\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\53\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\54\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\54\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\50\51\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\49\51\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\54\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\50\51\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\53\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\54\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\56\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\51\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\49\50\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\54\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\48\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\57\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\50\48\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\53\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\50\48\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\56\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\49\57\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\49\49\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\56\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\50\58\57\60"] = "pz_floor_desert_des_sand",
		["\62\49\54\58\49\49\60"] = "pz_floor_desert_des_sand",
		["\62\56\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\52\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\50\49\58\57\60"] = "pz_floor_desert_des_sand",
		["\62\49\52\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\49\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\53\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\48\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\54\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\52\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\55\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\49\56\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\52\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\54\58\49\48\60"] = "pz_floor_desert_des_sand",
		["\62\53\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\55\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\50\50\58\49\48\60"] = "pz_floor_desert_des_sand",
		["\62\49\57\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\57\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\50\49\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\48\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\58\49\49\60"] = "pz_floor_desert_des_sand",
		["\62\50\51\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\49\54\58\57\60"] = "pz_floor_desert_des_sand",
		["\62\49\49\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\50\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\51\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\56\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\56\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\48\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\49\54\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\53\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\57\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\54\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\50\49\58\49\49\60"] = "pz_floor_desert_des_sand",
		["\62\49\53\58\57\60"] = "pz_floor_desert_des_sand",
		["\62\53\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\51\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\58\57\60"] = "pz_floor_desert_des_sand",
		["\62\49\50\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\58\49\48\60"] = "pz_floor_desert_des_sand",
		["\62\49\54\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\50\51\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\49\54\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\54\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\49\52\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\49\51\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\57\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\49\52\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\53\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\50\51\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\50\48\58\49\49\60"] = "pz_floor_desert_des_sand",
		["\62\49\48\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\49\53\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\48\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\57\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\55\58\53\60"] = "pz_floor_desert_des_sand",
		["\62\50\50\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\49\51\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\56\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\50\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\49\55\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\50\51\58\57\60"] = "pz_floor_desert_des_sand",
		["\62\49\52\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\49\55\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\55\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\49\52\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\49\56\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\49\56\58\57\60"] = "pz_floor_desert_des_sand",
		["\62\50\48\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\50\58\49\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\56\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\49\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\49\51\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\49\57\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\49\49\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\56\58\56\60"] = "pz_floor_desert_des_sand",
		["\62\51\58\49\60"] = "pz_floor_desert_des_sand",
		["\62\49\58\49\51\60"] = "pz_floor_desert_des_sand",
		["\62\50\48\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\49\55\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\49\54\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\56\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\49\52\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\50\49\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\50\50\58\50\60"] = "pz_floor_desert_des_sand",
		["\62\50\49\58\49\48\60"] = "pz_floor_desert_des_sand",
		["\62\49\50\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\52\58\54\60"] = "pz_floor_desert_des_sand",
		["\62\50\50\58\52\60"] = "pz_floor_desert_des_sand",
		["\62\52\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\57\58\51\60"] = "pz_floor_desert_des_sand",
		["\62\50\49\58\55\60"] = "pz_floor_desert_des_sand",
		["\62\50\49\58\49\50\60"] = "pz_floor_desert_des_sand",
		["\62\50\49\58\49\60"] = "pz_floor_desert_des_sand"
	             },
	["reqballs"] = 11,
	["_LICENSE"] = "\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\84\104\105\115\32\102\105\108\101\32\105\115\32\102\114\101\101\32\115\111\102\116\119\97\114\101\58\32\121\111\117\32\99\97\110\32\114\101\100\105\115\116\114\105\98\117\116\101\32\105\116\32\97\110\100\47\111\114\32\109\111\100\105\102\121\10\9\9\105\116\32\117\110\100\101\114\32\116\104\101\32\116\101\114\109\115\32\111\102\32\116\104\101\32\71\78\85\32\71\101\110\101\114\97\108\32\80\117\98\108\105\99\32\76\105\99\101\110\115\101\32\97\115\32\112\117\98\108\105\115\104\101\100\32\98\121\10\9\9\116\104\101\32\70\114\101\101\32\83\111\102\116\119\97\114\101\32\70\111\117\110\100\97\116\105\111\110\44\32\101\105\116\104\101\114\32\118\101\114\115\105\111\110\32\51\32\111\102\32\116\104\101\32\76\105\99\101\110\115\101\44\32\111\114\10\9\9\40\97\116\32\121\111\117\114\32\111\112\116\105\111\110\41\32\97\110\121\32\108\97\116\101\114\32\118\101\114\115\105\111\110\46\10\9\9\10\9\9\84\104\105\115\32\112\114\111\103\114\97\109\32\105\115\32\100\105\115\116\114\105\98\117\116\101\100\32\105\110\32\116\104\101\32\104\111\112\101\32\116\104\97\116\32\105\116\32\119\105\108\108\32\98\101\32\117\115\101\102\117\108\44\10\9\9\98\117\116\32\87\73\84\72\79\85\84\32\65\78\89\32\87\65\82\82\65\78\84\89\59\32\119\105\116\104\111\117\116\32\101\118\101\110\32\116\104\101\32\105\109\112\108\105\101\100\32\119\97\114\114\97\110\116\121\32\111\102\10\9\9\77\69\82\67\72\65\78\84\65\66\73\76\73\84\89\32\111\114\32\70\73\84\78\69\83\83\32\70\79\82\32\65\32\80\65\82\84\73\67\85\76\65\82\32\80\85\82\80\79\83\69\46\32\32\83\101\101\32\116\104\101\10\9\9\71\78\85\32\71\101\110\101\114\97\108\32\80\117\98\108\105\99\32\76\105\99\101\110\115\101\32\102\111\114\32\109\111\114\101\32\100\101\116\97\105\108\115\46\10\9\9\89\111\117\32\115\104\111\117\108\100\32\104\97\118\101\32\114\101\99\101\105\118\101\100\32\97\32\99\111\112\121\32\111\102\32\116\104\101\32\71\78\85\32\71\101\110\101\114\97\108\32\80\117\98\108\105\99\32\76\105\99\101\110\115\101\10\9\9\97\108\111\110\103\32\119\105\116\104\32\116\104\105\115\32\112\114\111\103\114\97\109\46\32\32\73\102\32\110\111\116\44\32\115\101\101\32\60\104\116\116\112\58\47\47\119\119\119\46\103\110\117\46\111\114\103\47\108\105\99\101\110\115\101\115\47\62\46\10",
	["mission"] = "Normal",
	["walls"] = {
		["\62\50\49\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\52\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\53\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\51\58\49\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\57\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\50\58\49\50\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\54\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\48\58\53\60"] = "pz_wall_desert_des_cactus",
		["\62\49\52\58\51\60"] = "pz_wall_desert_des_cactus",
		["\62\56\58\52\60"] = "pz_wall_desert_des_cactus",
		["\62\49\56\58\49\49\60"] = "pz_wall_desert_des_cactus",
		["\62\49\50\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\50\58\52\60"] = "pz_wall_desert_des_cactus",
		["\62\55\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\50\58\53\60"] = "pz_wall_desert_des_cactus",
		["\62\50\51\58\51\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\48\58\49\48\60"] = "pz_wall_desert_des_cactus",
		["\62\50\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\51\58\49\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\48\58\51\60"] = "pz_wall_desert_des_cactus",
		["\62\50\58\51\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\51\58\56\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\54\58\51\60"] = "pz_wall_desert_des_cactus",
		["\62\49\50\58\53\60"] = "pz_wall_desert_des_cactus",
		["\62\49\48\58\52\60"] = "pz_wall_desert_des_cactus",
		["\62\56\58\50\60"] = "pz_wall_desert_des_cactus",
		["\62\57\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\57\58\49\50\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\48\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\57\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\50\58\51\60"] = "pz_wall_desert_des_cactus",
		["\62\49\56\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\51\58\49\50\60"] = "pz_wall_desert_des_pyramid",
		["\62\54\58\51\60"] = "pz_wall_desert_des_cactus",
		["\62\49\55\58\49\48\60"] = "pz_wall_desert_des_cactus",
		["\62\49\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\56\58\51\60"] = "pz_wall_desert_des_cactus",
		["\62\49\49\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\48\58\50\60"] = "pz_wall_desert_des_cactus",
		["\62\51\58\57\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\57\58\57\60"] = "pz_wall_desert_des_cactus",
		["\62\49\53\58\49\49\60"] = "pz_wall_desert_des_cactus",
		["\62\50\51\58\49\51\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\49\58\49\50\60"] = "pz_wall_desert_des_pyramid",
		["\62\51\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\54\58\57\60"] = "pz_wall_desert_des_cactus",
		["\62\50\51\58\56\60"] = "pz_wall_desert_des_pyramid",
		["\62\53\58\55\60"] = "pz_wall_desert_des_pyramid",
		["\62\54\58\50\60"] = "pz_wall_desert_des_cactus",
		["\62\53\58\54\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\49\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\51\58\54\60"] = "pz_wall_desert_des_pyramid",
		["\62\54\58\49\50\60"] = "pz_wall_desert_des_pyramid",
		["\62\54\58\55\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\51\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\54\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\51\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\53\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\52\58\53\60"] = "pz_wall_desert_des_cactus",
		["\62\56\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\51\58\53\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\57\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\53\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\52\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\52\58\49\50\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\58\57\60"] = "pz_wall_desert_des_pyramid",
		["\62\52\58\53\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\58\49\50\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\50\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\56\58\51\60"] = "pz_wall_desert_des_cactus",
		["\62\49\56\58\50\60"] = "pz_wall_desert_des_cactus",
		["\62\49\52\58\49\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\48\58\49\50\60"] = "pz_wall_desert_des_pyramid",
		["\62\51\58\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\52\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\48\58\56\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\51\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\50\58\52\60"] = "pz_wall_desert_des_cactus",
		["\62\49\51\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\58\57\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\51\58\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\58\49\48\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\54\58\50\60"] = "pz_wall_desert_des_cactus",
		["\62\50\51\58\53\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\48\58\50\60"] = "pz_wall_desert_des_cactus",
		["\62\49\52\58\50\60"] = "pz_wall_desert_des_cactus",
		["\62\49\52\58\56\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\51\58\49\50\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\50\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\52\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\49\58\49\49\60"] = "pz_wall_desert_des_cactus",
		["\62\50\50\58\51\60"] = "pz_wall_desert_des_cactus",
		["\62\51\58\49\50\60"] = "pz_wall_desert_des_pyramid",
		["\62\53\58\49\50\60"] = "pz_wall_desert_des_pyramid",
		["\62\54\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\48\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\57\58\56\60"] = "pz_wall_desert_des_pyramid",
		["\62\52\58\50\60"] = "pz_wall_desert_des_cactus",
		["\62\50\50\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\51\58\49\48\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\52\58\52\60"] = "pz_wall_desert_des_cactus",
		["\62\50\51\58\50\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\53\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\51\58\57\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\54\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\50\58\50\60"] = "pz_wall_desert_des_cactus",
		["\62\56\58\49\50\60"] = "pz_wall_desert_des_pyramid",
		["\62\54\58\56\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\58\50\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\58\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\52\58\49\50\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\55\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\52\58\54\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\49\58\56\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\51\58\49\48\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\58\49\51\60"] = "pz_wall_desert_des_pyramid",
		["\62\56\58\56\60"] = "pz_wall_desert_des_pyramid",
		["\62\51\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\48\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\56\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\52\58\57\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\54\58\52\60"] = "pz_wall_desert_des_cactus",
		["\62\49\50\58\54\60"] = "pz_wall_desert_des_cactus",
		["\62\56\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\52\58\49\48\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\50\58\50\60"] = "pz_wall_desert_des_cactus",
		["\62\49\50\58\56\60"] = "pz_wall_desert_des_pyramid",
		["\62\55\58\56\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\48\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\58\49\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\55\58\49\50\60"] = "pz_wall_desert_des_pyramid",
		["\62\55\58\49\52\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\51\58\55\60"] = "pz_wall_desert_des_pyramid",
		["\62\49\55\58\49\60"] = "pz_wall_desert_des_pyramid",
		["\62\50\49\58\49\60"] = "pz_wall_desert_des_pyramid"
	            },
	["title"] = "It came from the desert",
	["tools"] = {
		["plate2"] = 100,
		["plate1"] = 100,
		["trash"] = 100,
		["barrier"] = 0
	            },
	["obstacles"] = {
		["\62\55\58\55\60"] = "zplate2",
		["\62\50\58\49\48\60"] = "a_exit",
		["\62\49\57\58\49\51\60"] = "zplate1",
		["\62\50\58\49\51\60"] = "zplate2"
	                },
	["missionum"] = 1,
	["missionnum"] = 1,
	["objects"] = {
		[2] = {
			["y"] = 2,
			["x"] = 5,
			["dir"] = "D",
			["kind"] = "ball"
		      },
		[5] = {
			["y"] = 2,
			["x"] = 11,
			["dir"] = "D",
			["kind"] = "ball"
		      },
		[11] = {
			["y"] = 10,
			["x"] = 19,
			["dir"] = "D",
			["kind"] = "ball"
		       },
		[4] = {
			["y"] = 2,
			["x"] = 9,
			["dir"] = "D",
			["kind"] = "ball"
		      },
		[10] = {
			["y"] = 2,
			["x"] = 21,
			["dir"] = "D",
			["kind"] = "ball"
		       },
		[9] = {
			["y"] = 2,
			["x"] = 19,
			["dir"] = "D",
			["kind"] = "ball"
		      },
		[8] = {
			["y"] = 2,
			["x"] = 17,
			["dir"] = "D",
			["kind"] = "ball"
		      },
		[3] = {
			["y"] = 2,
			["x"] = 7,
			["dir"] = "D",
			["kind"] = "ball"
		      },
		[7] = {
			["y"] = 2,
			["x"] = 15,
			["dir"] = "D",
			["kind"] = "ball"
		      },
		[1] = {
			["y"] = 2,
			["x"] = 3,
			["dir"] = "D",
			["kind"] = "ball"
		      },
		[6] = {
			["y"] = 2,
			["x"] = 13,
			["dir"] = "D",
			["kind"] = "ball"
		      }
	              }
       }


ret2 = {
	["strip"] = {
		["plates"] = {
			["tile"] = "zplate2"
		             },
		["exits"] = {
			["tile"] = "a_exit"
		            },
		["wall"] = {
			["cstrip"] = "desert",
			["tile"] = "pz_wall_desert_des_cactus"
		           },
		["lasers"] = {},
		["floor"] = {
			["cstrip"] = "desert",
			["tile"] = "pz_floor_desert_des_sand"
		            },
		["breakblocks"] = {}
	            },
	["tab"] = "settings"
       }




return ret1, ret2


