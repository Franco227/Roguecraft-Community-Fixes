scoreboard players add @e[type=minecraft:marker,tag=master] beam_amount 1

execute in roguecraft:infinite_garden run summon minecraft:marker 0 0 0 {Tags:["infinite_garden_loot"]}
scoreboard players set @e[type=minecraft:marker,tag=master] inventory_slot 0
execute store result storage roguecraft:master inventory_slot int 1 run scoreboard players get @e[type=minecraft:marker,tag=master,limit=1] inventory_slot
function roguecraft:infinite_garden/set_marker_loot with storage roguecraft:master

execute as @e[type=minecraft:marker,tag=infinite_garden_loot,tag=!tagged,limit=1] run function roguecraft:infinite_garden/spread_marker

tag @e[type=minecraft:marker,tag=infinite_garden_loot] add tagged
clear @s

execute in roguecraft:infinite_garden positioned 0 0 0 as @e[distance=..1] run scoreboard players remove @e[type=minecraft:marker,tag=master] beam_amount 1
execute in roguecraft:infinite_garden positioned 0 0 0 run kill @e[distance=..1]
execute as @e[type=minecraft:marker,tag=infinite_garden_loot,nbt={data:{}}] run scoreboard players remove @e[type=minecraft:marker,tag=master] beam_amount 1
execute as @e[type=minecraft:marker,tag=infinite_garden_loot,nbt={data:{}}] run kill @e[type=minecraft:marker,tag=infinite_garden_loot,nbt={data:{}}]