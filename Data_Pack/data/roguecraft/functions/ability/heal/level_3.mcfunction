effect give @s minecraft:instant_health 1 2
particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 1 10 normal @a
#tellraw @s[scores={toggle_ability_feedback=0}] {"text":"You cast Quick Heal","italic":true,"color":"blue"}
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 2 1.5