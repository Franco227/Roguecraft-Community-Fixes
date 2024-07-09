scoreboard players set @e[type=minecraft:marker,tag=master,limit=1] blaze_rods 1
tellraw @a[tag=!garden,tag=!hub] {"translate":"roguecraft.chat_messages.stronghold_generate","with":[{"nbt":"Region.X","storage":"roguecraft:master"},{"nbt":"Region.Z","storage":"roguecraft:master"}],"bold":true,"color":"dark_purple"}

execute as @a[tag=!garden,tag=!hub] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.3
execute as @a[tag=!garden,tag=!hub] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 2

execute if data storage roguecraft:master {stronghold:1b} run function roguecraft:wildfire/spawn_stronghold_2 with storage roguecraft:master Region