scoreboard players add @s skillpoints 5
scoreboard players set @s find_fortress 1
tellraw @s {"translate":"roguecraft.chat_messages.sp_advancement","bold":true,"italic":true,"color":"aqua","with":["5",{"score":{"name":"@s","objective":"skillpoints"}}]}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.25