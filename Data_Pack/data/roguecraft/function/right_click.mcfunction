scoreboard players set @s right_click 0

execute if data entity @s[tag=hub] {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}} if data entity @s {SelectedItemSlot:8} at @s run function roguecraft:infinite_garden/hub/ready/main
execute if data entity @s[tag=!hub] {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":2}}} at @s run return run function roguecraft:ability/execute_1 {id:1}
execute if data entity @s[tag=!hub] {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":3}}} at @s run return run function roguecraft:ability/execute_1 {id:2}
execute if data entity @s[tag=!hub] {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":4}}} at @s run return run function roguecraft:ability/execute_1 {id:3}
execute if data entity @s[tag=!hub] {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":5}}} at @s run return run function roguecraft:ability/class_execute

execute if data entity @s[tag=!hub] {Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":2}}]} at @s run return run function roguecraft:ability/execute_1 {id:1}
execute if data entity @s[tag=!hub] {Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":3}}]} at @s run return run function roguecraft:ability/execute_1 {id:2}
execute if data entity @s[tag=!hub] {Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":4}}]} at @s run return run function roguecraft:ability/execute_1 {id:3}
execute if data entity @s[tag=!hub] {Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":5}}]} at @s run return run function roguecraft:ability/class_execute