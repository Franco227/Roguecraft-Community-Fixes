tag @e[type=armor_stand] remove focus
tag @e[type=armor_stand] remove tagged
tag @e[type=minecraft:armor_stand,sort=nearest,limit=1] add focus
tellraw @a "set focus on nearest armor stand"