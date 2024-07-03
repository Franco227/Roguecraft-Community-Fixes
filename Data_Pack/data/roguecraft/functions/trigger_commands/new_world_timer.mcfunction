execute if data storage roguecraft:master {speedrun:{new_world_display:1b}} run data merge storage roguecraft:master {temp_new_world_display:1}
execute if data storage roguecraft:master {speedrun:{new_world_display:0b}} run data merge storage roguecraft:master {speedrun:{new_world_display:1b}}
execute if data storage roguecraft:master {temp_new_world_display:1} run data merge storage roguecraft:master {speedrun:{new_world_display:0b}}
data merge storage roguecraft:master {temp_new_world_display:0}

execute as @s if data storage roguecraft:master {speedrun:{new_world_display:0b}} run tellraw @s {"translate":"roguecraft.chat_messages.disable_new_world_timer","color":"blue"}
execute as @s if data storage roguecraft:master {speedrun:{new_world_display:1b}} run tellraw @s {"translate":"roguecraft.chat_messages.enable_new_world_timer","color":"blue"}

execute as @s if data storage roguecraft:master {speedrun:{new_world_display:0b}} run scoreboard players reset new_world_timer speedrun_timer
execute as @s if data storage roguecraft:master {speedrun:{new_world_display:1b}} run scoreboard players operation new_world_timer speedrun_timer = @e[type=marker,tag=master,limit=1] new_world_timer

execute if data storage roguecraft:master {speedrun:{single_run_display:0b,new_world_display:1b}} run scoreboard objectives setdisplay sidebar speedrun_timer
execute if data storage roguecraft:master {speedrun:{single_run_display:0b,new_world_display:0b}} run scoreboard objectives setdisplay sidebar

execute as @s if data storage roguecraft:master {speedrun:{new_world_display:1b}} run scoreboard players display numberformat new_world_timer speedrun_timer styled {"color":"yellow"}
execute as @s if data storage roguecraft:master {speedrun:{new_world_display:1b}} run scoreboard players display name new_world_timer speedrun_timer {"translate":"roguecraft.speedrun.new_world","color":"gold"}

scoreboard players set @s new_world_timer 0
scoreboard players enable @s new_world_timer

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5