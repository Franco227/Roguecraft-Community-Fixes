execute if score @s attack_damage matches 20 run scoreboard players remove @s shops_completed 1
execute if score @s attack_damage matches 11.. run scoreboard players add @s skillpoints 2
execute if score @s attack_damage matches 11.. run scoreboard players remove @s attack_damage 1
execute if score @s attack_damage matches 10 run scoreboard players add @s shops_completed 1
#execute if score @s attack_damage matches 10 run tellraw @a "test"

execute if score @s attack_damage matches 11.. run function roguecraft:update/110/dec_attack_damage