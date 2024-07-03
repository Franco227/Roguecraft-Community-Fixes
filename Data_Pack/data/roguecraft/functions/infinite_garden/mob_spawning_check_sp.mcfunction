execute if score @s infinite_garden_marker_type < @e[type=marker,tag=master,limit=1] infinite_garden_skillpoint_phase run tag @s add success
execute in roguecraft:infinite_garden positioned 0 64 0 if entity @s[distance=..100] run tag @s remove success
execute if score @s[tag=success] infinite_garden_marker_type matches 0 run summon chicken
execute if score @s[tag=success] infinite_garden_marker_type matches 1 run summon pig
execute if score @s[tag=success] infinite_garden_marker_type matches 2 run summon sheep
execute if score @s[tag=success] infinite_garden_marker_type matches 3 run summon cow
execute if score @s[tag=success] infinite_garden_marker_type matches 4 run summon llama
execute if score @s[tag=success] infinite_garden_marker_type matches 5 run summon fox
execute if score @s[tag=success] infinite_garden_marker_type matches 6 run summon panda
execute if score @s[tag=success] infinite_garden_marker_type matches 7 run summon sniffer
execute if score @s[tag=success] infinite_garden_marker_type matches 8 run summon cat
execute if score @s[tag=success] infinite_garden_marker_type matches 9 run function roguecraft:infinite_garden/mob_spawning_wolf
execute if entity @s[tag=success] run kill @s