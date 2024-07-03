scoreboard players add @s[tag=!garden,gamemode=!spectator] skillpoints 1
scoreboard players set @s[tag=!garden,gamemode=!spectator] enter_end 1
tellraw @s[tag=!garden,gamemode=!spectator] {"translate":"roguecraft.chat_messages.sp_advancement","bold":true,"italic":true,"color":"aqua","with":["1",{"score":{"name":"@s","objective":"skillpoints"}}]}
execute at @s[tag=!garden,gamemode=!spectator] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.25