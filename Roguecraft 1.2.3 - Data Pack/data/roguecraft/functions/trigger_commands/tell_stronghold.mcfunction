execute if data storage roguecraft:master {stronghold:0b} run tellraw @s[tag=!hub,tag=!garden] {"translate":"roguecraft.chat_messages.stronghold_location_error","color":"dark_purple"}

$execute if data storage roguecraft:master {stronghold:1b} run tellraw @s[tag=!hub,tag=!garden] {"translate":"roguecraft.chat_messages.stronghold_location","color":"dark_purple","with":["$(X)","$(Z)"]}

scoreboard players set @s stronghold_location 0
scoreboard players enable @a stronghold_location