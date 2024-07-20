execute if score @s hover_phase matches 1 run scoreboard players operation @s hover_accleration += @s hover_accleration_inc
execute if score @s hover_phase matches 1 if score @s hover_accleration > @s hover_upper_limit run scoreboard players set @s hover_phase 0
execute if score @s hover_phase matches 0 run scoreboard players operation @s hover_accleration -= @s hover_accleration_inc
execute if score @s hover_phase matches 0 if score @s hover_accleration < @s hover_lower_limit run tag @s add change_phase
execute as @s[tag=change_phase] run scoreboard players set @s hover_phase 1
execute as @s[tag=change_phase] run scoreboard players operation @s hover_accleration += @s hover_accleration_inc
tag @s remove change_phase

scoreboard players operation @s hover_speed += @s hover_accleration

execute store result storage roguecraft:master hover.speed int 1 run scoreboard players get @s hover_speed
execute store result storage roguecraft:master hover.multiplier int 1 run scoreboard players get @s hover_multiplier
execute unless entity @s[tag=obelisk] store result storage roguecraft:master hover.boss_id int 1 run data get entity @s data.boss_id

function roguecraft:wildfire/calculate_hover