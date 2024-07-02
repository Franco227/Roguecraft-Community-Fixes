$execute store result storage roguecraft:master temp_score_level int 1 run scoreboard players get @s ability_$(name)
$data merge storage roguecraft:master {temp_name:"$(name)"}

execute as @e[type=marker,tag=id] run data modify storage roguecraft:master temp_id set from entity @s data.id

function roguecraft:ability/tell_4 with storage roguecraft:master