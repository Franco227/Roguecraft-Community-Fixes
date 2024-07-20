particle minecraft:soul_fire_flame ~ ~4 ~ 0.6 3 0.6 0.025 250
particle flame ~ ~4 ~ 0.8 3 0.8 0.025 250

particle minecraft:soul_fire_flame ~ ~ ~ 0.4 3 0.4 0.6 50
particle flame ~ ~ ~ 0.8 3 0.8 0.6 50

playsound entity.generic.explode master @a ~ ~-1 ~
particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1

execute positioned ~ ~ ~ as @e[type=!minecraft:slime,type=!minecraft:item,type=!minecraft:blaze,distance=..2] run damage @s 10 generic
execute positioned ~ ~1 ~ as @e[type=!minecraft:slime,type=!minecraft:item,type=!minecraft:blaze,distance=..1.6] run damage @s 8 generic
execute positioned ~ ~2 ~ as @e[type=!minecraft:slime,type=!minecraft:item,type=!minecraft:blaze,distance=..1.2] run damage @s 6 generic
execute positioned ~ ~3 ~ as @e[type=!minecraft:slime,type=!minecraft:item,type=!minecraft:blaze,distance=..0.8] run damage @s 4 generic
execute positioned ~ ~4 ~ as @e[type=!minecraft:slime,type=!minecraft:item,type=!minecraft:blaze,distance=..0.4] run damage @s 2 generic