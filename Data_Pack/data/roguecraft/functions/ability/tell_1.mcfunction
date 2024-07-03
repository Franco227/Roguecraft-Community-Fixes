execute unless data entity @s {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}} run return 0

execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:2}}}] store result storage roguecraft:master temp_score_ability int 1 run scoreboard players get @s ability_1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:3}}}] store result storage roguecraft:master temp_score_ability int 1 run scoreboard players get @s ability_2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:4}}}] store result storage roguecraft:master temp_score_ability int 1 run scoreboard players get @s ability_3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:5}}}] if score @s class matches 1 store result storage roguecraft:master temp_score_ability int 1 run scoreboard players get @s ability_4

execute unless data entity @s {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:5}}} run function roguecraft:ability/tell_2 with storage roguecraft:master
execute if data entity @s {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:5}}} if score @s class matches 1 run function roguecraft:ability/tell_2 with storage roguecraft:master
execute if data entity @s {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:5}}} if score @s class matches 0 run function roguecraft:ability/tell_tank
execute if data entity @s {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:5}}} if score @s class matches 2 run function roguecraft:ability/tell_healer
execute if data entity @s {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:5}}} if score @s class matches 3 run function roguecraft:ability/tell_glass_cannon
execute if data entity @s {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:5}}} if score @s class matches 4 run function roguecraft:ability/tell_reaper