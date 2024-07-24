#$tellraw @a "execute store success storage roguecraft:master new_bossbar byte 1 run bossbar add mana_$(bossbar_amount) "new_bossbar

$execute store success storage roguecraft:master new_bossbar byte 1 run bossbar add mana_$(bossbar_amount) "Mana"

execute if data storage roguecraft:master {new_bossbar:1b} store result storage roguecraft:master bossbar_amount int 1 run scoreboard players remove @e[type=minecraft:marker,tag=master,limit=1] bossbar_amount 1
execute if data storage roguecraft:master {new_bossbar:1b} run function roguecraft:settings/125_fix/spawn_id_marker with storage roguecraft:master
$execute if data storage roguecraft:master {new_bossbar:1b} run bossbar remove mana_$(bossbar_amount)

execute if data storage roguecraft:master {new_bossbar:0b} store result storage roguecraft:master bossbar_amount int 1 run scoreboard players add @e[type=minecraft:marker,tag=master,limit=1] bossbar_amount 1
execute if data storage roguecraft:master {new_bossbar:0b} run function roguecraft:settings/125_fix/get_bossbar_amount with storage roguecraft:master