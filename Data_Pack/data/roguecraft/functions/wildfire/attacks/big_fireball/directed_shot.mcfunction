execute facing entity @s feet in minecraft:overworld positioned 0 0 0 run summon minecraft:marker ^ ^ ^32 {Tags:["wildfire_fireball"]}
execute as @e[type=minecraft:marker,tag=wildfire_fireball] run execute store result entity @s data.X double 0.0003625 run data get entity @s Pos[0] 5
execute as @e[type=minecraft:marker,tag=wildfire_fireball] run execute store result entity @s data.Y double 0.0003625 run data get entity @s Pos[1] 5
execute as @e[type=minecraft:marker,tag=wildfire_fireball] run execute store result entity @s data.Z double 0.0003625 run data get entity @s Pos[2] 5
execute at @e[type=minecraft:marker,tag=wildfire_fireball] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~

execute facing entity @s eyes positioned ~ ~1 ~ run summon minecraft:fireball ^ ^ ^3.5 {Tags:["current_fireball"],ExplosionPower:1b}
data modify entity @e[type=minecraft:fireball,tag=current_fireball,limit=1] power[0] set from entity @e[type=minecraft:marker,tag=wildfire_fireball,limit=1] data.X
data modify entity @e[type=minecraft:fireball,tag=current_fireball,limit=1] power[1] set from entity @e[type=minecraft:marker,tag=wildfire_fireball,limit=1] data.Y
data modify entity @e[type=minecraft:fireball,tag=current_fireball,limit=1] power[2] set from entity @e[type=minecraft:marker,tag=wildfire_fireball,limit=1] data.Z
execute as @e[type=minecraft:fireball,tag=current_fireball,limit=1] run data modify entity @s Motion set from entity @s power

tag @e[type=minecraft:fireball,tag=current_fireball] remove current_fireball
kill @e[type=minecraft:marker,tag=wildfire_fireball]