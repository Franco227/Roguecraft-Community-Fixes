execute if entity @e[type=minecraft:marker,distance=..0.5,tag=upgrade_shop] as @a[tag=current_player] run function roguecraft:shops/upgrade/tell_result with entity @e[type=minecraft:marker,distance=..0.5,tag=upgrade_shop,limit=1] data
execute if entity @e[type=minecraft:marker,distance=..0.5,tag=progressive_shop] as @a[tag=current_player] run function roguecraft:shops/progressive/tell_result with entity @e[type=minecraft:marker,distance=..0.5,tag=progressive_shop,limit=1] data
execute if entity @e[type=minecraft:marker,distance=..0.5,tag=ability_shop] as @a[tag=current_player] run function roguecraft:shops/ability/tell_result with entity @e[type=minecraft:marker,distance=..0.5,tag=ability_shop,limit=1] data
execute if entity @e[type=minecraft:marker,distance=..0.5,tag=class_shop] as @a[tag=current_player] run function roguecraft:shops/class/tell_result with entity @e[type=minecraft:marker,distance=..0.5,tag=class_shop,limit=1] data