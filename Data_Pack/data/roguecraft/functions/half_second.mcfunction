#infinite garden
execute in roguecraft:infinite_garden positioned 0 64 0 as @e[type=item,distance=..87] at @s run function roguecraft:infinite_garden/push_item
execute in roguecraft:infinite_garden positioned 0 64 0 if entity @a[distance=64..,nbt={Dimension:"roguecraft:infinite_garden"}] at @e[type=marker,tag=constellation_line,tag=!ring] run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force
execute in roguecraft:infinite_garden positioned 0 64 0 if entity @a[distance=..96,nbt={Dimension:"roguecraft:infinite_garden"}] at @e[type=marker,tag=star_inside] run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force
execute in roguecraft:infinite_garden positioned 0 64 0 if entity @a[distance=64..384,nbt={Dimension:"roguecraft:infinite_garden"}] at @e[type=marker,tag=constellation_line,tag=!ring] run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force @a[distance=..384]

execute unless data storage roguecraft:master {stronghold:1b} run kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod"}}]

#spectate
execute as @a[gamemode=spectator] at @s run function roguecraft:spectate

schedule function roguecraft:half_second 8t