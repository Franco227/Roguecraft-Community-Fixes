execute as @s in minecraft:overworld positioned 0.0 0.0 0.0 rotated as @s run summon minecraft:marker ^ ^ ^2 {Tags:["wildfire_fireball"]}
execute as @e[type=minecraft:marker,tag=wildfire_fireball] run execute store result entity @s data.X double 0.00625 run data get entity @s Pos[0] 5
execute as @e[type=minecraft:marker,tag=wildfire_fireball] run execute store result entity @s data.Y double 0.00625 run data get entity @s Pos[1] 5
execute as @e[type=minecraft:marker,tag=wildfire_fireball] run execute store result entity @s data.Z double 0.00625 run data get entity @s Pos[2] 5
execute at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~

execute at @s positioned ~ ~1 ~ run summon minecraft:small_fireball ^ ^ ^2.75 {Tags:["current_fireball"]}
data modify entity @e[type=minecraft:small_fireball,tag=current_fireball,limit=1] power[0] set from entity @e[type=minecraft:marker,tag=wildfire_fireball,limit=1] data.X
data modify entity @e[type=minecraft:small_fireball,tag=current_fireball,limit=1] power[1] set from entity @e[type=minecraft:marker,tag=wildfire_fireball,limit=1] data.Y
data modify entity @e[type=minecraft:small_fireball,tag=current_fireball,limit=1] power[2] set from entity @e[type=minecraft:marker,tag=wildfire_fireball,limit=1] data.Z
execute as @e[type=minecraft:small_fireball,tag=current_fireball,limit=1] run data modify entity @s Motion set from entity @s power

tag @e[type=minecraft:small_fireball,tag=current_fireball] remove current_fireball
kill @e[type=minecraft:marker,tag=wildfire_fireball]