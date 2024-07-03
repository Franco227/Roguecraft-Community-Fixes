tp @s ~ ~ ~ 90 0
playsound minecraft:entity.enderman.teleport master @a ~ ~1 ~ 0.5 1.25
particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 5 100 force @a[distance=..16]
 
scoreboard players set @s hub_tp 0