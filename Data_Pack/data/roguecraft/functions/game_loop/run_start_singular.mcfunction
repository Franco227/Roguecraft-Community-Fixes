execute if data storage roguecraft:master {sp_loss:1} run scoreboard players set @s skillpoints 0
effect give @s minecraft:saturation 1 100 true

scoreboard players set @s smelt_iron 0
scoreboard players set @s lava_bucket 0
scoreboard players set @s obsidian 0
scoreboard players set @s enter_nether 0
scoreboard players set @s find_fortress 0
scoreboard players set @s obtain_blaze_rod 0
scoreboard players set @s enter_end 0
scoreboard players set @s wildfire_defeated 0

execute store result score @s run_number run scoreboard players get @e[type=marker,tag=master,limit=1] run_number

scoreboard players set @s entry_x 40000000
scoreboard players set @s entry_z 40000000

gamemode survival @s
advancement revoke @s only minecraft:story/smelt_iron
advancement revoke @s only minecraft:story/lava_bucket
advancement revoke @s only minecraft:story/form_obsidian
advancement revoke @s only minecraft:story/enter_the_nether
advancement revoke @s only minecraft:nether/find_fortress
advancement revoke @s only minecraft:nether/obtain_blaze_rod
advancement revoke @s only minecraft:story/enter_the_end

effect give @s minecraft:resistance 2 4 true
effect give @s minecraft:instant_health 40
xp set @s 0 levels
xp set @s 0 points
tag @s remove hub
tag @s remove garden
tag @s remove victory
tag @s remove infinite_garden
tag @s remove garden_items
tag @s remove run_start_non_ticked

data merge storage roguecraft:master {start:0}
tag @s remove ready
tag @s remove end
team leave @s[team=ready]
team leave @s[team=not_ready]
function roguecraft:game_loop/tp_to_run_spawn with storage roguecraft:master Region
execute as @s run function roguecraft:mana_bar_test
execute at @s run spawnpoint @s ~ ~ ~

title @s title {"translate":"roguecraft.bossbar.run","with":[{"score":{"name":"@e[tag=master,limit=1]","objective":"run_number"},"bold":true,"color":"green"}],"bold":true,"color":"green"}

bossbar set minecraft:difficulty players @a[tag=!hub,tag=!garden]

tag @s remove restart
tag @s remove current_main
tag @s remove restart_all
tag @s remove hub
tag @s remove garden

scoreboard players enable @a stronghold_location
scoreboard players enable @a toggle_ability_feedback
scoreboard players enable @a restart_run
scoreboard players reset @a hub_tp

clear @s
effect clear @s

function roguecraft:upgrades/init