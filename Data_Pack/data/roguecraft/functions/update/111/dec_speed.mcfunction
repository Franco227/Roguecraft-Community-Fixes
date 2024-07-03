execute if score @s speed matches 7 run scoreboard players remove @s shops_completed 1
execute if score @s speed matches 6.. run scoreboard players add @s skillpoints 3
execute if score @s speed matches 6.. run scoreboard players remove @s speed 1
execute if score @s speed matches 5 run scoreboard players add @s shops_completed 1

execute if score @s speed matches 6.. run function roguecraft:update/111/dec_speed