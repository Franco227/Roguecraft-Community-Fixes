scoreboard players set @s parry_timer 0
execute at @s on attacker run damage @s 20 minecraft:generic by @a[sort=nearest,limit=1]
playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.75 1.5
playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 0.75
scoreboard players remove @s mana 5
scoreboard players add @s soul_charge 1
scoreboard players operation @s mana += @e[type=minecraft:marker,tag=master,limit=1] ability_cost_5_2
function roguecraft:ability/tell_1

execute as @e[type=minecraft:marker,tag=id] run function roguecraft:set_mana_bar with entity @s data