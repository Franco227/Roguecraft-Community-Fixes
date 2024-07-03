execute store result storage roguecraft:master hover.real_speed float 0.000004 run scoreboard players get @s hover_speed
execute store result storage roguecraft:master hover.real_speed_negative float -0.000002 run scoreboard players get @s hover_speed
execute if entity @s[tag=obelisk] unless score @s hover_speed matches 0 run function roguecraft:infinite_garden/hub/seal/apply_hover with storage roguecraft:master hover
execute unless entity @s[tag=obelisk] unless score @s hover_speed matches 0 run function roguecraft:wildfire/apply_hover with storage roguecraft:master hover