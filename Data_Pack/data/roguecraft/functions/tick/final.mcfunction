#final
execute if entity @e[tag=egg_block] in minecraft:the_end positioned 0.5 74.5 0.5 run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute as @e[tag=egg_interaction] at @s if data entity @s attack run function roguecraft:ender_dragon/egg_damage
execute as @e[tag=egg_block] at @s run tp @s ~ ~ ~ ~2 ~

execute as @e[type=minecraft:area_effect_cloud,tag=end_crystal_spawner,nbt={Duration:40,Age:39}] at @s run function roguecraft:ender_dragon/spawn_crystal
execute as @e[type=minecraft:area_effect_cloud,tag=end_crystal_spawner,nbt={Duration:60,Age:59}] at @s run function roguecraft:ender_dragon/spawn_crystal
execute as @e[type=minecraft:area_effect_cloud,tag=end_crystal_spawner,nbt={Duration:80,Age:79}] at @s run function roguecraft:ender_dragon/spawn_crystal
execute as @e[type=minecraft:area_effect_cloud,tag=end_crystal_spawner,nbt={Duration:100,Age:99}] at @s run function roguecraft:ender_dragon/spawn_crystal
execute as @e[type=minecraft:area_effect_cloud,tag=end_crystal_spawner,nbt={Duration:120,Age:119}] at @s run function roguecraft:ender_dragon/spawn_crystal
execute as @e[type=minecraft:area_effect_cloud,tag=end_crystal_spawner,nbt={Duration:140,Age:139}] at @s run function roguecraft:ender_dragon/spawn_crystal
execute as @e[type=minecraft:area_effect_cloud,tag=end_crystal_spawner,nbt={Duration:160,Age:159}] at @s run function roguecraft:ender_dragon/spawn_crystal
execute as @e[type=minecraft:area_effect_cloud,tag=end_crystal_spawner,nbt={Duration:180,Age:179}] at @s run function roguecraft:ender_dragon/spawn_crystal
execute as @e[type=minecraft:area_effect_cloud,tag=end_crystal_spawner,nbt={Duration:200,Age:199}] at @s run function roguecraft:ender_dragon/spawn_crystal
execute as @e[type=minecraft:area_effect_cloud,tag=end_crystal_spawner,nbt={Duration:220,Age:219}] at @s run function roguecraft:ender_dragon/spawn_crystal

execute as @e[type=minecraft:area_effect_cloud,tag=egg_spawner,nbt={Duration:260,Age:259}] at @s run function roguecraft:ender_dragon/spawn_egg

execute as @a[tag=!hub,tag=!garden] in minecraft:the_end positioned 0 164 0 unless entity @s[distance=..168] run tag @s add final_tp
execute in minecraft:the_end run spreadplayers 0 0 1 30 false @a[tag=!hub,tag=!garden,tag=final_tp]
execute as @a[tag=final_tp] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~1 ~ 0.5 1.25
execute as @a[tag=final_tp] at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 5 100 force @a[distance=..16]
tag @a remove final_tp