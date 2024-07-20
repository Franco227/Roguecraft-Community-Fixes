execute if score @s knockback_resistance matches 10 run scoreboard players remove @s shops_completed 1
execute if score @s knockback_resistance matches 1.. run scoreboard players add @s skillpoints 2
execute if score @s knockback_resistance matches 1.. run scoreboard players remove @s knockback_resistance 1

execute if score @s knockback_resistance matches 1.. run function roguecraft:update/110/dec_knockback_resistance