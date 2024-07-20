data merge storage roguecraft:master {upgrades:{defense:0,max_health:0,speed:0,attack_speed:0,attack_damage:0,jump_boost:0,resistance:0,protection:0,feather_falling:0,thorns:0,swift_sneak:0,aqua_affinity:0,respiration:0,efficiency:0,sharpness:0,looting:0,sweeping:0,power:0,punch:0,flame:0,infinity:0,pearls:0}}

scoreboard players remove @s speed 1
scoreboard players remove @s jump_boost 1
scoreboard players remove @s resistance 1
scoreboard players remove @s[scores={class=3}] defense 50
scoreboard players remove @s[scores={class=4}] defense 10

execute store result storage roguecraft:master upgrades.defense int 1 run scoreboard players get @s defense
execute store result storage roguecraft:master upgrades.max_health int 2 run scoreboard players get @s max_health
execute store result storage roguecraft:master upgrades.speed float 1 run scoreboard players get @s speed
execute store result storage roguecraft:master upgrades.attack_speed float 0.1 run scoreboard players get @s attack_speed
execute store result storage roguecraft:master upgrades.attack_damage int 1 run scoreboard players get @s attack_damage
execute store result storage roguecraft:master upgrades.jump_boost int 1 run scoreboard players get @s jump_boost
execute store result storage roguecraft:master upgrades.resistance int 1 run scoreboard players get @s resistance
execute store result storage roguecraft:master upgrades.protection int 1 run scoreboard players get @s protection
execute store result storage roguecraft:master upgrades.feather_falling int 1 run scoreboard players get @s feather_falling
execute store result storage roguecraft:master upgrades.thorns int 1 run scoreboard players get @s thorns
execute store result storage roguecraft:master upgrades.swift_sneak int 1 run scoreboard players get @s swift_sneak
execute store result storage roguecraft:master upgrades.aqua_affinity int 1 run scoreboard players get @s aqua_affinity
execute store result storage roguecraft:master upgrades.respiration int 1 run scoreboard players get @s respiration
execute store result storage roguecraft:master upgrades.efficiency int 1 run scoreboard players get @s efficiency
execute store result storage roguecraft:master upgrades.fortune int 1 run scoreboard players get @s fortune
execute store result storage roguecraft:master upgrades.sharpness int 1 run scoreboard players get @s sharpness
execute store result storage roguecraft:master upgrades.looting int 1 run scoreboard players get @s looting
execute store result storage roguecraft:master upgrades.sweeping int 1 run scoreboard players get @s sweeping
execute store result storage roguecraft:master upgrades.power int 1 run scoreboard players get @s power
execute store result storage roguecraft:master upgrades.punch int 1 run scoreboard players get @s punch
execute store result storage roguecraft:master upgrades.flame int 1 run scoreboard players get @s flame
execute store result storage roguecraft:master upgrades.infinity int 1 run scoreboard players get @s infinity
execute store result storage roguecraft:master upgrades.pearls int 1 run scoreboard players get @s pearls
execute store result storage roguecraft:master upgrades.class int 1 run scoreboard players get @s class

scoreboard players add @s speed 1
scoreboard players add @s jump_boost 1
scoreboard players add @s resistance 1
scoreboard players add @s[scores={class=3}] defense 50
scoreboard players add @s[scores={class=4}] defense 10

execute if data entity @s EnderItems[0] run function roguecraft:infinite_garden/hub/ender_chest/clear_enderchest
function roguecraft:upgrades/apply with storage roguecraft:master upgrades