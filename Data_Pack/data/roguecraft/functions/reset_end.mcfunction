kill @e[type=minecraft:ender_dragon,tag=!cdragon]
kill @e[tag=phase_4_mob]
kill @e[type=minecraft:interaction,tag=egg_interaction]
kill @e[type=minecraft:block_display,tag=egg_block]
execute in minecraft:the_end positioned 0 0 0 as @e[type=#roguecraft:post_enderdragon_removed,distance=..2000] at @s run tp ~ -100 ~
execute in minecraft:the_end positioned 0 -100 0 as @e[type=#roguecraft:post_enderdragon_removed,distance=..100] run kill @s
bossbar remove minecraft:phase_4_mobs

data merge storage roguecraft:master {end_generation_list:["c3","c2","d3","c4","b3","b2","d2","d4","b4","d1","c1","b1","a2","a3","a4","b5","c5","d5","e4","e3","e2","e1","a1","a5","e1"]}

execute in minecraft:the_end run summon minecraft:marker -100 1.00 -100 {Tags:["a1"]}
execute in minecraft:the_end run summon minecraft:marker -60 1.00 -100 {Tags:["a2"]}
execute in minecraft:the_end run summon minecraft:marker -20 1.00 -100 {Tags:["a3"]}
execute in minecraft:the_end run summon minecraft:marker 20 1.00 -100 {Tags:["a4"]}
execute in minecraft:the_end run summon minecraft:marker 60 1.00 -100 {Tags:["a5"]}

execute in minecraft:the_end run summon minecraft:marker -100 1.00 -60 {Tags:["b1"]}
execute in minecraft:the_end run summon minecraft:marker -60 1.00 -60 {Tags:["b2"]}
execute in minecraft:the_end run summon minecraft:marker -20 1.00 -60 {Tags:["b3"]}
execute in minecraft:the_end run summon minecraft:marker 20 1.00 -60 {Tags:["b4"]}
execute in minecraft:the_end run summon minecraft:marker 60 1.00 -60 {Tags:["b5"]}

execute in minecraft:the_end run summon minecraft:marker -100 1.00 -20 {Tags:["c1"]}
execute in minecraft:the_end run summon minecraft:marker -60 1.00 -20 {Tags:["c2"]}
execute in minecraft:the_end run summon minecraft:marker -20 1.00 -20 {Tags:["c3"]}
execute in minecraft:the_end run summon minecraft:marker 20 1.00 -20 {Tags:["c4"]}
execute in minecraft:the_end run summon minecraft:marker 60 1.00 -20 {Tags:["c5"]}

execute in minecraft:the_end run summon minecraft:marker -100 1.00 20 {Tags:["d1"]}
execute in minecraft:the_end run summon minecraft:marker -60 1.00 20 {Tags:["d2"]}
execute in minecraft:the_end run summon minecraft:marker -20 1.00 20 {Tags:["d3"]}
execute in minecraft:the_end run summon minecraft:marker 20 1.00 20 {Tags:["d4"]}
execute in minecraft:the_end run summon minecraft:marker 60 1.00 20 {Tags:["d5"]}

execute in minecraft:the_end run summon minecraft:marker -100 1.00 60 {Tags:["e1"]}
execute in minecraft:the_end run summon minecraft:marker -60 1.00 60 {Tags:["e2"]}
execute in minecraft:the_end run summon minecraft:marker -20 1.00 60 {Tags:["e3"]}
execute in minecraft:the_end run summon minecraft:marker 20 1.00 60 {Tags:["e4"]}
execute in minecraft:the_end run summon minecraft:marker 60 1.00 60 {Tags:["e5"]}

function roguecraft:build_end_1 with storage roguecraft:master

data merge storage roguecraft:master {end_generated:1b}