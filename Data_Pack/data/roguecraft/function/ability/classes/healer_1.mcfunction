execute store result score @s current_health run attribute @s minecraft:generic.max_health base get
execute unless entity @p[gamemode=spectator] run tellraw @s[scores={toggle_ability_feedback=0}] {"translate":"roguecraft.class_ability.healer_error_all_alive","italic":true,"color":"red"}
execute unless entity @p[gamemode=spectator] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
execute if entity @p[gamemode=spectator] run function roguecraft:ability/classes/healer_2