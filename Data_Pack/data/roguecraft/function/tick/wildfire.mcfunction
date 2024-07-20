execute at @e[type=minecraft:item_display,tag=wildfire_body] run particle minecraft:flame ~ ~0.5 ~ 0.7 0.85 0.7 0 3
execute at @e[type=minecraft:item_display,tag=wildfire_body] run particle minecraft:small_flame ~ ~0.5 ~ 0.7 0.85 0.7 0 6
execute at @e[type=minecraft:item_display,tag=wildfire_body] run particle minecraft:smoke ~ ~0.5 ~ 1 1 1 0 4

execute as @e[type=minecraft:item_display,tag=wildfire_head] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator] eyes
execute as @e[type=minecraft:item_display,tag=wildfire_shield] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=minecraft:marker,tag=wildfire] at @s run function roguecraft:wildfire/check_nearby_players with entity @s data
execute as @e[type=minecraft:marker,tag=wildfire] at @s unless entity @a[distance=..128] run forceload remove ~ ~
execute as @e[type=minecraft:marker,tag=wildfire,scores={boss_health=1..}] at @s if entity @a[distance=..128] run forceload add ~ ~

execute as @e[type=minecraft:marker,tag=wildfire,scores={boss_health=1..}] at @s run function roguecraft:wildfire/set_shield_hitbox with entity @s data
execute as @e[type=minecraft:marker,tag=wildfire,scores={boss_health=1..}] run function roguecraft:wildfire/check_hitboxes with entity @s data

execute as @e[type=minecraft:marker,tag=wildfire,scores={boss_health=1..}] run scoreboard players remove @s attack_cooldown 1
execute as @e[type=minecraft:marker,tag=wildfire,scores={attack_cooldown=..0}] at @s run function roguecraft:wildfire/attacks/roll

execute at @e[type=minecraft:area_effect_cloud,tag=wildfire_small_fireball_init,nbt={Age:44}] run function roguecraft:wildfire/attacks/small_fireball/start
execute as @e[type=minecraft:slime,tag=flame,tag=main,tag=boss_hitbox] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..3.5] run data merge entity @s {HasVisualFire:0b}

execute as @e[type=minecraft:area_effect_cloud,tag=wildfire_big_fireball,nbt={Age:44}] at @s run function roguecraft:wildfire/attacks/big_fireball/start
execute as @e[type=minecraft:area_effect_cloud,tag=wildfire_big_fireball,nbt={Age:74}] at @s run function roguecraft:wildfire/attacks/big_fireball/start
execute as @e[type=minecraft:area_effect_cloud,tag=wildfire_big_fireball,nbt={Age:104}] at @s run function roguecraft:wildfire/attacks/big_fireball/start

execute at @e[type=minecraft:marker,tag=wildfire_particle_marker,tag=pulse] run particle minecraft:soul_fire_flame ~ ~2.5 ~ 0.5 1 0.5 0 5 
execute as @e[type=minecraft:area_effect_cloud,tag=wildfire_pillar] at @s run function roguecraft:wildfire/attacks/pillar/marker_main

execute as @e[type=minecraft:marker,tag=wildfire] run function roguecraft:wildfire/hover