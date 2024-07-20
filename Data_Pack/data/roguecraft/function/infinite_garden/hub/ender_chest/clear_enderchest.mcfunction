execute store result score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index run data get entity @s EnderItems
execute store result storage roguecraft:master enderchest.index int 1 run scoreboard players remove @e[type=minecraft:marker,tag=master,limit=1] enderchest_index 1
function roguecraft:infinite_garden/hub/ender_chest/get_ender_item with storage roguecraft:master enderchest