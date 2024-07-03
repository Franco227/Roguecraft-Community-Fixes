execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:2}}}] store result storage roguecraft:master temp_score_ability int 1 run scoreboard players get @s ability_1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:3}}}] store result storage roguecraft:master temp_score_ability int 1 run scoreboard players get @s ability_2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:4}}}] store result storage roguecraft:master temp_score_ability int 1 run scoreboard players get @s ability_3

execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:2}}}] run function roguecraft:ability/execute_2 with storage roguecraft:master
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:3}}}] run function roguecraft:ability/execute_2 with storage roguecraft:master
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:4}}}] run function roguecraft:ability/execute_2 with storage roguecraft:master