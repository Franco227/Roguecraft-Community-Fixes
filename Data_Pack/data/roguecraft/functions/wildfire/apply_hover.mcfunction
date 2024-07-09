$execute as @e[type=minecraft:slime,tag=boss_hitbox,tag=$(boss_id),tag=main] at @s run tp ~ ~$(real_speed) ~
$execute as @e[type=minecraft:item_display,tag=wildfire_body,tag=$(boss_id)] at @s run tp ~ ~$(real_speed) ~
$execute as @e[type=minecraft:item_display,tag=wildfire_head,tag=$(boss_id)] at @s run tp ~ ~$(real_speed) ~