#executed as master marker

scoreboard players remove @s region_counter 1
execute if score @s region_counter matches ..0 run function roguecraft:game_loop/change_region_dir

execute as @s[scores={region_dir=0}] run scoreboard players remove @s region_x 100000
execute as @s[scores={region_dir=1}] run scoreboard players remove @s region_z 100000
execute as @s[scores={region_dir=2}] run scoreboard players add @s region_x 100000
execute as @s[scores={region_dir=3}] run scoreboard players add @s region_z 100000