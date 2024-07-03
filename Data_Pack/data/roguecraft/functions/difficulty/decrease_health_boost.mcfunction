execute if data entity @s {active_effects:[{id:"minecraft:health_boost",amplifier:4b}]} run tag @s add hb5
execute if data entity @s {active_effects:[{id:"minecraft:health_boost",amplifier:3b}]} run tag @s add hb4
execute if data entity @s {active_effects:[{id:"minecraft:health_boost",amplifier:2b}]} run tag @s add hb3
execute if data entity @s {active_effects:[{id:"minecraft:health_boost",amplifier:1b}]} run tag @s add hb2
execute if data entity @s {active_effects:[{id:"minecraft:health_boost",amplifier:0b}]} run tag @s add hb1

effect clear @s minecraft:health_boost

execute as @s[tag=hb5] run effect give @s minecraft:health_boost infinite 3 true
execute as @s[tag=hb4] run effect give @s minecraft:health_boost infinite 2 true
execute as @s[tag=hb3] run effect give @s minecraft:health_boost infinite 1 true
execute as @s[tag=hb2] run effect give @s minecraft:health_boost infinite 0 true

effect give @s[tag=hb5] minecraft:instant_health 4
effect give @s[tag=hb4] minecraft:instant_health 3
effect give @s[tag=hb3] minecraft:instant_health 2
effect give @s[tag=hb2] minecraft:instant_health 1

tag @s remove hb5
tag @s remove hb4
tag @s remove hb3
tag @s remove hb2
tag @s remove hb1