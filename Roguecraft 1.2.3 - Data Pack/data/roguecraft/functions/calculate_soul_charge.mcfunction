execute store result storage roguecraft:master soul_charge_amount int 1 run scoreboard players get @s mob_kills
scoreboard players set @s mob_kills 0

execute at @s[scores={class=4}] run function roguecraft:give_soul_charge with storage roguecraft:master