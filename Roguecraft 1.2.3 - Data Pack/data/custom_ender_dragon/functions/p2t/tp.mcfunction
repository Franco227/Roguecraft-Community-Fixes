execute in the_end run tp @e[type=minecraft:ender_dragon] 0 150 0
execute in the_end run summon minecraft:lightning_bolt 0 150 0
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.deactivate hostile @s ~ ~ ~
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~
execute at @e[type=ender_dragon] run particle minecraft:explosion_emitter ~ ~ ~ 0.25 0.25 0.25 1 1 force
execute at @e[type=ender_dragon] run particle minecraft:explosion_emitter ~ ~ ~ 0.25 0.25 0.25 1 1 force
execute at @e[type=ender_dragon] run particle minecraft:explosion_emitter ~ ~ ~ 0.25 0.25 0.25 1 1 force