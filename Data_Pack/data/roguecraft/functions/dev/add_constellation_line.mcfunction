tag @s add tagged
summon marker ~ ~ ~ {Tags:["star_inside"]}
tp @e[tag=star_inside,tag=!tagged] ^ ^ ^0.4 ~ ~
execute positioned ^ ^ ^0.4 unless entity @e[type=armor_stand,tag=focus,distance=..0.4] as @e[type=marker,tag=!tagged,tag=star_inside] at @s run function roguecraft:dev/add_constellation_line
execute positioned ^ ^ ^0.4 if entity @e[type=armor_stand,tag=focus,distance=..0.4] as @e[type=marker,tag=!tagged,tag=star_inside] run tag @s add tagged