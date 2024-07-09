execute unless entity @e[type=minecraft:marker,tag=summon_portal] if entity @e[type=minecraft:ender_dragon] run bossbar set minecraft:dragon players @a[nbt={Dimension:"minecraft:the_end"}]

execute at @e[tag=phase_4_mob] run particle minecraft:reverse_portal ~ ~0.5 ~ 1 1 1 0.2 3

schedule function custom_ender_dragon:quarter_second_tick 5t