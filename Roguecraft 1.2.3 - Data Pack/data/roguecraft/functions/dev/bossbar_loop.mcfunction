$bossbar remove wildfire_$(boss_id)

execute unless score @e[type=marker,tag=master,limit=1] boss_id matches 0 run scoreboard players remove @e[type=marker,tag=master,limit=1] boss_id 1
execute store result storage roguecraft:master boss_id int 1 run scoreboard players get @e[type=marker,tag=master,limit=1] boss_id
execute unless score @e[type=marker,tag=master,limit=1] boss_id matches 0 run function roguecraft:dev/bossbar_loop with storage roguecraft:master