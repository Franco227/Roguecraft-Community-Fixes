scoreboard players set @e[type=minecraft:marker,tag=master] difficulty 0
scoreboard players add @e[type=minecraft:marker,tag=master,limit=1] difficulty_level 1
execute if score @e[type=minecraft:marker,tag=master,limit=1] difficulty_level matches 11.. as @a[tag=!garden] unless data entity @s {active_effects:[{id:"minecraft:health_boost"}]} run function roguecraft:difficulty/decrease_health_1
execute if score @e[type=minecraft:marker,tag=master,limit=1] difficulty_level matches 11.. as @a[tag=!garden] if data entity @s {active_effects:[{id:"minecraft:health_boost"}]} run function roguecraft:difficulty/decrease_health_boost
execute if score @e[type=minecraft:marker,tag=master,limit=1] difficulty_level matches 3.. run gamerule playersSleepingPercentage 201
execute as @a[tag=!garden,tag=!hub] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.1 0.75

bossbar set minecraft:difficulty name {"translate":"roguecraft.bossbar.difficulty_level","with":[{"score":{"name":"@e[type=minecraft:marker,tag=master,limit=1]","objective":"difficulty_level"}}]}
bossbar set minecraft:difficulty value 0
tellraw @a[tag=!hub,tag=!garden] {"translate":"roguecraft.chat_messages.difficulty_increase","with":[{"score":{"name":"@e[type=minecraft:marker,tag=master,limit=1]","objective":"difficulty_level"}}],"bold":true,"color":"red"}

execute if score @e[type=minecraft:marker,tag=master,limit=1] difficulty_level matches 20.. run advancement grant @a[advancements={roguecraft:roguecraft/difficulty_20=false},gamemode=!spectator,tag=!garden] only roguecraft:roguecraft/difficulty_20