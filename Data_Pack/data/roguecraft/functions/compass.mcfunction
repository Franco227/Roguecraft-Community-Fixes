execute if data storage roguecraft:master {stronghold:0b} in the_nether run summon minecraft:armor_stand 0 0 0 {Tags:["structure_stand"],Invulnerable:1b,Marker:1b}
execute if data storage roguecraft:master {stronghold:0b} in the_nether run loot replace entity @e[type=minecraft:armor_stand,tag=structure_stand,limit=1] weapon.mainhand fish roguecraft:add_map_structure ~ ~ ~
execute as @s[scores={enter_nether=0}] if data storage roguecraft:master {stronghold:0b} run function roguecraft:compass_nether
execute as @s[scores={enter_nether=1}] if data storage roguecraft:master {stronghold:0b} run function roguecraft:compass_nether_fortress with entity @e[type=minecraft:armor_stand,tag=structure_stand,limit=1] HandItems[0].components."minecraft:map_decorations".+
kill @e[type=armor_stand,tag=structure_stand]
execute as @s[nbt={Dimension:"minecraft:overworld"}] if data storage roguecraft:master {stronghold:1b} run function roguecraft:compass_stronghold with storage roguecraft:master Region

execute as @s[nbt={Dimension:"minecraft:the_nether"}] if data storage roguecraft:master {stronghold:1b} run execute store result storage roguecraft:master entry_x int 1 run scoreboard players get @s entry_x
execute as @s[nbt={Dimension:"minecraft:the_nether"}] if data storage roguecraft:master {stronghold:1b} run execute store result storage roguecraft:master entry_z int 1 run scoreboard players get @s entry_z
execute as @s[nbt={Dimension:"minecraft:the_nether"}] if data storage roguecraft:master {stronghold:1b} run function roguecraft:compass_entry with storage roguecraft:master

#tellraw @a "test"