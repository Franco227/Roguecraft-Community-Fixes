effect give @a[nbt={Dimension:"minecraft:the_end"},gamemode=!spectator] minecraft:nausea 7 1 true
schedule function custom_ender_dragon:p3/tp/main_2 4s append
execute as @a[nbt={Dimension:"minecraft:the_end"},gamemode=!spectator] at @s run playsound minecraft:block.portal.travel hostile @s ~ ~ ~ 0.5 1.25