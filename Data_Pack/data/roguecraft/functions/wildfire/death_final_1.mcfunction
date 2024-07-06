execute at @e[type=minecraft:marker,tag=wildfire,scores={boss_health=..0}] run particle minecraft:explosion_emitter ~ ~2.5 ~ 0 0 0 0 1
execute at @e[type=minecraft:marker,tag=wildfire,scores={boss_health=..0}] run playsound minecraft:entity.generic.explode master @a ~ ~ ~
execute at @e[type=minecraft:marker,tag=wildfire,scores={boss_health=..0}] run particle minecraft:flame ~ ~2.5 ~ 0.25 0.5 0.25 2 800

execute store result storage roguecraft:master random int 1 run random value 0..2
execute at @e[type=minecraft:marker,tag=wildfire,scores={boss_health=..0}] if data storage roguecraft:master {random:0} run playsound roguecraft:entity.wildfire.death_0 hostile @a ~ ~ ~ 2
execute at @e[type=minecraft:marker,tag=wildfire,scores={boss_health=..0}] if data storage roguecraft:master {random:1} run playsound roguecraft:entity.wildfire.death_1 hostile @a ~ ~ ~ 2
execute at @e[type=minecraft:marker,tag=wildfire,scores={boss_health=..0}] if data storage roguecraft:master {random:2} run playsound roguecraft:entity.wildfire.death_2 hostile @a ~ ~ ~ 2

execute at @e[type=minecraft:marker,tag=wildfire,scores={boss_health=..0}] run summon minecraft:item ~ ~2 ~ {Item:{count:16b,id:"minecraft:blaze_powder"},Glowing:true,NoGravity:true,Age:-32768,Health:10000s}
execute at @e[type=minecraft:marker,tag=wildfire,scores={boss_health=..0}] run advancement grant @a[distance=..64,gamemode=!spectator] only roguecraft:roguecraft/wildfire
execute at @e[type=minecraft:marker,tag=wildfire,scores={boss_health=..0}] as @a[distance=..64,scores={wildfire_defeated=0},gamemode=!spectator] run function roguecraft:skillpoints/wildfire

execute unless data storage roguecraft:master {bosses_defeated:{custos:1b}} if data storage roguecraft:master {speedrun:{new_world_display:1b}} run function roguecraft:speedrun/tell_time {type:"new_world",message:"roguecraft.speedrun.wildfire_message"}
execute unless data storage roguecraft:master {stronghold:1b} if data storage roguecraft:master {speedrun:{single_run_display:1b}} run function roguecraft:speedrun/tell_time {type:"single_run",message:"roguecraft.speedrun.wildfire_message"}

execute unless data storage roguecraft:master {bosses_defeated:{custos:1b}} in roguecraft:infinite_garden run summon minecraft:marker 0 100 0 {Tags:["boss_defeated"]}
data merge storage roguecraft:master {bosses_defeated:{custos:1b}}

execute as @e[type=minecraft:marker,tag=wildfire,scores={boss_health=..0}] run function roguecraft:wildfire/death_final_2 with entity @s data 

forceload remove ~ ~
data merge storage roguecraft:master {stronghold:1b}