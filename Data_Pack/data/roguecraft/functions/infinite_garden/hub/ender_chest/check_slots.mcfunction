#$tellraw @a "$(delete_index)"
#$tellraw @a "$(cmd)"
#$tellraw @a "$(index)"

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[25].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 26.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:25}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[24].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 25.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:24}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[23].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 24.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:23}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[22].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 23.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:22}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[21].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 22.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:21}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[20].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 21.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:20}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[19].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 20.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:19}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[18].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 19.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:18}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[17].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 18.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:17}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[16].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 17.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:16}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[15].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 16.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:15}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[14].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 15.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:14}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[13].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 14.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:13}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[12].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 13.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:12}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[11].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 12.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:11}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[10].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 11.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:10}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[9].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 10.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:9}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[8].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 9.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:8}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[7].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 8.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:7}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[6].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 7.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:6}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[5].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 6.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:5}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[4].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 5.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:4}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[3].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 4.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:3}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[2].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 3.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:2}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[1].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 2.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:1}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest

execute store result storage roguecraft:master enderchest.current_cmd int 1 run data get entity @s EnderItems[0].components."minecraft:custom_model_data"
$execute if score @e[type=minecraft:marker,tag=master,limit=1] enderchest_index matches 1.. if data storage roguecraft:master {enderchest:{current_cmd:$(cmd)}} run data merge storage roguecraft:master {enderchest:{delete_index:0}}
execute unless data storage roguecraft:master {enderchest:{delete_index:-1}} run function roguecraft:infinite_garden/hub/ender_chest/get_item_slot with storage roguecraft:master enderchest