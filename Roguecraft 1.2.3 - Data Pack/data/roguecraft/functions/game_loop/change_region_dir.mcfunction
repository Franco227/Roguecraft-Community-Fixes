#executed as master marker

execute if score @s region_dir matches 1 run scoreboard players add @s region_counter_max 1
execute if score @s region_dir matches 3 run scoreboard players add @s region_counter_max 1
scoreboard players operation @s region_counter = @s region_counter_max

scoreboard players add @s region_dir 1
execute if score @s region_dir matches 4.. run scoreboard players set @s region_dir 0