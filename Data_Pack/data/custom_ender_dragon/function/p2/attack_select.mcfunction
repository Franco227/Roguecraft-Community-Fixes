function custom_ender_dragon:rng

execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_rng matches 1..2 run function custom_ender_dragon:p2/balls/main_1
execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_rng matches 3..4 run function custom_ender_dragon:p2/lightning_endermen/main_1
execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_rng matches 5..6 run function custom_ender_dragon:p2/enderman_trigger/main
execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_rng matches 7..8 run function custom_ender_dragon:p2/meteor/main_1
execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_rng matches 9..10 run function custom_ender_dragon:p2/tnt/main