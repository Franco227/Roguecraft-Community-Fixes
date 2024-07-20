execute at @p[gamemode=spectator] run particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 1 10 normal @a
execute at @s run particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 1 10 normal @a
execute at @s run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.7 1.1
execute at @p[gamemode=spectator] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.7 1.1
execute at @s run tp @p[gamemode=spectator] @s
execute if score @p[gamemode=spectator,limit=1] entry_x matches 40000000 run scoreboard players operation @p[gamemode=spectator] entry_x = @s entry_x
execute if score @p[gamemode=spectator,limit=1] entry_z matches 40000000 run scoreboard players operation @p[gamemode=spectator] entry_z = @s entry_z
execute as @p[gamemode=spectator] run function roguecraft:ability/classes/revive_init
tellraw @s[scores={toggle_ability_feedback=0}] {"translate":"roguecraft.chat_messages.use_ability","italic":true,"color":"red","with":[{"translate":"roguecraft.class_ability.healer"}]}

execute store result score @e[type=minecraft:marker,tag=master] temp_health run attribute @s minecraft:generic.max_health base get
scoreboard players operation @e[type=minecraft:marker,tag=master] temp_health -= @e[type=minecraft:marker,tag=master] revitalize_health
execute store result storage roguecraft:master temp_health int 1 run scoreboard players get @e[type=minecraft:marker,tag=master,limit=1] temp_health
function roguecraft:ability/classes/remove_health with storage roguecraft:master

execute store result score @s current_health run attribute @s minecraft:generic.max_health base get