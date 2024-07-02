execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:5}}}] if score @s class matches 0 run function roguecraft:ability/classes/tank_1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:5}}}] if score @s class matches 1 store result storage roguecraft:master temp_score_ability int 1 run scoreboard players get @s ability_4
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:5}}}] if score @s class matches 1 run function roguecraft:ability/execute_2 with storage roguecraft:master

execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:5}}}] if score @s class matches 2 run function roguecraft:ability/classes/healer_1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:5}}}] if score @s class matches 3 run function roguecraft:ability/classes/glass_cannon_1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:5}}}] if score @s class matches 4 run function roguecraft:ability/classes/reaper_1