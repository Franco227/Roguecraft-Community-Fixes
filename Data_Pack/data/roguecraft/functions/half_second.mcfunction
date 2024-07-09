# advancements
execute as @a[advancements={roguecraft:infinite_garden/max_health=false},nbt={AbsorptionAmount:16.0f,Health:52.0f}] run advancement grant @s only roguecraft:infinite_garden/max_health
execute as @a[advancements={roguecraft:roguecraft/avatar=false},scores={dirt_timer=1..,liquid_timer=1..}] if data entity @s {active_effects:[{id:"minecraft:levitation"}]} run advancement grant @s only roguecraft:roguecraft/avatar

#infinite garden
execute in roguecraft:infinite_garden positioned 0 64 0 as @e[type=minecraft:item,distance=..87] at @s run function roguecraft:infinite_garden/push_item
execute in roguecraft:infinite_garden positioned 0 64 0 if entity @a[distance=64..,nbt={Dimension:"roguecraft:infinite_garden"}] at @e[type=minecraft:marker,tag=constellation_line,tag=!ring] run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force
execute in roguecraft:infinite_garden positioned 0 64 0 if entity @a[distance=..96,nbt={Dimension:"roguecraft:infinite_garden"}] at @e[type=minecraft:marker,tag=star_inside] run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force
execute in roguecraft:infinite_garden positioned 0 64 0 if entity @a[distance=64..384,nbt={Dimension:"roguecraft:infinite_garden"}] at @e[type=minecraft:marker,tag=constellation_line,tag=!ring] run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force @a[distance=..384]

execute unless data storage roguecraft:master {stronghold:1b} run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:blaze_rod"}}]

#spectate
execute as @a[gamemode=spectator] at @s run function roguecraft:spectate

schedule function roguecraft:half_second 8t