execute at @a[gamemode=!spectator,nbt={Dimension:"minecraft:the_end"}] run summon minecraft:marker ~ ~ ~ {Tags:["tp"]}
execute as @e[type=minecraft:marker,tag=tp] at @s run data modify entity @s Rotation set from entity @p[gamemode=!spectator] Rotation
execute as @a[gamemode=!spectator,nbt={Dimension:"minecraft:the_end"}] at @s run function custom_ender_dragon:p3/tp/main_3
schedule function custom_ender_dragon:p3/tp/main_4 10t