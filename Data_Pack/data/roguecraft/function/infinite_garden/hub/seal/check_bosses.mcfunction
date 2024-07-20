execute if data storage roguecraft:master {bosses_defeated:{custos:1b}} run data merge entity @e[type=minecraft:marker,tag=custos,limit=1,nbt={data:{status:1b}}] {data:{status:2b}}
execute if data storage roguecraft:master {bosses_defeated:{tyrannus:1b}} run data merge entity @e[type=minecraft:marker,tag=tyrannus,limit=1,nbt={data:{status:1b}}] {data:{status:2b}}
data merge storage roguecraft:master {bosses_checked:1b}

execute as @e[type=minecraft:marker,tag=obelisk,nbt={data:{status:2b}}] at @s run function roguecraft:infinite_garden/hub/seal/break_obelisk