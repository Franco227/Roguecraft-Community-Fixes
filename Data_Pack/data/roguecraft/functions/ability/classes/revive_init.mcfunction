gamemode survival

summon minecraft:marker ~ ~ ~ {data:{defense:0,armor_toughness:0,max_health:0,speed:0,knockback_resistance:0,attack_speed:0,attack_damage:0,haste:0,jump_boost:0,resistance:0,protection:0,feather_falling:0,thorns:0,swift_sneak:0,aqua_affinity:0,respiration:0,efficiency:0,sharpness:0,looting:0,sweeping:0,power:0,punch:0,flame:0,infinity:0,pearls:0,current_strength:0},Tags:["main_storage"]}

scoreboard players remove @s speed 1
scoreboard players remove @s jump_boost 1
scoreboard players remove @s resistance 1
scoreboard players remove @s haste 1
scoreboard players remove @s[scores={class=3}] defense 50
scoreboard players remove @s[scores={class=4}] defense 10

execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.defense int 1 run scoreboard players get @s defense
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.max_health int 1 run scoreboard players get @s current_health
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.speed float 1 run scoreboard players get @s speed
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.attack_speed float 0.1 run scoreboard players get @s attack_speed
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.attack_damage int 1 run scoreboard players get @s attack_damage
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.haste int 1 run scoreboard players get @s haste
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.jump_boost int 1 run scoreboard players get @s jump_boost
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.resistance int 1 run scoreboard players get @s resistance
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.class int 1 run scoreboard players get @s class
scoreboard players remove @s current_strength 1
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.current_strength int 1 run scoreboard players get @s current_strength

scoreboard players add @s[scores={class=3}] defense 50
scoreboard players add @s[scores={class=4}] defense 10
scoreboard players add @s speed 1
scoreboard players add @s jump_boost 1
scoreboard players add @s resistance 1
scoreboard players add @s haste 1

function roguecraft:ability/classes/revive_apply with entity @e[type=minecraft:marker,tag=main_storage,limit=1] data