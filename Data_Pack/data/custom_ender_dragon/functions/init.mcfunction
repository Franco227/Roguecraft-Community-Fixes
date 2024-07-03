execute in minecraft:the_end run summon marker 0 150 0 {Tags:["emaster"]}
scoreboard players set @e[tag=emaster] dragon_phase 0
scoreboard players set @e[tag=emaster] dragon_rng 0
scoreboard players set @e[tag=emaster] dragon_p1t_health 0
scoreboard players set @e[tag=emaster] dragon_health 1000

execute in minecraft:the_end positioned 0 100 0 at @e[type=minecraft:end_crystal,distance=..200] run summon minecraft:marker ~ ~ ~ {Tags:["end_crystal_marker"]}

bossbar set dragon name {"translate":"roguecraft.bossbar.ender_dragon"}

schedule clear custom_ender_dragon:init

function custom_ender_dragon:quarter_second_tick
function custom_ender_dragon:two_second_tick