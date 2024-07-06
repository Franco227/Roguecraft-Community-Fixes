summon minecraft:blaze ~3 ~1 ~ {Tags:["wildfire_minion","untagged"]}
summon minecraft:blaze ~-3 ~1 ~ {Tags:["wildfire_minion","untagged"]}
summon minecraft:blaze ~ ~1 ~3 {Tags:["wildfire_minion","untagged"]}
summon minecraft:blaze ~ ~1 ~-3 {Tags:["wildfire_minion","untagged"]}

tag @s add blazes_spawned

execute as @e[type=minecraft:blaze,tag=untagged,tag=wildfire_minion] run attribute @s generic.max_health base set 60
execute as @e[type=minecraft:blaze,tag=untagged,tag=wildfire_minion] run data merge entity @s {Health:60f}
execute at @e[type=minecraft:blaze,tag=wildfire_minion,tag=untagged] run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0.5 50
execute at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 2
tag @e[type=minecraft:blaze,tag=wildfire_minion,tag=untagged] remove untagged