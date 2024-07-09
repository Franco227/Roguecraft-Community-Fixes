$place template roguecraft:cosmic_dome/$(id) ~ ~ ~
kill @s
kill @e[type=minecraft:item]

execute in roguecraft:infinite_garden run fill 3 62 1 -3 62 -1 minecraft:black_concrete_powder replace minecraft:black_concrete
execute in roguecraft:infinite_garden run fill 1 62 3 -1 62 -3 minecraft:black_concrete_powder replace minecraft:black_concrete