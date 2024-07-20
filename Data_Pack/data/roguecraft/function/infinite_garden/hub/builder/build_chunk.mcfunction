$place template roguecraft:cosmic_dome/$(id) ~ ~ ~
kill @s
kill @e[type=minecraft:item]

execute in roguecraft:infinite_garden run fill 3 62 1 -3 62 -1 black_concrete_powder replace black_concrete
execute in roguecraft:infinite_garden run fill 1 62 3 -1 62 -3 black_concrete_powder replace black_concrete