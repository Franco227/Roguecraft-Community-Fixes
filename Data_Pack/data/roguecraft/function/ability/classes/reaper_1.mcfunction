execute if score @s soul_charge matches 1.. if entity @n[distance=1.5..16,type=!#roguecraft:reaper_excluded,tag=!tamed] run function roguecraft:ability/classes/reaper_2

execute unless score @s soul_charge matches 1.. as @s run tellraw @s[scores={toggle_ability_feedback=0}] {"translate":"roguecraft.chat_messages.ability_no_soul_charge","italic":true,"color":"red"}
execute unless score @s soul_charge matches 1.. as @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5

execute if score @s soul_charge matches 1.. unless entity @n[distance=..16,type=!#roguecraft:reaper_excluded,tag=!tamed] as @s run tellraw @s[scores={toggle_ability_feedback=0}] {"translate":"roguecraft.chat_messages.ability_no_entity_nearby","italic":true,"color":"red"}
execute if score @s soul_charge matches 1.. unless entity @n[distance=..16,type=!#roguecraft:reaper_excluded,tag=!tamed] as @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5

execute if score @s soul_charge matches 1.. if entity @n[distance=..16,type=!#roguecraft:reaper_excluded,tag=!tamed] run scoreboard players set @s soul_charge 0

execute as @e[type=minecraft:marker,tag=id] run function roguecraft:set_mana_bar with entity @s data