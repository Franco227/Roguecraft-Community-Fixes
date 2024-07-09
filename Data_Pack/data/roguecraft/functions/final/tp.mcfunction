schedule clear roguecraft:final/tp

gamemode adventure @a
clear @a

execute in minecraft:overworld run tp @a 0.5 135.00 26.5 180 -6

effect clear @a
execute as @a run attribute @s minecraft:generic.movement_speed base set 0.1

effect give @a minecraft:resistance infinite 4 true
effect give @a minecraft:saturation infinite 0 true
effect give @a minecraft:darkness 1 0 true
effect give @s minecraft:blindness 1 0 true

tag @a add victory
tag @a remove end

execute as @e[type=minecraft:marker,tag=id] run function roguecraft:ability/dirt_walker/disable_bossbar with entity @s data
execute as @e[type=minecraft:marker,tag=id] run function roguecraft:ability/liquid_walker/disable_bossbar with entity @s data
execute as @e[type=minecraft:marker,tag=id] run function roguecraft:ability/lava_walker/disable_bossbar with entity @s data

scoreboard players set @a dirt_timer 0
scoreboard players set @a liquid_timer 0
scoreboard players set @a lava_timer 0

bossbar set minecraft:difficulty players @s[tag=tjrrtjrtaesf]
execute as @e[type=minecraft:marker,tag=id] run function roguecraft:set_mana_bar with entity @s data

schedule function roguecraft:final/spawn 3t
function roguecraft:final/tp_effects