execute as @a[tag=hub] at @s if block ~ ~ ~ minecraft:blue_stained_glass_pane run tp 0.00 100 0.00
execute as @a[tag=hub] at @s if block ~ ~ ~ minecraft:red_stained_glass_pane run tp 0.00 100 0.00
playsound minecraft:entity.enderman.teleport master @a 0.00 100 0.00 0.5 1.25
particle minecraft:reverse_portal 0.00 100 0.0 0 0 0 10 300 force