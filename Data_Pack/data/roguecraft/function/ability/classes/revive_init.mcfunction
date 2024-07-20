gamemode survival

data merge storage roguecraft:master {upgrades:{defense:0,max_health:0,speed:0,attack_speed:0,attack_damage:0,jump_boost:0,resistance:0,protection:0,feather_falling:0,thorns:0,swift_sneak:0,aqua_affinity:0,respiration:0,efficiency:0,sharpness:0,looting:0,sweeping:0,power:0,punch:0,flame:0,infinity:0,pearls:0,current_strength:0}}

scoreboard players remove @s speed 1
scoreboard players remove @s jump_boost 1
scoreboard players remove @s resistance 1
scoreboard players remove @s[scores={class=3}] defense 50
scoreboard players remove @s[scores={class=4}] defense 10

execute store result storage roguecraft:master upgrades.defense int 1 run scoreboard players get @s defense
execute store result storage roguecraft:master upgrades.max_health int 1 run scoreboard players get @s current_health
execute store result storage roguecraft:master upgrades.speed float 1 run scoreboard players get @s speed
execute store result storage roguecraft:master upgrades.attack_speed float 0.1 run scoreboard players get @s attack_speed
execute store result storage roguecraft:master upgrades.attack_damage int 1 run scoreboard players get @s attack_damage
execute store result storage roguecraft:master upgrades.jump_boost int 1 run scoreboard players get @s jump_boost
execute store result storage roguecraft:master upgrades.resistance int 1 run scoreboard players get @s resistance
execute store result storage roguecraft:master upgrades.class int 1 run scoreboard players get @s class
scoreboard players remove @s current_strength 1
execute store result storage roguecraft:master upgrades.current_strength int 1 run scoreboard players get @s current_strength

scoreboard players add @s[scores={class=3}] defense 50
scoreboard players add @s[scores={class=4}] defense 10
scoreboard players add @s speed 1
scoreboard players add @s jump_boost 1
scoreboard players add @s resistance 1

function roguecraft:ability/classes/revive_apply with storage roguecraft:master upgrades