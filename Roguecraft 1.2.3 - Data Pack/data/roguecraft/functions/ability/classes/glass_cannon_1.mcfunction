execute store result score @s current_health run attribute @s minecraft:generic.max_health base get
execute unless score @s current_health matches 7.. run tellraw @s[scores={toggle_ability_feedback=0}] {"translate":"roguecraft.class_ability.glass_cannon_error","italic":true,"color":"red"}
execute unless score @s current_health matches 7.. run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
execute if score @s current_health matches 7.. run function roguecraft:ability/classes/glass_cannon_2