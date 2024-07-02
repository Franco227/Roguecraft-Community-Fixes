$execute store result storage roguecraft:master temp_score_level int 1 run scoreboard players get @s ability_$(name)
$data merge storage roguecraft:master {temp_name:"$(name)"}

function roguecraft:ability/check_mana with storage roguecraft:master