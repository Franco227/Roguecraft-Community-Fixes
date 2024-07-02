#beams
execute as @e[tag=infinite_garden_loot] unless data entity @s data.0 run kill @s
execute as @e[tag=infinite_garden_loot] at @s if entity @a[distance=..20] run function roguecraft:infinite_garden/tick_marker

#tag change
execute in roguecraft:infinite_garden as @a[tag=garden] at @s positioned 0 ~ 0 if entity @s[distance=..84.5] at @s run function roguecraft:infinite_garden/init_hub

#chester
execute at @e[tag=chester] run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.5 0.5 0.5 0.01 10
execute as @a at @s if entity @e[tag=chester,distance=..10] run function roguecraft:infinite_garden/chester

execute as @a[scores={hub_tp=1..}] in roguecraft:infinite_garden positioned 0 63 0 run function roguecraft:infinite_garden/hub/tp