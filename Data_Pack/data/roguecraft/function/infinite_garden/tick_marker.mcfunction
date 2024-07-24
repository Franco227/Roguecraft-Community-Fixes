particle minecraft:soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.3 400
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1.25

scoreboard players remove @e[type=minecraft:marker,tag=master] beam_amount 1
execute if score @e[type=minecraft:marker,tag=master,limit=1] beam_amount matches ..0 run scoreboard players set @e[type=minecraft:marker,tag=master] beam_amount 0

scoreboard players set @e[type=minecraft:marker,tag=master] inventory_slot 0
execute store result storage roguecraft:master inventory_slot int 1 run scoreboard players get @e[type=minecraft:marker,tag=master,limit=1] inventory_slot

advancement grant @a[distance=..24] only roguecraft:infinite_garden/keep_inventory

function roguecraft:infinite_garden/spawn_loot with storage roguecraft:master
kill @s