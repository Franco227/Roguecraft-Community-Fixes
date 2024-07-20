execute store result storage roguecraft:master boss_id int 1 run scoreboard players get @e[type=minecraft:marker,tag=master,limit=1] boss_id
scoreboard players add @e[type=minecraft:marker,tag=master,limit=1] boss_id 1

data merge storage roguecraft:master {wildfire_arena_direction:0}
execute unless block ~ ~ ~3 nether_bricks run data merge storage roguecraft:master {wildfire_arena_direction:0}
execute unless block ~-3 ~ ~ nether_bricks run data merge storage roguecraft:master {wildfire_arena_direction:1}
execute unless block ~ ~ ~-3 nether_bricks run data merge storage roguecraft:master {wildfire_arena_direction:2}
execute unless block ~3 ~ ~ nether_bricks run data merge storage roguecraft:master {wildfire_arena_direction:3}

function roguecraft:wildfire/spawn_2 with storage roguecraft:master