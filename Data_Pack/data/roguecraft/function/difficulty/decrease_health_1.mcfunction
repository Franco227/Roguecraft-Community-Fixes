execute store result score @e[type=minecraft:marker,tag=master,limit=1] temp_health run attribute @s minecraft:generic.max_health base get
execute as @e[type=minecraft:marker,tag=master,limit=1] if score @s temp_health matches 5.. run scoreboard players remove @s temp_health 2
execute as @e[type=minecraft:marker,tag=master,limit=1] if score @s temp_health matches 3.. run scoreboard players remove @s temp_health 2
execute store result storage roguecraft:master temp_score int 1 run scoreboard players get @e[type=minecraft:marker,tag=master,limit=1] temp_health
function roguecraft:difficulty/decrease_health_2 with storage roguecraft:master