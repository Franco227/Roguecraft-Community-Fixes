tag @s add current_main
summon minecraft:marker 0 64 0 {Tags:["item_force"]}
execute as @e[type=minecraft:marker,tag=item_force] at @s facing entity @e[type=minecraft:item,tag=current_main] feet run tp ^ ^ ^1
execute as @e[type=minecraft:marker,tag=item_force] at @s run tp ~ 0 ~
execute store result entity @s Motion[0] double 2 run data get entity @e[type=minecraft:marker,tag=item_force,limit=1] Pos[0] 1
execute store result entity @s Motion[2] double 2 run data get entity @e[type=minecraft:marker,tag=item_force,limit=1] Pos[2] 1
kill @e[type=minecraft:marker,tag=item_force]
tag @s remove current_main