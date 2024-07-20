execute if entity @e[type=minecraft:marker,tag=boss_defeated] run tellraw @a {"translate":"roguecraft.chat_messages.unlock_upgrades","bold":true,"italic":true,"color":"aqua"}
scoreboard players remove @e[type=minecraft:marker,tag=shop] run_number 1
kill @e[type=minecraft:marker,tag=boss_defeated]