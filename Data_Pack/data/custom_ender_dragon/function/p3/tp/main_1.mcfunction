effect give @a[gamemode=!spectator,nbt={Dimension:"minecraft:the_end"}] minecraft:nausea 7 1 true
schedule function custom_ender_dragon:p3/tp/main_2 4s append
execute as @a[gamemode=!spectator,nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.portal.travel hostile @s ~ ~ ~ 0.5 1.25