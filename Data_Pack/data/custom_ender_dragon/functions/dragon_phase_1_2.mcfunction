execute if score @s dragon_phase matches 1..2 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:5}
execute if score @s dragon_phase matches 1..2 run kill @e[type=minecraft:dragon_fireball]
execute if score @s dragon_phase matches 1..2 in minecraft:the_end positioned 0 100 0 run kill @e[type=minecraft:area_effect_cloud,distance=..300]
execute if score @s dragon_phase matches 2 run scoreboard players add @s dragon_p1t_health 5
execute if score @s dragon_phase matches 2 run execute store result bossbar minecraft:custom_dragon value run scoreboard players get @s dragon_p1t_health
execute if score @s dragon_phase matches 2 run execute at @e[type=minecraft:marker,tag=end_crystal_marker] run particle minecraft:dust{color:[0.73,0.0,1.0],scale:4.0} ~ ~ ~ 2 30 2 1 1 force
