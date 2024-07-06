execute if data entity @s {Age:20} run tag @s add a20
execute if data entity @s {Age:40} run tag @s add a40
execute if data entity @s {Age:60} run tag @s add a60

execute if data entity @s {Age:18} run playsound roguecraft:entity.wildfire.summon_charge master @a ~ ~ ~ 0.4

playsound minecraft:block.fire.ambient master @a ~ ~ ~ 0.05
particle minecraft:flame ~ ~0.1 ~ 0.2 0.2 0.2 0.025 2
execute if entity @s[tag=a20] unless entity @s[tag=a60] run particle minecraft:soul_fire_flame ~ ~0.3 ~ 0.3 0.5 0.3 0.025 1
execute if entity @s[tag=a40] unless entity @s[tag=a60] run particle minecraft:flame ~ ~0.8 ~ 0.4 0.8 0.4 0.025 1

execute unless entity @s[tag=a20] run tp ^ ^ ^0.14
execute if entity @s[tag=a20] unless entity @s[tag=a40] run tp ^ ^ ^0.115
execute if entity @s[tag=a40] unless entity @s[tag=a60] run tp ^ ^ ^0.085
execute if entity @s[tag=a60] run tp ^ ^ ^0.06

execute if data entity @s {Age:79} run function roguecraft:wildfire/attacks/pillar/explode