execute at @s run summon marker ~ ~ ~ {Tags:["infinite_garden_drop"]}
scoreboard players set @e[type=marker,tag=master] inventory_slot 0
execute store result storage roguecraft:master inventory_slot int 1 run scoreboard players get @e[tag=master,type=marker,limit=1] inventory_slot
function roguecraft:infinite_garden/drop_items_2 with storage roguecraft:master

kill @e[tag=infinite_garden_drop]
clear @s