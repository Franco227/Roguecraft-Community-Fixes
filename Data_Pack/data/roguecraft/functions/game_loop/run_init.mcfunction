data merge storage roguecraft:master {start:0}
data merge storage roguecraft:master {stronghold:0b}
data merge storage roguecraft:master {stronghold_generated:0b}
data merge storage roguecraft:master {end:0}
data merge storage roguecraft:master {end_generation_list:["c3","c2","d3","c4","b3","b2","d2","d4","b4","d1","c1","b1","a2","a3","a4","b5","c5","d5","e4","e3","e2","e1","a1","a5","e1"]}
data merge storage roguecraft:master {run_active:1}
data merge storage roguecraft:master {end_generated:0}
data merge storage roguecraft:master {bedrock_platform_left:0}
scoreboard players set @e[type=marker,tag=master] blaze_rods 0

$execute positioned $(X) 320 $(Z) positioned over world_surface run tp @a[tag=ready_final] ~ ~ ~
$execute positioned $(X) 320 $(Z) positioned over world_surface run playsound minecraft:block.beacon.power_select master @a[tag=ready_final] ~ ~ ~ 1 2

execute at @r[tag=ready_final] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 bedrock
execute at @r[tag=ready_final] run setworldspawn ~ ~ ~
execute at @r[tag=ready_final] run summon minecraft:interaction ~ ~-0.5 ~ {width:4,height:3,Tags:["bedrock_blocker"]}
time set day
weather clear
title @a[tag=ready_final] subtitle {"translate":"roguecraft.bossbar.wait"}
title @a[tag=ready_final] title {"translate":"roguecraft.bossbar.run","with":[{"score":{"name":"@e[tag=master,limit=1]","objective":"run_number"}}],"bold":true,"color":"green"}

gamerule playersSleepingPercentage 0

execute as @e[type=marker,tag=master] run function roguecraft:game_loop/shift_game_region
$forceload remove $(X) $(Z)
execute in the_nether run forceload add 0 0 -1 -1

bossbar set minecraft:difficulty players @a[tag=ready_final]
bossbar set minecraft:difficulty name {"translate":"roguecraft.bossbar.difficulty_level","with":["1"]}
scoreboard players set @e[type=marker,tag=master] difficulty 0
scoreboard players set @e[type=marker,tag=master] difficulty_level 1
scoreboard players set @e[type=marker,tag=master] single_run_timer 0
execute if data storage roguecraft:master {single_run_display:1b} run scoreboard players set single_run_timer speedrun_timer 0

tag @a remove ready_final