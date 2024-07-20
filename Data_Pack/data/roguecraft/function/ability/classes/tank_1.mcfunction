execute if score @s mana >= @e[type=minecraft:marker,tag=master,limit=1] class_cost_0 run function roguecraft:ability/classes/tank_2

execute unless score @s mana >= @e[type=minecraft:marker,tag=master,limit=1] class_cost_0 as @s run tellraw @s[scores={toggle_ability_feedback=0}] {"translate":"roguecraft.chat_messages.ability_no_mana","italic":true,"color":"red"}
execute unless score @s mana >= @e[type=minecraft:marker,tag=master,limit=1] class_cost_0 as @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5

execute if score @s mana >= @e[type=minecraft:marker,tag=master,limit=1] class_cost_0 run scoreboard players operation @s mana -= @e[type=minecraft:marker,tag=master,limit=1] class_cost_0

execute as @e[type=minecraft:marker,tag=id] run function roguecraft:set_mana_bar with entity @s data