data modify storage roguecraft:master inventory set from entity @s Inventory
execute store success storage roguecraft:master check_inventory byte 1 run data modify storage roguecraft:master inventory set from storage roguecraft:master default_inventory

execute if data storage roguecraft:master {check_inventory:1b} run function roguecraft:infinite_garden/hub/set_inventory