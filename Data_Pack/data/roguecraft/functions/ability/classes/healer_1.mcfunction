execute store result score @s current_health run attribute @s minecraft:generic.max_health base get
execute unless entity @a[gamemode=spectator,sort=nearest,limit=1] run tellraw @s[scores={toggle_ability_feedback=0}] {"translate":"roguecraft.class_ability.healer_error_all_alive","italic":true,"color":"red"}
execute unless entity @a[gamemode=spectator,sort=nearest,limit=1] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
execute if entity @a[gamemode=spectator,sort=nearest,limit=1] run function roguecraft:ability/classes/healer_2