execute at @e[type=minecraft:marker,tag=wildfire,scores={boss_health=..0}] run particle minecraft:explosion_emitter ~ ~3 ~ 1 2 1 0 1
execute at @e[type=minecraft:marker,tag=wildfire,scores={boss_health=..0}] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5

execute store result storage roguecraft:master random int 1 run random value 0..2
execute at @e[type=minecraft:marker,tag=wildfire,scores={boss_health=..0}] if data storage roguecraft:master {random:0} run playsound roguecraft:entity.wildfire.shield_break_0 hostile @a ~ ~ ~ 2
execute at @e[type=minecraft:marker,tag=wildfire,scores={boss_health=..0}] if data storage roguecraft:master {random:1} run playsound roguecraft:entity.wildfire.shield_break_1 hostile @a ~ ~ ~ 2
execute at @e[type=minecraft:marker,tag=wildfire,scores={boss_health=..0}] if data storage roguecraft:master {random:2} run playsound roguecraft:entity.wildfire.shield_break_2 hostile @a ~ ~ ~ 2

execute at @s run kill @e[type=minecraft:area_effect_cloud,distance=..6]
execute at @s run kill @e[type=minecraft:marker,tag=wildfire_particle,distance=..14]
execute at @s run kill @e[type=minecraft:marker,tag=wildfire_particle_marker,distance=..5]