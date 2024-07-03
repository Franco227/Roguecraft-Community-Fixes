execute as @s in overworld positioned 0.0 0.0 0.0 run summon minecraft:marker ^ ^ ^4 {Tags:["wildfire_fireball"]}
execute as @e[type=marker,tag=wildfire_fireball] run execute store result entity @s data.X double 0.00625 run data get entity @s Pos[0] 5
execute as @e[type=marker,tag=wildfire_fireball] run execute store result entity @s data.Y double 0.00625 run data get entity @s Pos[1] 5
execute as @e[type=marker,tag=wildfire_fireball] run execute store result entity @s data.Z double 0.00625 run data get entity @s Pos[2] 5
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~

execute positioned ~ ~1 ~ run summon fireball ^ ^ ^3 {ExplosionPower:1b,Tags:["current_fireball"]}
data modify entity @e[type=fireball,tag=current_fireball,limit=1] power[0] set from entity @e[type=marker,tag=wildfire_fireball,limit=1] data.X
data modify entity @e[type=fireball,tag=current_fireball,limit=1] power[1] set from entity @e[type=marker,tag=wildfire_fireball,limit=1] data.Y
data modify entity @e[type=fireball,tag=current_fireball,limit=1] power[2] set from entity @e[type=marker,tag=wildfire_fireball,limit=1] data.Z
execute as @e[type=fireball,tag=current_fireball,limit=1] run data modify entity @s Motion set from entity @s power

tag @e[type=fireball,tag=current_fireball] remove current_fireball
kill @e[type=marker,tag=wildfire_fireball]


execute rotated ~90 ~ as @s in overworld positioned 0.0 0.0 0.0 run summon minecraft:marker ^ ^ ^4 {Tags:["wildfire_fireball"]}
execute as @e[type=marker,tag=wildfire_fireball] run execute store result entity @s data.X double 0.00625 run data get entity @s Pos[0] 5
execute as @e[type=marker,tag=wildfire_fireball] run execute store result entity @s data.Y double 0.00625 run data get entity @s Pos[1] 5
execute as @e[type=marker,tag=wildfire_fireball] run execute store result entity @s data.Z double 0.00625 run data get entity @s Pos[2] 5
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~

execute rotated ~90 ~ positioned ~ ~1 ~ run summon fireball ^ ^ ^3 {ExplosionPower:1b,Tags:["current_fireball"]}
data modify entity @e[type=fireball,tag=current_fireball,limit=1] power[0] set from entity @e[type=marker,tag=wildfire_fireball,limit=1] data.X
data modify entity @e[type=fireball,tag=current_fireball,limit=1] power[1] set from entity @e[type=marker,tag=wildfire_fireball,limit=1] data.Y
data modify entity @e[type=fireball,tag=current_fireball,limit=1] power[2] set from entity @e[type=marker,tag=wildfire_fireball,limit=1] data.Z
execute as @e[type=fireball,tag=current_fireball,limit=1] run data modify entity @s Motion set from entity @s power

tag @e[type=fireball,tag=current_fireball] remove current_fireball
kill @e[type=marker,tag=wildfire_fireball]


execute rotated ~180 ~ as @s in overworld positioned 0.0 0.0 0.0 run summon minecraft:marker ^ ^ ^4 {Tags:["wildfire_fireball"]}
execute as @e[type=marker,tag=wildfire_fireball] run execute store result entity @s data.X double 0.00625 run data get entity @s Pos[0] 5
execute as @e[type=marker,tag=wildfire_fireball] run execute store result entity @s data.Y double 0.00625 run data get entity @s Pos[1] 5
execute as @e[type=marker,tag=wildfire_fireball] run execute store result entity @s data.Z double 0.00625 run data get entity @s Pos[2] 5
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~

execute rotated ~180 ~ positioned ~ ~1 ~ run summon fireball ^ ^ ^3 {ExplosionPower:1b,Tags:["current_fireball"]}
data modify entity @e[type=fireball,tag=current_fireball,limit=1] power[0] set from entity @e[type=marker,tag=wildfire_fireball,limit=1] data.X
data modify entity @e[type=fireball,tag=current_fireball,limit=1] power[1] set from entity @e[type=marker,tag=wildfire_fireball,limit=1] data.Y
data modify entity @e[type=fireball,tag=current_fireball,limit=1] power[2] set from entity @e[type=marker,tag=wildfire_fireball,limit=1] data.Z
execute as @e[type=fireball,tag=current_fireball,limit=1] run data modify entity @s Motion set from entity @s power

tag @e[type=fireball,tag=current_fireball] remove current_fireball
kill @e[type=marker,tag=wildfire_fireball]


execute rotated ~270 ~ as @s in overworld positioned 0.0 0.0 0.0 run summon minecraft:marker ^ ^ ^4 {Tags:["wildfire_fireball"]}
execute as @e[type=marker,tag=wildfire_fireball] run execute store result entity @s data.X double 0.00625 run data get entity @s Pos[0] 5
execute as @e[type=marker,tag=wildfire_fireball] run execute store result entity @s data.Y double 0.00625 run data get entity @s Pos[1] 5
execute as @e[type=marker,tag=wildfire_fireball] run execute store result entity @s data.Z double 0.00625 run data get entity @s Pos[2] 5
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~

execute rotated ~270 ~ positioned ~ ~1 ~ run summon fireball ^ ^ ^3 {ExplosionPower:1b,Tags:["current_fireball"]}
data modify entity @e[type=fireball,tag=current_fireball,limit=1] power[0] set from entity @e[type=marker,tag=wildfire_fireball,limit=1] data.X
data modify entity @e[type=fireball,tag=current_fireball,limit=1] power[1] set from entity @e[type=marker,tag=wildfire_fireball,limit=1] data.Y
data modify entity @e[type=fireball,tag=current_fireball,limit=1] power[2] set from entity @e[type=marker,tag=wildfire_fireball,limit=1] data.Z
execute as @e[type=fireball,tag=current_fireball,limit=1] run data modify entity @s Motion set from entity @s power

tag @e[type=fireball,tag=current_fireball] remove current_fireball
kill @e[type=marker,tag=wildfire_fireball]