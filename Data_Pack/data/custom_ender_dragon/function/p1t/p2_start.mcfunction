execute in minecraft:the_end run summon minecraft:lightning_bolt 0 150 0
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.deactivate hostile @s ~ ~ ~
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~
data merge entity @e[type=minecraft:ender_dragon,limit=1] {Health:1000f}
bossbar set minecraft:dragon max 800
scoreboard players set @e[type=minecraft:marker,tag=emaster] dragon_phase 3
data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:1}

schedule function custom_ender_dragon:p2/attack_timer 5s