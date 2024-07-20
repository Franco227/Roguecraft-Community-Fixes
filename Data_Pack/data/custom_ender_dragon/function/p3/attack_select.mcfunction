function custom_ender_dragon:rng

execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_rng matches 1..2 run function custom_ender_dragon:p3/lightning_ring/main
execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_rng matches 3..4 run function custom_ender_dragon:p3/missile/main
execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_rng matches 5..6 run function custom_ender_dragon:p3/shulker/main
execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_rng matches 7..8 run function custom_ender_dragon:p3/split/main
execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_rng matches 9..10 run function custom_ender_dragon:p3/tp/main_1