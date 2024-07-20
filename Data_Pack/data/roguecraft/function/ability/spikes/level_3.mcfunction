playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.75 1.25
#tellraw @s[scores={toggle_ability_feedback=0}] {"text":"You cast Parry","italic":true,"color":"blue"}
scoreboard players set @s parry_timer 20
scoreboard players set @s damage 0
effect give @s minecraft:resistance 1 2 true