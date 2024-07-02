execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.deactivate hostile @s ~ ~ ~
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~

schedule clear custom_ender_dragon:p3/attack_timer

schedule function custom_ender_dragon:p3t/tp_minor 10t append
schedule function custom_ender_dragon:p3t/tp_minor 20t append
schedule function custom_ender_dragon:p3t/tp_minor 30t append
schedule function custom_ender_dragon:p3t/tp_minor 40t append
schedule function custom_ender_dragon:p3t/tp 50t append
schedule function custom_ender_dragon:p3t/p4_start_1 100t append
schedule function custom_ender_dragon:p3t/p4_start_2 140t append