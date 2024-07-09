data remove storage roguecraft:master end_generation_list[0]
$execute at @e[type=minecraft:marker,tag=$(end_generation_current)] run place template custom_ender_dragon:end_island_$(end_generation_current)

execute if data storage roguecraft:master end_generation_list[0] run schedule function roguecraft:build_end_1 2t replace
execute unless data storage roguecraft:master end_generation_list[0] in minecraft:the_end run fill -100 118 -100 100 255 100 minecraft:air
execute unless data storage roguecraft:master end_generation_list[0] in minecraft:the_end run fill 63 0 63 -63 0 -63 minecraft:air