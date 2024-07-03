#tellraw @s[scores={toggle_ability_feedback=0}] {"text":"You cast Fireball","italic":true,"color":"blue"}

execute as @s in overworld positioned 0.0 0.0 0.0 rotated as @s run summon minecraft:marker ^ ^ ^16 {Tags:["fireball"]}
execute as @e[type=marker,tag=fireball] run execute store result entity @s data.X double 0.00625 run data get entity @s Pos[0] 7
execute as @e[type=marker,tag=fireball] run execute store result entity @s data.Y double 0.00625 run data get entity @s Pos[1] 7
execute as @e[type=marker,tag=fireball] run execute store result entity @s data.Z double 0.00625 run data get entity @s Pos[2] 7
execute at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~

execute at @s positioned ~ ~1 ~ run summon fireball ^ ^ ^1.5 {ExplosionPower:3,Tags:["player_fireball","current_fireball"]}
data modify entity @e[type=fireball,tag=current_fireball,limit=1] power[0] set from entity @e[type=marker,tag=fireball,limit=1] data.X
data modify entity @e[type=fireball,tag=current_fireball,limit=1] power[1] set from entity @e[type=marker,tag=fireball,limit=1] data.Y
data modify entity @e[type=fireball,tag=current_fireball,limit=1] power[2] set from entity @e[type=marker,tag=fireball,limit=1] data.Z
tag @e[type=fireball,tag=current_fireball] remove current_fireball
kill @e[type=marker,tag=fireball]