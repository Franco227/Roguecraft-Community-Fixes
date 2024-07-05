$execute if data entity @s Inventory[$(inventory_slot)] run summon item ~ ~ ~ {Tags:[infinite_garden_item],Item:{id:"minecraft:dirt",count:1,components:{}},PickupDelay:40s}
$data modify entity @e[tag=infinite_garden_item,tag=!tagged,limit=1] Item.id set from entity @s Inventory[$(inventory_slot)].id
$data modify entity @e[tag=infinite_garden_item,tag=!tagged,limit=1] Item.count set from entity @s Inventory[$(inventory_slot)].count
$execute if data entity @s Inventory[$(inventory_slot)].components run data modify entity @e[tag=infinite_garden_item,tag=!tagged,limit=1] Item.components set from entity @s Inventory[$(inventory_slot)].components

spreadplayers ~ ~ 0 1 false @e[tag=infinite_garden_item,tag=!tagged]
tag @e[tag=infinite_garden_item,tag=!tagged] add tagged

scoreboard players add @e[type=marker,tag=master] inventory_slot 1
execute store result storage roguecraft:master inventory_slot int 1 run scoreboard players get @e[tag=master,type=marker,limit=1] inventory_slot

$execute if data entity @s Inventory[$(inventory_slot)] run function roguecraft:infinite_garden/drop_items_2 with storage roguecraft:master