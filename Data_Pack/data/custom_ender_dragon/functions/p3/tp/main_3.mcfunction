tag @s add current_main
tag @e[type=marker,tag=tp,distance=0.1..,sort=random,limit=1] add tp_marked
execute as @e[type=marker,tag=tp_marked] run tp @a[tag=current_main,limit=1] @s
kill @e[type=marker,tag=tp_marked]
tag @s remove current_main

playsound minecraft:entity.enderman.teleport master @a ~ ~ ~
particle minecraft:reverse_portal ~ ~0.2 ~ 0.5 0.5 0.5 10 500 force @a