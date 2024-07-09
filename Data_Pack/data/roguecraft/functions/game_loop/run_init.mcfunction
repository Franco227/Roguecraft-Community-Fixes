data merge storage roguecraft:master {start:0}
data merge storage roguecraft:master {stronghold:0b}
data merge storage roguecraft:master {stronghold_generated:0b}
data merge storage roguecraft:master {end:0}
data merge storage roguecraft:master {run_active:1}
data merge storage roguecraft:master {end_cleared:0b}
data merge storage roguecraft:master {bedrock_platform_left:0}

$execute positioned $(X) 320 $(Z) positioned over world_surface run tp @a[tag=ready_final] ~ ~ ~
$execute positioned $(X) 320 $(Z) positioned over world_surface run playsound minecraft:block.beacon.power_select master @a[tag=ready_final] ~ ~ ~ 1 2

execute at @r[tag=ready_final] run function roguecraft:game_loop/init_spawn_platform
time set day
weather clear
title @a[tag=ready_final] subtitle {"translate":"roguecraft.bossbar.wait"}
title @a[tag=ready_final] title {"translate":"roguecraft.bossbar.run","with":[{"score":{"name":"@e[type=minecraft:marker,tag=master,limit=1]","objective":"run_number"}}],"bold":true,"color":"green"}

gamerule playersSleepingPercentage 0

execute as @e[type=minecraft:marker,tag=master] run function roguecraft:game_loop/shift_game_region
$forceload remove $(X) $(Z)
execute in minecraft:the_nether run forceload add 0 0 -1 -1

bossbar set minecraft:difficulty players @a[tag=ready_final]
bossbar set minecraft:difficulty name {"translate":"roguecraft.bossbar.difficulty_level","with":["1"]}
execute as @e[type=minecraft:marker,tag=master] run function roguecraft:game_loop/init_run_scores
execute if data storage roguecraft:master {single_run_display:1b} run scoreboard players set single_run_timer speedrun_timer 0

tag @a remove ready_final