scoreboard players set @s last_attack 2
summon minecraft:area_effect_cloud ~ ~2 ~ {Duration:105,Tags:["wildfire_big_fireball"]}
scoreboard players set @s attack_cooldown 130

execute as @e[tag=flame,tag=main,type=slime,tag=boss_hitbox] at @s if entity @e[type=minecraft:area_effect_cloud,distance=..3.5] run data merge entity @s {HasVisualFire:1b}