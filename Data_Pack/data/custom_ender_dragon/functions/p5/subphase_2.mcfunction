data merge entity @e[type=minecraft:ender_dragon,limit=1] {CustomName:' "Magnificent Ultra Extraordinary Fantabulous Mega Hyper Jean" '}
scoreboard players set @e[type=minecraft:marker,tag=emaster] dragon_phase 13
schedule clear custom_ender_dragon:p5/attack_timer_15s
schedule function custom_ender_dragon:p5/attack_timer_10s 10s
execute at @e[type=minecraft:ender_dragon] run summon minecraft:lightning_bolt
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.deactivate hostile @s ~ ~ ~
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~