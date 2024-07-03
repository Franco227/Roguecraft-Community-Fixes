schedule clear roguecraft:activate_end

tag @a remove cdragon
kill @e[type=ender_dragon,tag=!cdragon]
kill @e[type=minecraft:area_effect_cloud]
kill @e[tag=phase_4_mob]
kill @e[tag=egg_interaction]
kill @e[tag=egg_block]
execute in the_end positioned 0 0 0 run kill @e[type=marker,distance=..2000]
execute in the_end positioned 0 0 0 run kill @e[type=arrow,distance=..2000]
execute in the_end positioned 0 0 0 run kill @e[type=enderman,distance=..2000]
execute in the_end positioned 0 0 0 run kill @e[type=armor_stand,distance=..2000]
execute in the_end positioned 0 0 0 run kill @e[type=item,distance=..2000]
execute in the_end positioned 0 0 0 run kill @e[type=shulker,distance=..2000]
execute in the_end positioned 0 0 0 run kill @e[type=end_crystal,distance=..2000]
execute in the_end positioned 0 0 0 run kill @e[type=area_effect_cloud,distance=..2000]
execute in the_end run summon ender_dragon 0 150 0 {Tags:["cdragon"]}
scoreboard players set @e[tag=cdragon] dragon_flight_timer 0
attribute @e[type=minecraft:ender_dragon,limit=1] minecraft:generic.max_health base set 800
data merge entity @e[type=minecraft:ender_dragon,limit=1] {Health:800f}
data merge storage roguecraft:master {end:1}
bossbar remove minecraft:phase_4_mobs
execute as @a at @s if dimension minecraft:the_end run spreadplayers 0 0 0 1 false @s

execute in the_end run summon minecraft:marker -100 1.00 -100 {Tags:["a1"]}
execute in the_end run summon minecraft:marker -60 1.00 -100 {Tags:["a2"]}
execute in the_end run summon minecraft:marker -20 1.00 -100 {Tags:["a3"]}
execute in the_end run summon minecraft:marker 20 1.00 -100 {Tags:["a4"]}
execute in the_end run summon minecraft:marker 60 1.00 -100 {Tags:["a5"]}

execute in the_end run summon minecraft:marker -100 1.00 -60 {Tags:["b1"]}
execute in the_end run summon minecraft:marker -60 1.00 -60 {Tags:["b2"]}
execute in the_end run summon minecraft:marker -20 1.00 -60 {Tags:["b3"]}
execute in the_end run summon minecraft:marker 20 1.00 -60 {Tags:["b4"]}
execute in the_end run summon minecraft:marker 60 1.00 -60 {Tags:["b5"]}

execute in the_end run summon minecraft:marker -100 1.00 -20 {Tags:["c1"]}
execute in the_end run summon minecraft:marker -60 1.00 -20 {Tags:["c2"]}
execute in the_end run summon minecraft:marker -20 1.00 -20 {Tags:["c3"]}
execute in the_end run summon minecraft:marker 20 1.00 -20 {Tags:["c4"]}
execute in the_end run summon minecraft:marker 60 1.00 -20 {Tags:["c5"]}

execute in the_end run summon minecraft:marker -100 1.00 20 {Tags:["d1"]}
execute in the_end run summon minecraft:marker -60 1.00 20 {Tags:["d2"]}
execute in the_end run summon minecraft:marker -20 1.00 20 {Tags:["d3"]}
execute in the_end run summon minecraft:marker 20 1.00 20 {Tags:["d4"]}
execute in the_end run summon minecraft:marker 60 1.00 20 {Tags:["d5"]}

execute in the_end run summon minecraft:marker -100 1.00 60 {Tags:["e1"]}
execute in the_end run summon minecraft:marker -60 1.00 60 {Tags:["e2"]}
execute in the_end run summon minecraft:marker -20 1.00 60 {Tags:["e3"]}
execute in the_end run summon minecraft:marker 20 1.00 60 {Tags:["e4"]}
execute in the_end run summon minecraft:marker 60 1.00 60 {Tags:["e5"]}

function roguecraft:build_end_1 with storage roguecraft:master
execute as @a at @s if dimension minecraft:the_end run spreadplayers 0 0 0 5 false @s

function custom_ender_dragon:p1t/marker_summon
function custom_ender_dragon:init
function custom_ender_dragon:p1t/p2_start

execute in minecraft:the_end run forceload remove -100 -100 100 100