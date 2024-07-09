schedule clear roguecraft:ender_dragon/death

execute in minecraft:the_end run spreadplayers 0 0 0 30 false @a[gamemode=spectator,tag=!garden,tag=!hub]
gamemode survival @a[tag=!garden,tag=!hub]

effect give @a[tag=!garden,tag=!hub] minecraft:resistance infinite 4 true
effect give @a[tag=!garden,tag=!hub] minecraft:saturation infinite 0 true

data merge storage roguecraft:master {end:0b}
tag @a[tag=!garden,tag=!hub] add victory
tag @a remove end

execute as @e[type=minecraft:marker,tag=id] run function roguecraft:set_mana_bar with entity @s data

schedule function roguecraft:ender_dragon/spawn_main 3t append