execute if score @e[type=minecraft:marker,tag=master,limit=1] random_difficulty_max matches 2 run function roguecraft:difficulty/bow/level_2
execute if score @e[type=minecraft:marker,tag=master,limit=1] random_difficulty_max matches 3 run function roguecraft:difficulty/bow/level_3
execute if score @e[type=minecraft:marker,tag=master,limit=1] random_difficulty_max matches 4 run function roguecraft:difficulty/bow/level_4
execute if score @e[type=minecraft:marker,tag=master,limit=1] random_difficulty_max matches 5 run function roguecraft:difficulty/bow/level_5
execute if score @e[type=minecraft:marker,tag=master,limit=1] random_difficulty_max matches 6 run function roguecraft:difficulty/bow/level_6
execute if score @e[type=minecraft:marker,tag=master,limit=1] random_difficulty_max matches 7 run function roguecraft:difficulty/bow/level_7
execute if score @e[type=minecraft:marker,tag=master,limit=1] random_difficulty_max matches 8 run function roguecraft:difficulty/bow/level_8
execute if score @e[type=minecraft:marker,tag=master,limit=1] random_difficulty_max matches 9.. run function roguecraft:difficulty/bow/level_9
execute if score @e[type=minecraft:marker,tag=master,limit=1] random_difficulty_max matches 10.. run item replace entity @s weapon.offhand with minecraft:totem_of_undying

data merge entity @s {HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.000f,0.000f,0.000f,0.000f]}