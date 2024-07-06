tag @s remove hub
tag @s add garden

execute as @s[tag=ready] unless data storage roguecraft:master {start:1} unless data storage roguecraft:master {run_active:1} run function roguecraft:infinite_garden/hub/ready/unready
team leave @s

effect clear @s
effect give @s minecraft:instant_health 10 0 true
effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:night_vision infinite 0 true
effect give @s minecraft:saturation infinite 0 true
effect give @s minecraft:water_breathing infinite 0 true

clear @s
function roguecraft:upgrades/init
tag @s add garden_items

scoreboard players enable @s hub_tp
damage @s 1 minecraft:generic_kill

execute as @e[tag=id,type=minecraft:marker] run function roguecraft:mana_bar_test with entity @s data
gamemode survival

title @s subtitle ""
title @s[tag=!garden_entered] title {"translate":"roguecraft.title.infinite_garden","color":"aqua"}
playsound roguecraft:music.infinite_garden.infinite_garden voice @s[tag=!garden_entered] ~ ~ ~ 0.5
execute if entity @s[tag=!garden_entered] run schedule function roguecraft:quarter_hour 900s replace
advancement grant @s[tag=!garden_entered] only roguecraft:infinite_garden/root
tag @s add garden_entered

execute at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 2