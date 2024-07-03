scoreboard players add @s skillpoints 1
scoreboard players set @s lava_bucket 1
tellraw @s {"translate":"roguecraft.chat_messages.sp_advancement","bold":true,"italic":true,"color":"aqua","with":["1",{"score":{"name":"@s","objective":"skillpoints"}}]}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.25