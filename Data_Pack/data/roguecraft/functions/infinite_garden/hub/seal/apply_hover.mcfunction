$execute as @e[type=minecraft:item_display,tag=obelisk,sort=nearest,distance=..4,limit=1] at @s run tp ~ ~$(real_speed) ~
$execute as @e[type=minecraft:item_display,tag=obelisk,tag=fatum] at @s run tp ~ ~$(real_speed_negative) ~
execute as @e[type=minecraft:item_display,tag=obelisk,tag=fatum] at @s run tp @e[tag=corpus] 6.5 ~ 24.5
execute as @e[type=minecraft:item_display,tag=obelisk,tag=fatum] at @s run tp @e[tag=sol] -5.5 ~ 24.5
execute as @e[type=minecraft:item_display,tag=obelisk,tag=fatum] at @s run tp @e[tag=custos] 10.5 ~ 30.5
execute as @e[type=minecraft:item_display,tag=obelisk,tag=fatum] at @s run tp @e[tag=aqua] -9.5 ~ 30.5
execute as @e[type=minecraft:item_display,tag=obelisk,tag=fatum] at @s run tp @e[tag=tyrannus] 8.5 ~ 37.5
execute as @e[type=minecraft:item_display,tag=obelisk,tag=fatum] at @s run tp @e[tag=anima] -7.5 ~ 37.5