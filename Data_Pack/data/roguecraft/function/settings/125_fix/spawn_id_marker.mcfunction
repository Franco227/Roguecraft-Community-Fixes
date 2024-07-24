$execute in roguecraft:infinite_garden run summon minecraft:marker 0 100 0 {Tags:["id"],data:{id:$(bossbar_amount)}}

execute store result storage roguecraft:master bossbar_amount int 1 run scoreboard players remove @e[type=minecraft:marker,tag=master,limit=1] bossbar_amount 1
execute unless data storage roguecraft:master {bossbar_amount:-1} run function roguecraft:settings/125_fix/spawn_id_marker with storage roguecraft:master
execute if data storage roguecraft:master {bossbar_amount:-1} run tellraw @a {"text":"[Respawning ID Marker - Done]","color":"green"}