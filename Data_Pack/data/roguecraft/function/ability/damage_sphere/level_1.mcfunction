execute at @s as @e[type=!minecraft:item,distance=0.1..4] run damage @s 5 minecraft:generic by @p
playsound minecraft:entity.shulker.shoot master @s ~ ~ ~ 2 0.8
#tellraw @s[scores={toggle_ability_feedback=0}] {"text":"You cast Pulse Sphere","italic":true,"color":"blue"}
particle minecraft:crit ~ ~ ~ 0 0 0 2 300 normal
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 2 1.5