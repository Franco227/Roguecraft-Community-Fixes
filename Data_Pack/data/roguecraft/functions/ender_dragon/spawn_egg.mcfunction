summon minecraft:interaction ~ ~ ~ {Tags:["egg_interaction"]}
summon minecraft:block_display ~ ~1 ~ {block_state:{Name:"minecraft:dragon_egg"},Glowing:true,Tags:["egg_block"],teleport_duration:2}
data merge entity @e[tag=egg_block,limit=1] {transformation:{translation:[-0.5f,-0.5f,-0.5f]}}

execute in the_end run fill 2 77 -2 -2 73 2 air destroy

execute at @e[tag=egg_block] run particle minecraft:dust{color:[1.0,0.0,1.0],scale:4.0} ~ ~ ~ 1.5 1.5 1.5 0 100 force @a
execute at @e[tag=egg_block] run particle minecraft:reverse_portal ~ ~ ~ 1 1 1 1 800 force
execute at @e[tag=egg_block] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 2