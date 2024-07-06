execute at @s run tp @s ~ ~ ~ facing entity @e[tag=focus,limit=1]

execute if entity @s[tag=tagged] run summon minecraft:marker ~ ~ ~ {Tags:["constellation_line"]}
execute if entity @s[tag=tagged] run tp @e[tag=constellation_line,tag=!tagged] ^ ^ ^0.4 ~ ~
execute if entity @s[tag=tagged] run execute as @e[tag=constellation_line,tag=!tagged] at @s run function roguecraft:dev/add_constellation_line

tag @s add tagged