execute positioned ~ ~ ~ run particle minecraft:flame ~ ~2 ~ 0.1 0.5 0.1 0.2 2
execute as @e[type=area_effect_cloud,tag=wildfire_small_fireball] at @s run function roguecraft:wildfire/attacks/small_fireball/prepare_shot
execute if entity @e[type=area_effect_cloud,tag=wildfire_small_fireball] run schedule function roguecraft:wildfire/attacks/small_fireball/delay 3t