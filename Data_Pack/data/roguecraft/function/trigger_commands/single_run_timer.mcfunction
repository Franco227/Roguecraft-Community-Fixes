execute if data storage roguecraft:master {speedrun:{single_run_display:1b}} run data merge storage roguecraft:master {temp_single_run_display:1}
execute if data storage roguecraft:master {speedrun:{single_run_display:0b}} run data merge storage roguecraft:master {speedrun:{single_run_display:1b}}
execute if data storage roguecraft:master {temp_single_run_display:1} run data merge storage roguecraft:master {speedrun:{single_run_display:0b}}
data merge storage roguecraft:master {temp_single_run_display:0}

execute as @s if data storage roguecraft:master {speedrun:{single_run_display:0b}} run tellraw @s {"translate":"roguecraft.chat_messages.disable_single_run_timer","color":"blue"}
execute as @s if data storage roguecraft:master {speedrun:{single_run_display:1b}} run tellraw @s {"translate":"roguecraft.chat_messages.enable_single_run_timer","color":"blue"}

execute as @s if data storage roguecraft:master {speedrun:{single_run_display:0b}} run scoreboard players reset single_run_timer speedrun_timer
execute as @s if data storage roguecraft:master {speedrun:{single_run_display:1b}} run scoreboard players operation single_run_timer speedrun_timer = @e[type=minecraft:marker,tag=master,limit=1] single_run_timer

execute if data storage roguecraft:master {speedrun:{single_run_display:1b,new_world_display:0b}} run scoreboard objectives setdisplay sidebar speedrun_timer
execute if data storage roguecraft:master {speedrun:{single_run_display:0b,new_world_display:0b}} run scoreboard objectives setdisplay sidebar

execute as @s if data storage roguecraft:master {speedrun:{single_run_display:1b}} run scoreboard players display numberformat single_run_timer speedrun_timer styled {"color":"yellow"}
execute as @s if data storage roguecraft:master {speedrun:{single_run_display:1b}} run scoreboard players display name single_run_timer speedrun_timer {"translate":"roguecraft.speedrun.single_run","color":"gold"}

scoreboard players set @s single_run_timer 0
scoreboard players enable @s single_run_timer

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5