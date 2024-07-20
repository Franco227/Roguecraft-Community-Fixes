execute rotated ~ ~ run summon minecraft:marker ^ ^ ^12 {Tags:["wildfire_particle","1"]}
execute rotated ~90 ~ run summon minecraft:marker ^ ^ ^12 {Tags:["wildfire_particle","2"]}
execute rotated ~180 ~ run summon minecraft:marker ^ ^ ^12 {Tags:["wildfire_particle","3"]}
execute rotated ~270 ~ run summon minecraft:marker ^ ^ ^12 {Tags:["wildfire_particle","4"]}
execute rotated ~45 ~ run summon minecraft:marker ^ ^ ^12 {Tags:["wildfire_particle","5"]}
execute rotated ~135 ~ run summon minecraft:marker ^ ^ ^12 {Tags:["wildfire_particle","6"]}
execute rotated ~225 ~ run summon minecraft:marker ^ ^ ^12 {Tags:["wildfire_particle","7"]}
execute rotated ~315 ~ run summon minecraft:marker ^ ^ ^12 {Tags:["wildfire_particle","8"]}

execute store result storage roguecraft:master random int 1 run random value 0..2
execute if data storage roguecraft:master {random:0} at @s[tag=pulse] run playsound roguecraft:entity.wildfire.shockwave_0 master @a ~ ~ ~
execute if data storage roguecraft:master {random:1} at @s[tag=pulse] run playsound roguecraft:entity.wildfire.shockwave_1 master @a ~ ~ ~
execute if data storage roguecraft:master {random:2} at @s[tag=pulse] run playsound roguecraft:entity.wildfire.shockwave_2 master @a ~ ~ ~

execute at @s[tag=summon] run playsound roguecraft:entity.wildfire.summon_charge master @a ~ ~ ~ 0.75

scoreboard players set @s marker_distance 60
tag @s add marked