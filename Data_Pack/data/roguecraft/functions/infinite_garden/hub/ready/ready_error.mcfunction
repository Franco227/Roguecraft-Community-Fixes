tellraw @s {"translate":"roguecraft.chat_messages.error_unready","bold":true,"italic":true,"color":"dark_red"}
execute at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5

tag @s add ready_tagged