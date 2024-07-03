execute if score @s defense matches 20 run scoreboard players remove @s shops_completed 1
execute if score @s defense matches 11.. run scoreboard players add @s skillpoints 1
execute if score @s defense matches 11.. run scoreboard players remove @s defense 1
execute if score @s defense matches 10 run scoreboard players add @s shops_completed 1

execute if score @s max_health matches 11.. run function roguecraft:update/111/dec_defense