tag @s add current_main

summon minecraft:marker ^1 ^1 ^0.7 {NoGravity:1b,Tags:["gigadrill","current_main"]}
summon minecraft:marker ^1 ^ ^0.7 {NoGravity:1b,Tags:["gigadrill","current_main"]}
summon minecraft:marker ^1 ^-1 ^0.7 {NoGravity:1b,Tags:["gigadrill","current_main"]}
summon minecraft:marker ^ ^1 ^0.7 {NoGravity:1b,Tags:["gigadrill","current_main"]}
summon minecraft:marker ^ ^ ^0.7 {NoGravity:1b,Tags:["gigadrill","current_main"]}
summon minecraft:marker ^ ^-1 ^0.7 {NoGravity:1b,Tags:["gigadrill","current_main"]}
summon minecraft:marker ^-1 ^1 ^0.7 {NoGravity:1b,Tags:["gigadrill","current_main"]}
summon minecraft:marker ^-1 ^ ^0.7 {NoGravity:1b,Tags:["gigadrill","current_main"]}
summon minecraft:marker ^-1 ^-1 ^0.7 {NoGravity:1b,Tags:["gigadrill","current_main"]}

execute as @e[tag=gigadrill,tag=current_main] at @s rotated as @a[tag=current_main,limit=1] run tp @s ~ ~ ~ ~ ~

$scoreboard players operation @e[tag=gigadrill,tag=current_main] gigadrill_range_current = @a[tag=current_main] gigadrill_range_$(level)
scoreboard players operation @e[tag=gigadrill,tag=current_main] tool = @a[tag=current_main] tool

tag @e[tag=current_main] remove current_main