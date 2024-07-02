tag @e[type=minecraft:ender_dragon] add dragon_p1

execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.deactivate hostile @s ~ ~ ~
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~

schedule function custom_ender_dragon:p1t/glass_pillar 40t append
schedule function custom_ender_dragon:p1t/tp 80t append
schedule function custom_ender_dragon:p1t/tp 116t append
schedule function custom_ender_dragon:p1t/tp 148t append
schedule function custom_ender_dragon:p1t/tp 176t append
schedule function custom_ender_dragon:p1t/tp 200t append
schedule function custom_ender_dragon:p1t/tp 220t append
schedule function custom_ender_dragon:p1t/tp 236t append
schedule function custom_ender_dragon:p1t/tp 248t append
schedule function custom_ender_dragon:p1t/tp 256t append
schedule function custom_ender_dragon:p1t/tp 263t append
schedule function custom_ender_dragon:p1t/tp 269t append
schedule function custom_ender_dragon:p1t/tp 274t append
schedule function custom_ender_dragon:p1t/tp_final 278t append
schedule function custom_ender_dragon:p1t/p2_start 478t append
schedule function custom_ender_dragon:p1t/place_pillars 478t append