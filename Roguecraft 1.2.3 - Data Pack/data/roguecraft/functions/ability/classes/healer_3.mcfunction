execute at @a[gamemode=spectator,sort=nearest,limit=1] run particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 1 10 normal @a
execute at @s run particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 1 10 normal @a
execute at @s run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.7 1.1
execute at @a[gamemode=spectator,sort=nearest,limit=1] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.7 1.1
execute at @s run tp @a[gamemode=spectator,sort=nearest,limit=1] @s
execute if score @a[gamemode=spectator,sort=nearest,limit=1] entry_x matches 40000000 run scoreboard players operation @a[gamemode=spectator,sort=nearest,limit=1] entry_x = @s entry_x
execute if score @a[gamemode=spectator,sort=nearest,limit=1] entry_z matches 40000000 run scoreboard players operation @a[gamemode=spectator,sort=nearest,limit=1] entry_z = @s entry_z
execute as @a[gamemode=spectator,sort=nearest,limit=1] run function roguecraft:ability/classes/revive_init
tellraw @s[scores={toggle_ability_feedback=0}] {"translate":"roguecraft.chat_messages.use_ability","italic":true,"color":"red","with":[{"translate":"roguecraft.class_ability.healer"}]}

execute store result score @e[type=marker,tag=master] temp_health run attribute @s minecraft:generic.max_health base get
scoreboard players operation @e[type=marker,tag=master] temp_health -= @e[type=marker,tag=master] revitalize_health
execute store result storage roguecraft:master temp_health int 1 run scoreboard players get @e[type=marker,tag=master,limit=1] temp_health
function roguecraft:ability/classes/remove_health with storage roguecraft:master

execute store result score @s current_health run attribute @s minecraft:generic.max_health base get