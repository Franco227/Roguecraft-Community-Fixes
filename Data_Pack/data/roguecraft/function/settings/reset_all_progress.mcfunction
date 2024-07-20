tag @s add reset_progress

execute as @e[type=minecraft:marker,tag=id] run function roguecraft:remove_mana_bar with entity @s data
advancement revoke @s everything
scoreboard players set @e[type=minecraft:marker,tag=master] run_number 0

tag @s remove tutorial_done
tag @s remove init_player
tag @s remove reset_progress