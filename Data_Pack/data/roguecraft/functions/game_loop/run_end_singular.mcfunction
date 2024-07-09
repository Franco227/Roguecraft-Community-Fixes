execute unless score @e[type=minecraft:marker,tag=master,limit=1] beam_amount > @e[type=minecraft:marker,tag=master,limit=1] beam_max run function roguecraft:infinite_garden/prepare_marker_1

execute if entity @s[tag=hub,tag=init_player] run advancement grant @s only roguecraft:infinite_garden/infinite_garden_void
execute if entity @s[tag=garden,tag=init_player] run advancement grant @s only roguecraft:infinite_garden/infinite_garden_void

effect clear @s
execute in roguecraft:infinite_garden run tp @s[tag=init_player] 0 63 0 90 0
execute in roguecraft:infinite_garden run tp @s[tag=!init_player] 0 5000 0 90 0
gamemode adventure @s
effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:speed infinite 7 true
effect give @s minecraft:saturation infinite 0 true
tag @s add hub
team join not_ready @s
scoreboard players set @s deaths 0

execute as @e[type=minecraft:marker,tag=id] run function roguecraft:set_mana_bar with entity @s data
execute as @s run function roguecraft:infinite_garden/hub/set_inventory

xp set @s 0 levels
xp set @s 0 points
scoreboard players set @s level_current 0
scoreboard players set @s level_max 0

scoreboard players set @s dirt_timer 0
scoreboard players set @s liquid_timer 0
scoreboard players set @s lava_timer 0

scoreboard players reset @s stronghold_location
scoreboard players reset @s restart_run

execute as @e[type=minecraft:marker,tag=id] run function roguecraft:ability/dirt_walker/disable_bossbar with entity @s data
execute as @e[type=minecraft:marker,tag=id] run function roguecraft:ability/liquid_walker/disable_bossbar with entity @s data
execute as @e[type=minecraft:marker,tag=id] run function roguecraft:ability/lava_walker/disable_bossbar with entity @s data