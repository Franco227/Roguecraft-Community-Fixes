tag @s add ready
team join ready @s

tellraw @s {"translate":"roguecraft.chat_messages.ready","bold":true,"italic":true,"color":"green"}
tellraw @a[tag=!current_main] {"translate":"roguecraft.chat_messages.other_player_ready","bold":true,"italic":true,"color":"green","with":[{"selector":"@s"}]}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

tag @s add ready_tagged