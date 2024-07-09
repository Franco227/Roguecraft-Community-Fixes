execute at @s anchored eyes run function roguecraft:ability/mining/create_drill {level:1}

#execute store result score @s y run data get entity @s Pos[1] 100

#data merge storage roguecraft:master {end_frame:0}
#data merge storage roguecraft:master {end_frame_count:0}
#execute store success storage roguecraft:master end_frame int 1 run fill ~1 ~2 ~1 ~-1 ~ ~-1 minecraft:end_portal_frame replace minecraft:end_portal_frame
#execute store result storage roguecraft:master end_frame_count int 1 run fill ~1 ~2 ~1 ~-1 ~ ~-1 minecraft:cyan_stained_glass replace minecraft:end_portal_frame
#execute if data storage roguecraft:master {end_frame:1} run function roguecraft:ability/mining/give_end_portal with storage roguecraft:master

#execute if dimension minecraft:overworld if score @s y matches -6300.. run fill ~1 ~2 ~1 ~-1 ~ ~-1 minecraft:air destroy
#execute if dimension minecraft:overworld if score @s y matches ..-6300 run fill ~1 ~2 ~1 ~-1 -64 ~-1 minecraft:air destroy

#execute if dimension roguecraft:infinite_garden if score @s y matches -6300.. run fill ~1 ~2 ~1 ~-1 ~ ~-1 minecraft:air destroy
#execute if dimension roguecraft:infinite_garden if score @s y matches ..-6300 run fill ~1 ~2 ~1 ~-1 -64 ~-1 minecraft:air destroy

#execute unless dimension minecraft:overworld unless dimension roguecraft:infinite_garden if score @s y matches 100.. run fill ~1 ~2 ~1 ~-1 ~ ~-1 minecraft:air destroy
#execute unless dimension minecraft:overworld unless dimension roguecraft:infinite_garden if score @s y matches ..100 run fill ~1 ~2 ~1 ~-1 0 ~-1 minecraft:air destroy

playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 2 1.5