execute if entity @e[tag=boss_defeated] run tellraw @a {"translate":"roguecraft.chat_messages.unlock_upgrades","bold":true,"italic":true,"color":"aqua"}
scoreboard players remove @e[tag=shop] run_number 1
kill @e[tag=boss_defeated]