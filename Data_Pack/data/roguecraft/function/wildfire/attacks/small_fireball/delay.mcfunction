execute as @e[type=minecraft:area_effect_cloud,tag=wildfire_small_fireball] at @s run function roguecraft:wildfire/attacks/small_fireball/prepare_shot
execute if entity @e[type=minecraft:area_effect_cloud,tag=wildfire_small_fireball] run schedule function roguecraft:wildfire/attacks/small_fireball/delay 3t