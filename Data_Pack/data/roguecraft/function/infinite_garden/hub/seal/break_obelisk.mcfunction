data merge entity @n[type=minecraft:item_display] {item:{id:"minecraft:air"}}
execute as @n[type=minecraft:item_display,tag=obelisk] at @s positioned 0 58 19 facing entity @s eyes run playsound minecraft:entity.generic.explode master @a ^ ^ ^4 0.7 1.25
execute as @n[type=minecraft:item_display,tag=obelisk] at @s positioned 0 58 19 facing entity @s eyes run playsound minecraft:block.beacon.deactivate master @a ^ ^ ^4 1.5
execute as @n[type=minecraft:item_display,tag=obelisk] at @s run particle minecraft:explosion_emitter ~ ~3 ~
execute as @n[type=minecraft:item_display,tag=obelisk] at @s run particle minecraft:soul_fire_flame ~ ~2 ~ 0 0 0 1 1000
data merge entity @s {data:{status:3b}}