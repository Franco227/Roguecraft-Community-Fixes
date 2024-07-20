execute store result storage roguecraft:master random int 1 run random value 0..2
execute as @a[tag=garden] at @s run function roguecraft:infinite_garden/play_music with storage roguecraft:master

schedule function roguecraft:quarter_hour 900s