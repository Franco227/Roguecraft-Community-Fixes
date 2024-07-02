scoreboard players set @s right_click 0

execute if data entity @s[tag=hub] {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}} if data entity @s {SelectedItemSlot:8} at @s run function roguecraft:infinite_garden/hub/ready/main
execute if data entity @s[tag=!hub] {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:2}}} at @s run function roguecraft:ability/execute_1
execute if data entity @s[tag=!hub] {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:3}}} at @s run function roguecraft:ability/execute_1
execute if data entity @s[tag=!hub] {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:4}}} at @s run function roguecraft:ability/execute_1
execute if data entity @s[tag=!hub] {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:5}}} at @s run function roguecraft:ability/class_execute