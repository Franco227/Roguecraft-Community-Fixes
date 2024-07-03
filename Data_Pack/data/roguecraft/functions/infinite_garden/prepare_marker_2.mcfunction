scoreboard players add @e[type=marker,tag=master] beam_amount 1

execute in roguecraft:infinite_garden run summon marker 0 0 0 {Tags:["infinite_garden_loot"]}
scoreboard players set @e[type=marker,tag=master] inventory_slot 0
execute store result storage roguecraft:master inventory_slot int 1 run scoreboard players get @e[tag=master,type=marker,limit=1] inventory_slot
function roguecraft:infinite_garden/set_marker_loot with storage roguecraft:master

execute as @e[tag=infinite_garden_loot,tag=!tagged,type=marker,limit=1] run function roguecraft:infinite_garden/spread_marker

tag @e[tag=infinite_garden_loot] add tagged
clear @s

execute in roguecraft:infinite_garden positioned 0 0 0 as @e[distance=..1] run scoreboard players remove @e[type=marker,tag=master] beam_amount 1
execute in roguecraft:infinite_garden positioned 0 0 0 run kill @e[distance=..1]
execute as @e[tag=infinite_garden_loot,nbt={data:{}}] run scoreboard players remove @e[type=marker,tag=master] beam_amount 1
execute as @e[tag=infinite_garden_loot,nbt={data:{}}] run kill @e[tag=infinite_garden_loot,nbt={data:{}}]