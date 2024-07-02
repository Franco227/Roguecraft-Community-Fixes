execute if score @s armor_toughness matches 5 run scoreboard players remove @s shops_completed 1
execute if score @s armor_toughness matches 1.. run scoreboard players add @s skillpoints 3
execute if score @s armor_toughness matches 1.. run scoreboard players remove @s armor_toughness 1

execute if score @s armor_toughness matches 1.. run function roguecraft:update/110/dec_armor_toughness