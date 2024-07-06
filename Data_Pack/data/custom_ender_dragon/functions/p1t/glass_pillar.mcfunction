execute in minecraft:the_end run tag @e[type=minecraft:marker,x=-100,y=82,z=-100,dx=200,dy=1,dz=200] add cage_crystal
execute in minecraft:the_end run tag @e[type=minecraft:marker,x=-100,y=79,z=-100,dx=200,dy=1,dz=200] add cage_crystal

execute at @e[tag=end_crystal_marker,tag=!cage_crystal] run summon minecraft:marker ~ ~ ~ {Tags:["glass_pillar"]}
execute at @e[tag=end_crystal_marker,tag=cage_crystal] run summon minecraft:marker ~ ~5 ~ {Tags:["glass_pillar"]}

execute at @e[tag=end_crystal_marker,tag=!cage_crystal] run summon minecraft:marker ~ ~5 ~ {Tags:["glass_destroyer"]}
execute at @e[tag=end_crystal_marker,tag=cage_crystal] run summon minecraft:marker ~ ~10 ~ {Tags:["glass_destroyer"]}