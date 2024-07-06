scoreboard players set @s lava_timer 80
tag @a[scores={lava_timer=1..}] add apply_lava_bar
execute at @s as @e[tag=id,type=minecraft:marker] run function roguecraft:ability/lava_walker/apply_bossbar with entity @s data
tag @a remove apply_lava_bar
#tellraw @s[scores={toggle_ability_feedback=0}] {"text":"You cast Lava Walker","italic":true,"color":"blue"}
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 2 1.5