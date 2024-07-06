particle minecraft:soul_fire_flame ~ ~0.75 ~ 0.05 0.05 0.05 0.1 50
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.25 0.8
playsound minecraft:particle.soul_escape master @a ~ ~ ~ 1 0.5

$scoreboard players add @s soul_charge $(soul_charge_amount)
execute if score @s soul_charge > @s max_soul_charge run scoreboard players operation @s soul_charge = @s max_soul_charge

execute as @e[tag=id,type=minecraft:marker] run function roguecraft:set_mana_bar with entity @s data