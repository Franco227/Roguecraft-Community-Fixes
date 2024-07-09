tp @e[tag=current_main,sort=nearest,limit=1]
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.25 0.8
particle minecraft:soul_fire_flame ~ ~1 ~ 0.1 0.1 0.1 0.25 25 force
scoreboard players remove @s soul_charge 1
execute store result entity @s data.soul_charge int 0.33 run scoreboard players get @s soul_charge
$execute unless entity @e[type=!#roguecraft:reaper_excluded,tag=!tamed,distance=..16,nbt=!{UUID:$(target)},sort=nearest,limit=1] run function roguecraft:ability/classes/vengeful_spectre/kill
$data modify entity @s data.target set from entity @e[type=!#roguecraft:reaper_excluded,tag=!tamed,distance=..16,nbt=!{UUID:$(target)},sort=nearest,limit=1] UUID
$damage @e[tag=current_main,sort=nearest,limit=1] $(damage) generic by @a[nbt={UUID:$(owner)},limit=1]

execute if score @s soul_charge matches ..0 run function roguecraft:ability/classes/vengeful_spectre/kill with entity @s data