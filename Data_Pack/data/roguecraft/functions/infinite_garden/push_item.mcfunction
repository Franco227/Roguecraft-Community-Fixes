tag @s add current_main
summon marker 0 64 0 {Tags:["item_force"]}
execute as @e[tag=item_force] at @s facing entity @e[type=item,tag=current_main] feet run tp ^ ^ ^1
execute as @e[tag=item_force] at @s run tp ~ 0 ~
execute store result entity @s Motion[0] double 2 run data get entity @e[tag=item_force,limit=1] Pos[0] 1
execute store result entity @s Motion[2] double 2 run data get entity @e[tag=item_force,limit=1] Pos[2] 1
kill @e[type=marker,tag=item_force]
tag @s remove current_main