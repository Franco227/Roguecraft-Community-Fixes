scoreboard players set @s last_attack 1
summon minecraft:area_effect_cloud ~ ~2 ~ {Duration:45,Tags:["wildfire_small_fireball_init"]}
scoreboard players set @s attack_cooldown 130

execute as @e[tag=flame,tag=main,type=minecraft:slime,tag=boss_hitbox] at @s if entity @e[type=minecraft:area_effect_cloud,distance=..3.5] run data merge entity @s {HasVisualFire:1b}