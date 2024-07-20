scoreboard players set @s liquid_timer 80
tag @a[scores={liquid_timer=1..}] add apply_liquid_bar
execute at @s as @e[type=minecraft:marker,tag=id] run function roguecraft:ability/liquid_walker/apply_bossbar with entity @s data
tag @a remove apply_liquid_bar
#tellraw @s[scores={toggle_ability_feedback=0}] {"text":"You cast Liquid Walker","italic":true,"color":"blue"}
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 2 1.5