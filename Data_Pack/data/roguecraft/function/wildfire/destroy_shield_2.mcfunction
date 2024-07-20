$tp @e[type=minecraft:slime,tag=shield_2,tag=$(boss_id)] ~ -500 ~
$kill @e[type=minecraft:slime,tag=shield_2,tag=$(boss_id)]
scoreboard players remove @s damage_reduction 25

execute store result storage roguecraft:master random int 1 run random value 0..2
$execute at @e[type=minecraft:item_display,tag=shield_2,tag=$(boss_id)] if data storage roguecraft:master {random:0} run playsound roguecraft:entity.wildfire.shield_break_0 hostile @a ~ ~ ~ 2
$execute at @e[type=minecraft:item_display,tag=shield_2,tag=$(boss_id)] if data storage roguecraft:master {random:1} run playsound roguecraft:entity.wildfire.shield_break_1 hostile @a ~ ~ ~ 2
$execute at @e[type=minecraft:item_display,tag=shield_2,tag=$(boss_id)] if data storage roguecraft:master {random:2} run playsound roguecraft:entity.wildfire.shield_break_2 hostile @a ~ ~ ~ 2

$execute at @e[type=minecraft:item_display,tag=shield_2,tag=$(boss_id)] run playsound minecraft:block.beacon.deactivate hostile @a ^ ^ ^1 0.5
$execute at @e[type=minecraft:item_display,tag=shield_2,tag=$(boss_id)] run particle flame ^ ^ ^2 0.1 1 0.1 0.5 300

$kill @e[type=minecraft:item_display,tag=shield_2,tag=$(boss_id)]