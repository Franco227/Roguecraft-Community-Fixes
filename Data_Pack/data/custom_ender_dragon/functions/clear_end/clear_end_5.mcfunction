schedule clear custom_ender_dragon:clear_end/clear_end_5

execute in minecraft:the_end run place template custom_ender_dragon:end_island_a1 -100 0 -100
execute in minecraft:the_end run place template custom_ender_dragon:end_island_a1 -100 0 60
execute in minecraft:the_end run place template custom_ender_dragon:end_island_a1 60 0 -100
execute in minecraft:the_end run place template custom_ender_dragon:end_island_a1 60 0 60

data merge storage roguecraft:master {end_cleared:1b}