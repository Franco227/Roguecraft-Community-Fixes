scoreboard players add @e[type=minecraft:marker,tag=master,limit=1] temp_health 1
execute store result storage roguecraft:master temp_score_level int 1 run scoreboard players get @e[type=minecraft:marker,tag=master,limit=1] temp_health
function roguecraft:ability/classes/glass_cannon_3 with storage roguecraft:master