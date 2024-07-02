execute store result score @s ability_item_1_amount run clear @s minecraft:warped_fungus_on_a_stick{CustomModelData:2} 0
execute store result score @s ability_item_2_amount run clear @s minecraft:warped_fungus_on_a_stick{CustomModelData:3} 0
execute store result score @s ability_item_3_amount run clear @s minecraft:warped_fungus_on_a_stick{CustomModelData:4} 0
execute store result score @s ability_item_4_amount run clear @s minecraft:warped_fungus_on_a_stick{CustomModelData:5} 0
execute store result score @s start_item_amount run clear @s minecraft:warped_fungus_on_a_stick{CustomModelData:1} 0

execute as @s[scores={ability_item_1_amount=2..}] run clear @s minecraft:warped_fungus_on_a_stick{CustomModelData:2}
execute as @s[scores={ability_item_2_amount=2..}] run clear @s minecraft:warped_fungus_on_a_stick{CustomModelData:3}
execute as @s[scores={ability_item_3_amount=2..}] run clear @s minecraft:warped_fungus_on_a_stick{CustomModelData:4}
execute as @s[scores={ability_item_4_amount=2..}] run clear @s minecraft:warped_fungus_on_a_stick{CustomModelData:5}
execute as @s[scores={start_item_amount=2..}] run clear @s minecraft:warped_fungus_on_a_stick{CustomModelData:1}