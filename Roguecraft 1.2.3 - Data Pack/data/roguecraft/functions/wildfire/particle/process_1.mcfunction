tp @s ~ ~ ~ ~1 ~
execute store result storage roguecraft:master marker_distance float 0.2 run scoreboard players get @s marker_distance
function roguecraft:wildfire/particle/process_2 with storage roguecraft:master