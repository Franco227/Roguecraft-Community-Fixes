tag @s remove ready
team join not_ready @s

tellraw @s {"translate":"roguecraft.chat_messages.unready","bold":true,"italic":true,"color":"gray"}
tellraw @a[tag=!current_main] {"translate":"roguecraft.chat_messages.other_player_unready","bold":true,"italic":true,"color":"green","with":[{"selector":"@s"}]}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5

tag @s add ready_tagged