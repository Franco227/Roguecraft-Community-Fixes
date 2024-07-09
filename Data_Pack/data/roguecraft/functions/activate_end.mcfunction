schedule clear roguecraft:activate_end

execute if data storage roguecraft:master {end_generated:0b} run function roguecraft:reset_end

execute in minecraft:the_end run summon minecraft:ender_dragon 0 150 0 {Tags:["cdragon"]}
scoreboard players set @e[type=minecraft:ender_dragon,tag=cdragon] dragon_flight_timer 0
attribute @e[type=minecraft:ender_dragon,limit=1] minecraft:generic.max_health base set 800
data merge entity @e[type=minecraft:ender_dragon,limit=1] {Health:800f}
data merge storage roguecraft:master {end:1}
execute as @a at @s if dimension minecraft:the_end run spreadplayers 0 0 0 5 false @s

function custom_ender_dragon:p1t/marker_summon
function custom_ender_dragon:init
function custom_ender_dragon:p1t/p2_start

execute in minecraft:the_end run forceload remove -100 -100 100 100

data merge storage roguecraft:master {end_generated:0b}