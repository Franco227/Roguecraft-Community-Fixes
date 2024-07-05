execute at @e[tag=final_spawner] run summon minecraft:end_crystal ~ ~ ~ {Invulnerable:true,Tags:["final"],ShowBottom:false,beam_target:[I;0,137,0]}
summon minecraft:interaction 0.5 139.00 0.5 {Tags:["egg_interaction"]}
summon minecraft:block_display 0.50 139.50 0.5 {block_state:{Name:"minecraft:dragon_egg"},Glowing:true,Tags:["egg_block"]}
data merge entity @e[tag=egg_block,limit=1] {transformation:{translation:[-0.5f,-0.5f,-0.5f]}}