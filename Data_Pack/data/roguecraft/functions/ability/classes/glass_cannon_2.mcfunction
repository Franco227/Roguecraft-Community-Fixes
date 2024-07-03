particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.3 30
particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.4 30
scoreboard players set @s adrenaline_advancement_timer 60
playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.2 2
playsound minecraft:block.glass.break master @a ~ ~ ~ 0.5 1

execute store result score @s current_health run attribute @s minecraft:generic.max_health base get
execute store result score @e[type=marker,tag=master] temp_health run attribute @s minecraft:generic.max_health base get
scoreboard players operation @e[type=marker,tag=master] temp_health -= @e[type=marker,tag=master] adrenaline_health
execute store result storage roguecraft:master temp_health int 1 run scoreboard players get @e[type=marker,tag=master,limit=1] temp_health
function roguecraft:ability/classes/remove_health with storage roguecraft:master
execute store result score @s current_health run attribute @s minecraft:generic.max_health base get

data merge storage roguecraft:master {temp_score_level:0}
scoreboard players set @e[type=marker,tag=master,limit=1] temp_health 0
function roguecraft:ability/classes/glass_cannon_3 with storage roguecraft:master

scoreboard players add @e[type=marker,tag=master,limit=1] temp_health 1
tellraw @s[scores={toggle_ability_feedback=0}] ["",{"translate":"roguecraft.chat_messages.use_ability","italic":true,"color":"white","with":[{"translate":"roguecraft.class_ability.glass_cannon"}]},{"text":" (","color":"white","italic":true},{"translate":"roguecraft.generic.strength","italic":true,"color":"white"},{"text":" "},{"score":{"name":"@e[type=marker,tag=master,limit=1]","objective":"temp_health"},"color":"white"},{"text":")","italic":true,"color":"white"}]
execute store result score @s current_strength run scoreboard players get @e[type=marker,tag=master,limit=1] temp_health