scoreboard players set @e[type=marker,tag=emaster] dragon_phase 12

kill @e[tag=summon_portal]
particle minecraft:reverse_portal ~ ~ ~ 0 0 0 3 2000 force

execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.deactivate hostile @s ~ ~ ~
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~

bossbar remove minecraft:phase_4_mobs

schedule function custom_ender_dragon:p4t/main_2 5s append