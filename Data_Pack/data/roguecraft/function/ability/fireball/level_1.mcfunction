#tellraw @s[scores={toggle_ability_feedback=0}] {"text":"You cast Fireball","italic":true,"color":"blue"}

execute as @s in minecraft:overworld positioned 0.0 0.0 0.0 rotated as @s run summon minecraft:marker ^ ^ ^16 {Tags:["fireball"]}
execute as @e[type=minecraft:marker,tag=fireball] run execute store result entity @s data.X double 0.00625 run data get entity @s Pos[0] 5
execute as @e[type=minecraft:marker,tag=fireball] run execute store result entity @s data.Y double 0.00625 run data get entity @s Pos[1] 5
execute as @e[type=minecraft:marker,tag=fireball] run execute store result entity @s data.Z double 0.00625 run data get entity @s Pos[2] 5
execute at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~

execute at @s positioned ~ ~1 ~ run summon minecraft:fireball ^ ^ ^1.5 {ExplosionPower:1,Tags:["player_fireball","current_fireball"]}
data modify entity @e[type=minecraft:fireball,tag=current_fireball,limit=1] Motion[0] set from entity @e[type=minecraft:marker,tag=fireball,limit=1] data.X
data modify entity @e[type=minecraft:fireball,tag=current_fireball,limit=1] Motion[1] set from entity @e[type=minecraft:marker,tag=fireball,limit=1] data.Y
data modify entity @e[type=minecraft:fireball,tag=current_fireball,limit=1] Motion[2] set from entity @e[type=minecraft:marker,tag=fireball,limit=1] data.Z
tag @e[type=minecraft:fireball,tag=current_fireball] remove current_fireball
kill @e[type=minecraft:marker,tag=fireball]