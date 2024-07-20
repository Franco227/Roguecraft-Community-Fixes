tp @n[tag=current_main]
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.25 0.8
particle minecraft:soul_fire_flame ~ ~1 ~ 0.1 0.1 0.1 0.25 25 force
scoreboard players remove @s soul_charge 1
execute store result entity @s data.soul_charge int 0.33 run scoreboard players get @s soul_charge
$execute unless entity @n[nbt=!{UUID:$(target)},distance=..16,type=!#roguecraft:reaper_excluded,tag=!tamed] run function roguecraft:ability/classes/vengeful_spectre/kill
$data modify entity @s data.target set from entity @n[nbt=!{UUID:$(target)},distance=..16,type=!#roguecraft:reaper_excluded,tag=!tamed] UUID
$damage @n[tag=current_main] $(damage) generic by @a[nbt={UUID:$(owner)},limit=1]
tag @e[tag=current_main] remove current_main

execute if score @s soul_charge matches ..0 run function roguecraft:ability/classes/vengeful_spectre/kill with entity @s data