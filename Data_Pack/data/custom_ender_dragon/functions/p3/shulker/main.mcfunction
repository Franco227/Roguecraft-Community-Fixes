execute as @a[gamemode=!spectator,nbt={Dimension:"minecraft:the_end"}] at @e[type=minecraft:ender_dragon] run function custom_ender_dragon:p3/shulker/spawn_bullet
execute at @e[type=minecraft:ender_dragon] run particle minecraft:dust{color:[1.0,0.5,1.0],scale:4.0} ~ ~ ~ 2 2 2 0.01 100 force
execute as @a[gamemode=!spectator,nbt={Dimension:"minecraft:the_end"}] at @s facing entity @e[type=minecraft:ender_dragon,limit=1] eyes run playsound minecraft:entity.shulker.shoot hostile @a ^ ^ ^4 1 1