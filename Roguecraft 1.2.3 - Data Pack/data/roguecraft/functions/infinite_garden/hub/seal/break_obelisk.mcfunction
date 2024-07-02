data merge entity @e[type=item_display,sort=nearest,limit=1] {item:{id:"minecraft:air"}}
execute as @e[type=item_display,tag=obelisk,sort=nearest,limit=1] at @s positioned 0 58 19 facing entity @s eyes run playsound minecraft:entity.generic.explode master @a ^ ^ ^4 0.7 1.25
execute as @e[type=item_display,tag=obelisk,sort=nearest,limit=1] at @s positioned 0 58 19 facing entity @s eyes run playsound minecraft:block.beacon.deactivate master @a ^ ^ ^4 1.5
execute as @e[type=item_display,tag=obelisk,sort=nearest,limit=1] at @s run particle minecraft:explosion_emitter ~ ~3 ~
execute as @e[type=item_display,tag=obelisk,sort=nearest,limit=1] at @s run particle minecraft:soul_fire_flame ~ ~2 ~ 0 0 0 1 1000
data merge entity @s {data:{status:3b}}