execute if score @s respiration matches 3 run scoreboard players remove @s shops_completed 1
execute if score @s respiration matches 1.. run scoreboard players add @s skillpoints 3
execute if score @s respiration matches 1.. run scoreboard players remove @s respiration 1

execute if score @s respiration matches 1.. run function roguecraft:update/110/dec_respiration