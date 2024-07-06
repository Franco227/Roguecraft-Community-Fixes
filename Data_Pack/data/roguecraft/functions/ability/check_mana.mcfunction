$execute unless score @s class matches 4 if score @s mana >= @e[type=minecraft:marker,tag=master,limit=1] ability_cost_$(temp_score_ability)_$(temp_score_level) run tellraw @s[scores={toggle_ability_feedback=0}] {"translate":"roguecraft.chat_messages.use_ability","italic":true,"color":"blue","with":[{"translate":"roguecraft.ability.name.ability_$(temp_name)"}]}
$execute if score @s class matches 4 if score @s soul_charge matches 1.. run tellraw @s[scores={toggle_ability_feedback=0}] {"translate":"roguecraft.chat_messages.use_ability","italic":true,"color":"blue","with":[{"translate":"roguecraft.ability.name.ability_$(temp_name)"}]}
$execute unless score @s class matches 4 if score @s mana >= @e[type=minecraft:marker,tag=master,limit=1] ability_cost_$(temp_score_ability)_$(temp_score_level) run function roguecraft:ability/$(temp_name)/level_$(temp_score_level)
$execute if score @s class matches 4 if score @s soul_charge matches 1.. run function roguecraft:ability/$(temp_name)/level_$(temp_score_level)

$execute unless score @s class matches 4 unless score @s mana >= @e[type=minecraft:marker,tag=master,limit=1] ability_cost_$(temp_score_ability)_$(temp_score_level) as @s run tellraw @s[scores={toggle_ability_feedback=0}] {"translate":"roguecraft.chat_messages.ability_no_mana","italic":true,"color":"red"}
execute if score @s class matches 4 unless score @s soul_charge matches 1.. as @s run tellraw @s[scores={toggle_ability_feedback=0}] {"translate":"roguecraft.chat_messages.ability_no_soul_charge","italic":true,"color":"red"}
$execute unless score @s class matches 4 unless score @s mana >= @e[type=minecraft:marker,tag=master,limit=1] ability_cost_$(temp_score_ability)_$(temp_score_level) as @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
execute if score @s class matches 4 unless score @s soul_charge matches 1.. as @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5

$execute unless score @s class matches 4 if score @s mana >= @e[type=minecraft:marker,tag=master,limit=1] ability_cost_$(temp_score_ability)_$(temp_score_level) run scoreboard players operation @s mana -= @e[type=minecraft:marker,tag=master,limit=1] ability_cost_$(temp_score_ability)_$(temp_score_level)
execute if score @s class matches 4 if score @s soul_charge matches 1.. run scoreboard players remove @s soul_charge 1

execute as @e[tag=id,type=minecraft:marker] run function roguecraft:mana_bar_test with entity @s data
function roguecraft:ability/tell_1