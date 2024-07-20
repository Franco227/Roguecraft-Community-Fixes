execute if score @s ability_lava_walker matches 3 run scoreboard players remove @s shops_completed 1
execute if score @s ability_lava_walker matches 1.. run scoreboard players remove @s ability_lava_walker 1

execute if score @s ability_lava_walker matches 1.. run function roguecraft:update/110/dec_lava_walker