data merge entity @e[type=minecraft:ender_dragon,limit=1] {CustomName:' "Supercalifragilisticexpialidocious Magnificent Ultra Extraordinary Fantabulous Mega Hyper Jean" '}
scoreboard players set @e[type=minecraft:marker,tag=emaster] dragon_phase 14
schedule clear custom_ender_dragon:p5/attack_timer_10s
schedule function custom_ender_dragon:p5/attack_timer_5s 5s
execute at @e[type=minecraft:ender_dragon] run summon minecraft:lightning_bolt
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.deactivate hostile @s ~ ~ ~
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~