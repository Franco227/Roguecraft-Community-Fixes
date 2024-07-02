execute as @e[type=minecraft:interaction,tag=egg_interaction] run data remove entity @s attack
scoreboard players add @e[tag=egg_block] egg_damage 1
playsound minecraft:entity.ender_dragon.hurt master @a[tag=!garden,tag=!hub] ~ ~1 ~ 0.5 0.5
playsound minecraft:entity.wither.hurt master @a[tag=!garden,tag=!hub] ~ ~1 ~ 0.5 2
playsound minecraft:entity.wither.break_block master @a[tag=!garden,tag=!hub] ~ ~1 ~ 0.25 2
particle minecraft:crit ~ ~1 ~ 0.2 0.2 0.2 2 250
particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.5 10
particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.5 10
execute as @e[tag=egg_block] at @s run tp @s ~ ~ ~ ~5 ~
execute if entity @e[tag=egg_block,scores={egg_damage=8}] run function roguecraft:ender_dragon/egg_death