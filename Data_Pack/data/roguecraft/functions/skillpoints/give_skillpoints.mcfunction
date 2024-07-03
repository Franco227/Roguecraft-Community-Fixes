scoreboard players operation @s skillpoints += @s skillpoint_cache
tellraw @s {"translate":"roguecraft.chat_messages.sp","bold":true,"italic":true,"color":"aqua","with":[{"score":{"name":"@s","objective":"skillpoint_cache"}},{"score":{"name":"@s","objective":"skillpoints"}}]}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.25

scoreboard players set @s skillpoint_cache 0

#advancement grant @s only roguecraft:roguecraft/skillpoint_1