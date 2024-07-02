scoreboard players add @s skillpoints 10
scoreboard players set @s enter_end 1
tellraw @s {"translate":"roguecraft.chat_messages.sp_advancement","bold":true,"italic":true,"color":"aqua","with":["10",{"score":{"name":"@s","objective":"skillpoints"}}]}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.25