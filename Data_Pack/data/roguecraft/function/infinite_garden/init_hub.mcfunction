function roguecraft:infinite_garden/drop_items_1
function roguecraft:infinite_garden/hub/set_inventory

scoreboard players set @s dirt_timer 0
scoreboard players set @s liquid_timer 0

execute if entity @a[scores={dirt_timer=0..}] as @e[type=minecraft:marker,tag=id] run function roguecraft:ability/dirt_walker/update_bossbar with entity @s data
execute if entity @a[scores={liquid_timer=0..}] as @e[type=minecraft:marker,tag=id] run function roguecraft:ability/liquid_walker/update_bossbar with entity @s data

tag @s remove garden
tag @s add hub

scoreboard players reset @s hub_tp

team join not_ready

effect clear @s
effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:speed infinite 7 true
effect give @s minecraft:saturation infinite 0 true
execute as @s run attribute @s minecraft:generic.max_health base set 20
damage @s 1 minecraft:generic_kill

execute as @e[type=minecraft:marker,tag=id] run function roguecraft:mana_bar_test with entity @s data

gamemode adventure

execute at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 1