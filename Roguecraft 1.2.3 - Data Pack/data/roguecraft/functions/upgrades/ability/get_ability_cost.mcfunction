$execute store result storage roguecraft:master temp_score_cost int 1 run scoreboard players get @e[type=marker,tag=master,limit=1] ability_cost_$(temp_score_ability)_$(temp_score_level)
$function roguecraft:upgrades/ability/give_ability_$(temp_ability_num) with storage roguecraft:master