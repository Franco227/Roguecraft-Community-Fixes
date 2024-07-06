execute in minecraft:the_end run tp @e[type=minecraft:ender_dragon] 0 1500 0
execute in minecraft:the_end run summon minecraft:lightning_bolt 0 1500 0
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.deactivate hostile @s ~ ~ ~
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~
data merge entity @e[type=minecraft:ender_dragon,limit=1] {CustomName:' "Fantabulous Mega Hyper Jean" '}

execute at @e[type=minecraft:ender_dragon] run particle minecraft:explosion_emitter ~ ~ ~ 0.25 0.25 0.25 1 1 force
execute at @e[type=minecraft:ender_dragon] run particle minecraft:explosion_emitter ~ ~ ~ 0.25 0.25 0.25 1 1 force
execute at @e[type=minecraft:ender_dragon] run particle minecraft:explosion_emitter ~ ~ ~ 0.25 0.25 0.25 1 1 force