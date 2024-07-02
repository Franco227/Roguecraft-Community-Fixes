execute if score @s max_health matches 40 run scoreboard players remove @s shops_completed 1
execute if score @s max_health matches 21.. run scoreboard players add @s skillpoints 4
execute if score @s max_health matches 21.. run scoreboard players remove @s max_health 1
execute if score @s max_health matches 20 run scoreboard players add @s shops_completed 1

execute if score @s max_health matches 21.. run function roguecraft:update/110/dec_health