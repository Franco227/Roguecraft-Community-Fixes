$execute as @e[nbt={UUID:$(target)}] run tag @s add current_main

execute store result entity @s data.soul_charge int 0.33 run scoreboard players get @s soul_charge
execute unless entity @e[tag=current_main] run function roguecraft:ability/classes/vengeful_spectre/kill with entity @s data
execute unless entity @e[tag=current_main,distance=..1] facing entity @e[tag=current_main,limit=1] feet run tp ^ ^ ^1
execute if entity @e[tag=current_main,distance=..1] run function roguecraft:ability/classes/vengeful_spectre/collision with entity @s data

execute as @e[tag=current_main] run tag @s remove current_main

execute unless block ~ ~1 ~ minecraft:end_portal unless block ~ ~1 ~ minecraft:end_portal_frame run setblock ~ ~1 ~ air destroy
playsound minecraft:particle.soul_escape master @s ~ ~ ~ 2
playsound minecraft:entity.ghast.hurt master @a ~ ~ ~ 0.05 0.5
particle dust 0.412 0 0.525 4 ~ ~1 ~ 0.05 0.05 0.05 0.025 5 force