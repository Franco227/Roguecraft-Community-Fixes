# i gotta be honest, while i understand most of this (including the subfunction), i also kinda don't. shoutouts to budged for making this system, i'm just doing my best to implement it, but this part is making me lose my mind aaaaaaAAAAAAAAAAAAAAAA
# clean code though, much better than mine, i'm just not used to it i guess

# Set read values
execute as @s[scores={tool=0}] run data modify storage roguecraft:master tooltype set value wooden_
execute as @s[scores={tool=1}] run data modify storage roguecraft:master tooltype set value wooden_
execute as @s[scores={tool=2}] run data modify storage roguecraft:master tooltype set value stone_
execute as @s[scores={tool=3}] run data modify storage roguecraft:master tooltype set value iron_
execute as @s[scores={tool=4}] run data modify storage roguecraft:master tooltype set value diamond_
execute as @s[scores={tool=5}] run data modify storage roguecraft:master tooltype set value netherite_

execute as @s[scores={food=0}] run data modify storage roguecraft:master foodtype set value air
execute as @s[scores={food=0}] run data modify storage roguecraft:master foodcount set value 1
execute as @s[scores={food=1}] run data modify storage roguecraft:master foodtype set value bread
execute as @s[scores={food=1}] run data modify storage roguecraft:master foodcount set value 8
execute as @s[scores={food=2}] run data modify storage roguecraft:master foodtype set value baked_potato
execute as @s[scores={food=2}] run data modify storage roguecraft:master foodcount set value 16
execute as @s[scores={food=3}] run data modify storage roguecraft:master foodtype set value cooked_chicken
execute as @s[scores={food=3}] run data modify storage roguecraft:master foodcount set value 32
execute as @s[scores={food=4}] run data modify storage roguecraft:master foodtype set value pumpkin_pie
execute as @s[scores={food=4}] run data modify storage roguecraft:master foodcount set value 48
execute as @s[scores={food=5}] run data modify storage roguecraft:master foodtype set value golden_carrot
execute as @s[scores={food=5}] run data modify storage roguecraft:master foodcount set value 64

execute store result storage roguecraft:master pearls int 1 run scoreboard players get @s pearls

# Init and run
data modify storage roguecraft:master selectedslot set value 0
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master
function roguecraft:upgrades/slot with storage roguecraft:master