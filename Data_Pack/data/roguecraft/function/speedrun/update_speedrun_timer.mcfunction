
scoreboard players add @e[type=minecraft:marker,tag=master,limit=1] new_world_timer 1
execute if data storage roguecraft:master {run_active:1,bedrock_platform_left:1} run scoreboard players add @e[type=minecraft:marker,tag=master,limit=1] single_run_timer 1

execute if data storage roguecraft:master {speedrun:{single_run_display:1b}} run scoreboard players operation single_run_timer speedrun_timer = @e[type=minecraft:marker,tag=master,limit=1] single_run_timer
execute if data storage roguecraft:master {speedrun:{new_world_display:1b}} run scoreboard players operation new_world_timer speedrun_timer = @e[type=minecraft:marker,tag=master,limit=1] new_world_timer