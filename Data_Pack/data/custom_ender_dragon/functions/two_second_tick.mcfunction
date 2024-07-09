execute as @e[type=minecraft:area_effect_cloud,tag=lightning_ring] run execute positioned 0 100 0 run execute if entity @s[distance=8..] run execute at @s positioned over motion_blocking run summon minecraft:lightning_bolt
execute at @e[type=minecraft:area_effect_cloud,tag=auto_aim] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 0
execute at @e[type=minecraft:area_effect_cloud,tag=auto_aim] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 0

execute as @e[type=minecraft:marker,tag=emaster,limit=1] if score @s dragon_phase matches 12..14 run function custom_ender_dragon:end_crystal

scoreboard players add @e[type=minecraft:ender_dragon] dragon_flight_timer 1
scoreboard players set @e[type=minecraft:ender_dragon,nbt={DragonPhase:3}] dragon_flight_timer 0
scoreboard players set @e[type=minecraft:ender_dragon,nbt={DragonPhase:5}] dragon_flight_timer 0
scoreboard players set @e[type=minecraft:ender_dragon,nbt={DragonPhase:6}] dragon_flight_timer 0
scoreboard players set @e[type=minecraft:ender_dragon,nbt={DragonPhase:7}] dragon_flight_timer 0

execute in minecraft:the_end positioned 0 70 0 if entity @a[distance=..100] as @e[type=minecraft:ender_dragon,scores={dragon_flight_timer=20..},limit=1] unless data entity @s {Health:1.0f} run data merge entity @s {DragonPhase:2}

execute if data storage roguecraft:master {end_generated:0} in minecraft:the_end if loaded -140 127 -140 if loaded 140 127 140 run function custom_ender_dragon:clear_end/clear_end

schedule function custom_ender_dragon:two_second_tick 40t