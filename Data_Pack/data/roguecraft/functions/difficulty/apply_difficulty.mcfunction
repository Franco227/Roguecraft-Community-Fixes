tag @s add buffed

scoreboard players operation @e[type=minecraft:marker,tag=master,limit=1] random_difficulty_max = @e[type=minecraft:marker,tag=master,limit=1] difficulty_level
$execute unless score @e[type=minecraft:marker,tag=master,limit=1] difficulty_level matches 1 store result score @e[type=minecraft:marker,tag=master,limit=1] random_difficulty_max run random value 1..$(difficulty)
#$execute store result score @e[type=minecraft:marker,tag=master,limit=1] random_difficulty run random value 1..$(difficulty)
#execute if score @e[type=minecraft:marker,tag=master,limit=1] random_difficulty > @e[type=minecraft:marker,tag=master,limit=1] random_difficulty_max run scoreboard players operation @e[type=minecraft:marker,tag=master,limit=1] random_difficulty_max = @e[type=minecraft:marker,tag=master,limit=1] random_difficulty

execute as @s[type=#roguecraft:difficulty_sword] run function roguecraft:difficulty/sword/check_level
execute as @s[type=#roguecraft:difficulty_axe] run function roguecraft:difficulty/axe/check_level
execute as @s[type=#roguecraft:difficulty_bow] run function roguecraft:difficulty/bow/check_level
execute as @s[type=#roguecraft:difficulty_explode] run function roguecraft:difficulty/explode/check_level
execute as @s[type=#roguecraft:difficulty_effect] run function roguecraft:difficulty/effect/check_level