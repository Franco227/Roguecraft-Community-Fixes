execute at @a[nbt={Dimension:"minecraft:the_end"},gamemode=!spectator] run summon minecraft:marker ~ ~ ~ {Tags:["tp"]}
execute as @e[type=marker,tag=tp] at @s run data modify entity @s Rotation set from entity @a[sort=nearest,gamemode=!spectator,limit=1] Rotation
execute as @a[nbt={Dimension:"minecraft:the_end"},gamemode=!spectator] at @s run function custom_ender_dragon:p3/tp/main_3
schedule function custom_ender_dragon:p3/tp/main_4 10t