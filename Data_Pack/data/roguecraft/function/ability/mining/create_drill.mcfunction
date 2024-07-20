tag @s add current_main

summon minecraft:marker ^1 ^1 ^0.7 {Tags:["gigadrill","current_main"]}
summon minecraft:marker ^1 ^ ^0.7 {Tags:["gigadrill","current_main"]}
summon minecraft:marker ^1 ^-1 ^0.7 {Tags:["gigadrill","current_main"]}
summon minecraft:marker ^ ^1 ^0.7 {Tags:["gigadrill","current_main"]}
summon minecraft:marker ^ ^ ^0.7 {Tags:["gigadrill","current_main"]}
summon minecraft:marker ^ ^-1 ^0.7 {Tags:["gigadrill","current_main"]}
summon minecraft:marker ^-1 ^1 ^0.7 {Tags:["gigadrill","current_main"]}
summon minecraft:marker ^-1 ^ ^0.7 {Tags:["gigadrill","current_main"]}
summon minecraft:marker ^-1 ^-1 ^0.7 {Tags:["gigadrill","current_main"]}

$execute if score 3 int matches $(level) run summon marker ^2 ^-1 ^0.7 {Tags:["gigadrill","current_main"]}
$execute if score 3 int matches $(level) run summon marker ^2 ^ ^0.7 {Tags:["gigadrill","current_main"]}
$execute if score 3 int matches $(level) run summon marker ^2 ^1 ^0.7 {Tags:["gigadrill","current_main"]}
$execute if score 3 int matches $(level) run summon marker ^-2 ^-1 ^0.7 {Tags:["gigadrill","current_main"]}
$execute if score 3 int matches $(level) run summon marker ^-2 ^ ^0.7 {Tags:["gigadrill","current_main"]}
$execute if score 3 int matches $(level) run summon marker ^-2 ^1 ^0.7 {Tags:["gigadrill","current_main"]}
$execute if score 3 int matches $(level) run summon marker ^-1 ^2 ^0.7 {Tags:["gigadrill","current_main"]}
$execute if score 3 int matches $(level) run summon marker ^ ^2 ^0.7 {Tags:["gigadrill","current_main"]}
$execute if score 3 int matches $(level) run summon marker ^1 ^2 ^0.7 {Tags:["gigadrill","current_main"]}
$execute if score 3 int matches $(level) run summon marker ^-1 ^-2 ^0.7 {Tags:["gigadrill","current_main"]}
$execute if score 3 int matches $(level) run summon marker ^ ^-2 ^0.7 {Tags:["gigadrill","current_main"]}
$execute if score 3 int matches $(level) run summon marker ^1 ^-2 ^0.7 {Tags:["gigadrill","current_main"]}

execute as @e[type=minecraft:marker,tag=gigadrill,tag=current_main] at @s rotated as @a[tag=current_main,limit=1] run tp @s ~ ~ ~ ~ ~

$execute store result score @e[type=minecraft:marker,tag=gigadrill,tag=current_main] gigadrill_range_current run data get storage roguecraft:master gigadrill.level_$(level)
scoreboard players operation @e[type=minecraft:marker,tag=gigadrill,tag=current_main] tool = @a[tag=current_main] tool

tag @e[tag=current_main] remove current_main