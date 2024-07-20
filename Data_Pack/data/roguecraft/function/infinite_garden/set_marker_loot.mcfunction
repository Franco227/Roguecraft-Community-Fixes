$execute if data entity @s Inventory[$(inventory_slot)] run data modify entity @e[type=minecraft:marker,tag=infinite_garden_loot,tag=!tagged,limit=1] data.$(inventory_slot) set from entity @s Inventory[$(inventory_slot)]

scoreboard players add @e[type=minecraft:marker,tag=master] inventory_slot 1
execute store result storage roguecraft:master inventory_slot int 1 run scoreboard players get @e[type=minecraft:marker,tag=master,limit=1] inventory_slot

$execute if data entity @s Inventory[$(inventory_slot)] run function roguecraft:infinite_garden/set_marker_loot with storage roguecraft:master