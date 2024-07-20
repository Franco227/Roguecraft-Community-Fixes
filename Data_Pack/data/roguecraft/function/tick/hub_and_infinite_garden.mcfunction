#deaths
execute as @a[tag=garden,scores={deaths=1..}] unless data entity @s {Health:0.0f} run function roguecraft:game_loop/run_end_singular

execute as @e[type=#roguecraft:hub_threat_major] at @s in roguecraft:infinite_garden positioned 0 ~ 0 if entity @s[distance=..84] run advancement grant @a only roguecraft:infinite_garden/destroy_hub
execute as @e[type=#roguecraft:hub_threat] at @s in roguecraft:infinite_garden positioned 0 ~ 0 if entity @s[distance=76..84] run kill @s

#builder
execute if entity @e[type=minecraft:marker,tag=hub_builder] run function roguecraft:infinite_garden/hub/builder/main

#infinite garden visuals
execute at @e[type=minecraft:marker,tag=infinite_garden_loot] run particle minecraft:dust{color:[0.0,1.0,1.0],scale:4.0} ~ 132 ~ 1 30 1 0 5 force
execute in roguecraft:infinite_garden positioned 0 64 0 if entity @a[distance=62..,nbt={Dimension:"roguecraft:infinite_garden"}] at @e[type=minecraft:armor_stand,tag=constellation] run particle minecraft:wax_on ~ ~ ~ 0.2 0.2 0.2 0 1 force
execute in roguecraft:infinite_garden positioned 0 64 0 if entity @a[distance=62..,nbt={Dimension:"roguecraft:infinite_garden"}] at @e[type=minecraft:marker,tag=constellation_line,tag=ring] run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 normal

#toggle timers
execute as @a[scores={new_world_timer=1..}] run function roguecraft:trigger_commands/new_world_timer with storage roguecraft:master Region
execute as @a[scores={single_run_timer=1..}] run function roguecraft:trigger_commands/single_run_timer with storage roguecraft:master Region

#music
stopsound @a[tag=hub] music
stopsound @a[tag=garden] music