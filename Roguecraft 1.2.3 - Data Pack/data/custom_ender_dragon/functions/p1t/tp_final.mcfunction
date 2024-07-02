execute in the_end run tp @e[tag=dragon_p1] 0 150 0
data merge entity @e[tag=dragon_p1,limit=1] {DragonPhase:5}
tag @e[tag=dragon_p1] remove dragon_p1
execute in the_end run summon minecraft:lightning_bolt 0 150 0
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.deactivate hostile @s ~ ~ ~
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~
data merge entity @e[type=minecraft:ender_dragon,limit=1] {CustomName:' "Jean" '}
attribute @e[type=minecraft:ender_dragon,limit=1] minecraft:generic.max_health base set 1000
execute at @e[type=ender_dragon] run particle minecraft:explosion_emitter ~ ~ ~ 0.25 0.25 0.25 1 1 force
execute at @e[type=ender_dragon] run particle minecraft:explosion_emitter ~ ~ ~ 0.25 0.25 0.25 1 1 force
execute at @e[type=ender_dragon] run particle minecraft:explosion_emitter ~ ~ ~ 0.25 0.25 0.25 1 1 force
scoreboard players set @e[type=marker,tag=emaster] dragon_phase 2