scoreboard players set @s enter_nether 1
execute if score @s entry_x matches 40000000 store result score @s entry_x run data get entity @s Pos[0]
execute if score @s entry_z matches 40000000 store result score @s entry_z run data get entity @s Pos[2]