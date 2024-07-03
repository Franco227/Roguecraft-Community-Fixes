execute at @e[type=ender_dragon] run tp @e[type=minecraft:ender_dragon] @e[type=marker,tag=phase_2t,distance=1..,sort=random,limit=1]
execute at @e[type=minecraft:ender_dragon] run summon minecraft:lightning_bolt
data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:5}
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.deactivate hostile @s ~ ~ ~
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~
execute at @e[type=ender_dragon] run particle minecraft:explosion_emitter ~ ~ ~ 0.25 0.25 0.25 1 1 force