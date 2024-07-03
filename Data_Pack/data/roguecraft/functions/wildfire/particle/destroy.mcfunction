execute positioned ~ ~ ~ run particle minecraft:flame ~ ~ ~ 1.5 1.5 1.5 1 500
execute if entity @s[tag=summon] positioned ~ ~ ~ run particle minecraft:flame ~ ~ ~ 1.5 1.5 1.5 1 500
execute if entity @s[tag=summon] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 0.5
execute if entity @s[tag=summon] positioned ~ ~ ~ run function roguecraft:wildfire/spawn_1

execute if entity @s[tag=pulse] run particle minecraft:explosion ~ ~ ~ 0.1 0.1 0.1 7 3
execute if entity @s[tag=pulse] as @e[type=!slime,type=!item,type=!blaze,distance=..3] run damage @s 15 generic
execute if entity @s[tag=pulse] as @e[type=!slime,type=!item,type=!blaze,distance=..4] run damage @s 12 generic
execute if entity @s[tag=pulse] as @e[type=!slime,type=!item,type=!blaze,distance=..5] run damage @s 9 generic
execute if entity @s[tag=pulse] as @e[type=!slime,type=!item,type=!blaze,distance=..6] run damage @s 6 generic
execute if entity @s[tag=pulse] as @e[type=!slime,type=!item,type=!blaze,distance=..7] run damage @s 3 generic
execute if entity @s[tag=pulse] positioned ~ ~ ~ run particle minecraft:soul_fire_flame ~ ~ ~ 1.5 1.5 1.5 1 500

kill @e[type=marker,tag=wildfire_particle,distance=..5]
kill @s