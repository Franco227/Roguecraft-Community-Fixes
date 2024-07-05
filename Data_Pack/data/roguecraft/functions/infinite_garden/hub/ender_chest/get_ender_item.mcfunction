$data modify storage roguecraft:master enderchest.cmd set from entity @s EnderItems[$(index)].components."minecraft:custom_model_data"
data merge storage roguecraft:master {enderchest:{delete_index:-1}}
function roguecraft:infinite_garden/hub/ender_chest/check_slots with storage roguecraft:master enderchest
execute store result storage roguecraft:master enderchest.index int 1 run scoreboard players remove @e[type=marker,tag=master,limit=1] enderchest_index 1
execute unless score @e[type=marker,tag=master,limit=1] enderchest_index matches -1 run function roguecraft:infinite_garden/hub/ender_chest/get_ender_item with storage roguecraft:master enderchest