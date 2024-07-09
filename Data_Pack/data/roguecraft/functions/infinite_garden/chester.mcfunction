tellraw @a[distance=..40] {"translate":"roguecraft.chat_messages.chester","bold":true,"color":"gray"}
advancement grant @a[distance=..40] only roguecraft:infinite_garden/chester
execute at @e[type=minecraft:wolf,tag=chester,distance=..10] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 1.25
execute at @e[type=minecraft:wolf,tag=chester,distance=..10] run particle minecraft:white_smoke ~ ~ ~ 0.5 0.5 0.5 0.01 300
execute as @e[type=minecraft:wolf,tag=chester,distance=..10] run tp 0 -500 0