execute if score @s tool matches 0..2 unless block ~ ~ ~ #roguecraft:incorrect_for_stone_tool run setblock ~ ~ ~ air destroy
execute if score @s tool matches 3 unless block ~ ~ ~ #roguecraft:incorrect_for_iron_tool run setblock ~ ~ ~ air destroy
execute if score @s tool matches 4 unless block ~ ~ ~ #roguecraft:incorrect_for_diamond_tool run setblock ~ ~ ~ air destroy
execute if score @s tool matches 5 unless block ~ ~ ~ #roguecraft:incorrect_for_netherite_tool run setblock ~ ~ ~ air destroy

execute in roguecraft:infinite_garden positioned 0 ~ 0 if entity @s[distance=76..84] run advancement grant @a only roguecraft:infinite_garden/destroy_hub
execute in roguecraft:infinite_garden positioned 0 ~ 0 if entity @s[distance=76..84] run kill @s

scoreboard players remove @s gigadrill_range_current 1
kill @s[scores={gigadrill_range_current=..0}]
tp @s ^ ^ ^0.5
particle minecraft:dust{color:[0.2,0.2,0.2],scale:1.5} ~ ~ ~ 0.3 0.3 0.3 1 3