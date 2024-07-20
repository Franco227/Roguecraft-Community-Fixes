execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.deactivate hostile @s ~ ~ ~
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~

execute in minecraft:the_end positioned 0 100 0 run kill @e[type=end_crystal,distance=..300]

schedule clear custom_ender_dragon:p2/attack_timer

schedule function custom_ender_dragon:p2t/tp_minor 10t append
schedule function custom_ender_dragon:p2t/tp_minor 20t append
schedule function custom_ender_dragon:p2t/tp_minor 30t append
schedule function custom_ender_dragon:p2t/tp_minor 40t append
schedule function custom_ender_dragon:p2t/tp 50t append
schedule function custom_ender_dragon:p2t/place_pillars 50t append
schedule function custom_ender_dragon:p2t/p3_start 50t append