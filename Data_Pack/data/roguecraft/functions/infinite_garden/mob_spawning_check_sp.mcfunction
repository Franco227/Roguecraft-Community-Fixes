execute if score @s infinite_garden_marker_type < @e[type=minecraft:marker,tag=master,limit=1] infinite_garden_skillpoint_phase run tag @s add success
execute in roguecraft:infinite_garden positioned 0 64 0 if entity @s[distance=..100] run tag @s remove success
execute if score @s[tag=success] infinite_garden_marker_type matches 0 run summon minecraft:chicken
execute if score @s[tag=success] infinite_garden_marker_type matches 1 run summon minecraft:pig
execute if score @s[tag=success] infinite_garden_marker_type matches 2 run summon minecraft:sheep
execute if score @s[tag=success] infinite_garden_marker_type matches 3 run summon minecraft:cow
execute if score @s[tag=success] infinite_garden_marker_type matches 4 run summon minecraft:llama
execute if score @s[tag=success] infinite_garden_marker_type matches 5 run summon minecraft:fox
execute if score @s[tag=success] infinite_garden_marker_type matches 6 run summon minecraft:panda
execute if score @s[tag=success] infinite_garden_marker_type matches 7 run summon minecraft:sniffer
execute if score @s[tag=success] infinite_garden_marker_type matches 8 run summon minecraft:cat
execute if score @s[tag=success] infinite_garden_marker_type matches 9 run function roguecraft:infinite_garden/mob_spawning_wolf
execute if entity @s[tag=success] run kill @s