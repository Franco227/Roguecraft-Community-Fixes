summon minecraft:marker ~ ~ ~ {Tags:["current_main","infinite_garden_mob_marker"]}
execute as @e[tag=current_main] run spreadplayers ~ ~ 0 128 false @s
execute positioned 0 64 0 if entity @s[distance=..128] run kill @e[tag=current_main,type=minecraft:marker]

execute as @e[tag=current_main,type=!minecraft:player] at @s if entity @a[distance=..36] run function roguecraft:infinite_garden/mob_spawning_reposition
execute as @e[tag=current_main,type=!minecraft:player] at @s if entity @a[distance=..36] run function roguecraft:infinite_garden/mob_spawning_reposition
execute as @e[tag=current_main,type=!minecraft:player] at @s if entity @a[distance=..36] run function roguecraft:infinite_garden/mob_spawning_reposition
execute as @e[tag=current_main,type=!minecraft:player] at @s if entity @a[distance=..36] run function roguecraft:infinite_garden/mob_spawning_reposition
execute as @e[tag=current_main,type=!minecraft:player] at @s if entity @a[distance=..36] run function roguecraft:infinite_garden/mob_spawning_reposition
execute as @e[tag=current_main,type=!minecraft:player] at @s if entity @a[distance=..36] run kill @s
execute as @e[tag=current_main,type=!minecraft:player] in roguecraft:infinite_garden positioned 0 64 0 if entity @a[distance=..128] run kill @s

execute store result score @e[tag=current_main] infinite_garden_marker_type run random value 0..9

tag @e[tag=current_main] remove current_main