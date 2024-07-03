tag @s add current_main

execute unless entity @a[tag=restart] if entity @a[tag=!current_main,gamemode=!spectator] run tellraw @a[tag=!garden] {"translate":"roguecraft.chat_messages.restart_first","color":"yellow","bold":false,"with":[{"selector":"@s"}]}
execute if entity @a[tag=restart] if entity @a[tag=!current_main,gamemode=!spectator] unless entity @s[tag=restart] run tellraw @a[tag=!garden] {"translate":"roguecraft.chat_messages.restart","color":"yellow","bold":false,"with":[{"selector":"@s"}]}
execute if entity @a[tag=restart] if entity @a[tag=!current_main,gamemode=!spectator] if entity @s[tag=restart] run tellraw @s[tag=!garden] {"translate":"roguecraft.chat_messages.restart_error","color":"yellow","bold":false}

tag @s add restart

execute unless entity @a[tag=!restart,gamemode=!spectator,tag=!garden] run tag @a[tag=!garden] add restart_all
execute if entity @a[tag=restart_all] run tag @a remove restart
execute if entity @a[tag=restart_all] run tellraw @a[tag=!garden] {"translate":"roguecraft.chat_messages.restart_all","color":"yellow","bold":false}
execute if entity @a[tag=restart_all] run kill @a[gamemode=!spectator,tag=!garden]

tag @s remove current_main
tag @a remove restart_all