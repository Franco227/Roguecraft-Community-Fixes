summon minecraft:shulker_bullet ~1 ~0.5 ~-1 {NoGravity:true,Steps:2,Tags:['no_target']}
summon minecraft:shulker_bullet ~1 ~0.25 ~1 {NoGravity:true,Steps:2,Tags:['no_target']}
tag @s add current_main
execute as @e[type=minecraft:shulker_bullet,tag=no_target] run data modify entity @s Target set from entity @a[tag=current_main,limit=1] UUID
tag @e remove current_main
tag @e remove no_target