scoreboard players set @s dirt_timer 150
tag @a[scores={dirt_timer=1..}] add apply_dirt_bar
execute at @s as @e[tag=id,type=marker] run function roguecraft:ability/dirt_walker/apply_bossbar with entity @s data
tag @s remove apply_dirt_bar
#tellraw @s[scores={toggle_ability_feedback=0}] {"text":"You cast Dirt Walker","italic":true,"color":"blue"}
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 2 1.5