execute in roguecraft:infinite_garden positioned 0 63 0 run kill @e[distance=..86]

execute in roguecraft:infinite_garden run tp @a 100 63 0
data merge storage roguecraft:master {cosmic_dome_loaded:1b}
execute in roguecraft:infinite_garden unless loaded 85 0 85 run data merge storage roguecraft:master {cosmic_dome_loaded:0b}
execute in roguecraft:infinite_garden unless loaded -85 0 -85 run data merge storage roguecraft:master {cosmic_dome_loaded:0b}

execute if data storage roguecraft:master {cosmic_dome_loaded:0b} run tellraw @a {"text":"[ERROR] Make sure that the entire Cosmic Dome is loaded, trying again in 5 seconds (execute '/schedule clear roguecraft:settings/kill_hub' to stop this process)","color":"red"}
execute if data storage roguecraft:master {cosmic_dome_loaded:0b} run schedule function roguecraft:settings/125_fix/kill_hub 5s
execute if data storage roguecraft:master {cosmic_dome_loaded:1b} run tellraw @a {"text":"[Cosmic Dome Clear - Done] -> Reloading Hub in 5 seconds; Adjusting broken scoreboard values in 6 seconds","color":"green"}
execute if data storage roguecraft:master {cosmic_dome_loaded:1b} run schedule function roguecraft:settings/125_fix/adjust_scores 6s
execute if data storage roguecraft:master {cosmic_dome_loaded:1b} run reload