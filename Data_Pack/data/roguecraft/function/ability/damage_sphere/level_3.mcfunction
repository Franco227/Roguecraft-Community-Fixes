execute at @s as @e[type=!minecraft:item,distance=0.1..8] run damage @s 10 minecraft:generic by @p
playsound minecraft:entity.shulker.shoot master @s ~ ~ ~ 2 0.8
#tellraw @s[scores={toggle_ability_feedback=0}] {"text":"You cast Pulse Sphere","italic":true,"color":"blue"}
particle minecraft:crit ~ ~ ~ 0 0 0 3.2 500 normal
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 2 1.5