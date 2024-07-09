summon minecraft:marker ~ ~ ~ {data:{defense:0,armor_toughness:0,max_health:0,speed:0,knockback_resistance:0,attack_speed:0,attack_damage:0,haste:0,jump_boost:0,resistance:0,protection:0,feather_falling:0,thorns:0,swift_sneak:0,aqua_affinity:0,respiration:0,efficiency:0,sharpness:0,looting:0,sweeping:0,power:0,punch:0,flame:0,infinity:0,pearls:0},Tags:["main_storage"]}

scoreboard players remove @s speed 1
scoreboard players remove @s jump_boost 1
scoreboard players remove @s resistance 1
scoreboard players remove @s haste 1
scoreboard players remove @s[scores={class=3}] defense 50
scoreboard players remove @s[scores={class=4}] defense 10

execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.defense int 1 run scoreboard players get @s defense
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.armor_toughness int 1 run scoreboard players get @s armor_toughness
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.max_health int 2 run scoreboard players get @s max_health
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.speed float 1 run scoreboard players get @s speed
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.knockback_resistance float 0.1 run scoreboard players get @s knockback_resistance
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.attack_speed float 0.1 run scoreboard players get @s attack_speed
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.attack_damage int 1 run scoreboard players get @s attack_damage
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.haste int 1 run scoreboard players get @s haste
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.jump_boost int 1 run scoreboard players get @s jump_boost
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.resistance int 1 run scoreboard players get @s resistance
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.protection int 1 run scoreboard players get @s protection
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.feather_falling int 1 run scoreboard players get @s feather_falling
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.thorns int 1 run scoreboard players get @s thorns
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.swift_sneak int 1 run scoreboard players get @s swift_sneak
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.aqua_affinity int 1 run scoreboard players get @s aqua_affinity
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.respiration int 1 run scoreboard players get @s respiration
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.efficiency int 1 run scoreboard players get @s efficiency
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.fortune int 1 run scoreboard players get @s fortune
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.sharpness int 1 run scoreboard players get @s sharpness
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.looting int 1 run scoreboard players get @s looting
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.sweeping int 1 run scoreboard players get @s sweeping
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.power int 1 run scoreboard players get @s power
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.punch int 1 run scoreboard players get @s punch
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.flame int 1 run scoreboard players get @s flame
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.infinity int 1 run scoreboard players get @s infinity
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.pearls int 1 run scoreboard players get @s pearls
execute store result entity @e[type=minecraft:marker,tag=main_storage,limit=1] data.class int 1 run scoreboard players get @s class

scoreboard players add @s speed 1
scoreboard players add @s jump_boost 1
scoreboard players add @s resistance 1
scoreboard players add @s haste 1
scoreboard players add @s[scores={class=3}] defense 50
scoreboard players add @s[scores={class=4}] defense 10

execute if entity @s[tag=garden] run data merge entity @e[type=minecraft:marker,tag=main_storage,limit=1] {}

execute if data entity @s EnderItems[0] run function roguecraft:infinite_garden/hub/ender_chest/clear_enderchest
function roguecraft:upgrades/apply with entity @e[type=minecraft:marker,tag=main_storage,limit=1] data