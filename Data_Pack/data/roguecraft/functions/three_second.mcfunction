execute as @a at @s if entity @a[distance=..10,scores={class=2},gamemode=!spectator] run effect give @s[tag=!hub] minecraft:regeneration 3 0 true
#execute if entity @e[type=marker,tag=master,limit=1] unless block 3 100 67 minecraft:black_concrete run place template roguecraft:hub_no_entities -29 96 -14

execute store result storage roguecraft:master difficulty int 1 run scoreboard players get @e[type=marker,tag=master,limit=1] difficulty_level
execute at @a as @e[distance=..64,tag=!buffed,type=#roguecraft:difficulty_impacted] unless data entity @s {CustomName:' "Ender Dragon" '} run function roguecraft:difficulty/apply_difficulty with storage roguecraft:master

execute as @a[scores={version_num=1..}] unless data storage roguecraft:master version_num store result storage roguecraft:master version_num int 1 run scoreboard players get @s version_num
execute unless data storage roguecraft:master version_num run function roguecraft:update/110/main
execute if entity @a if data storage roguecraft:master {run_active:0} if data storage roguecraft:master {version_num:1} run function roguecraft:update/111/main

#difficulty
execute store result storage roguecraft:master difficulty_setting int 1 run difficulty
execute if data storage roguecraft:master {difficulty_setting:0} run difficulty easy

#infinite garden
kill @e[tag=main_storage]
execute store result score @e[tag=master,type=marker,limit=1] infinite_garden_skillpoint_phase run data get storage roguecraft:master infinite_garden_skillpoint_phase
execute as @a[tag=garden] at @s run function roguecraft:infinite_garden/mob_spawning_init
execute as @e[tag=shop] at @s if score @s run_number < @e[type=marker,tag=master,limit=1] run_number run function roguecraft:shops/check_bosses
execute if entity @a[nbt={Dimension:"roguecraft:infinite_garden"}] run function roguecraft:infinite_garden/set_skillpoint_level
execute if entity @a[nbt={Dimension:"roguecraft:infinite_garden"}] as @e[tag=infinite_garden_mob_marker] at @s run function roguecraft:infinite_garden/mob_spawning_check_sp

execute in roguecraft:infinite_garden run playsound minecraft:block.beacon.ambient master @a 0 60 31 2 0.5

execute at @a[nbt={Dimension:"minecraft:the_nether"}] run fill ~-20 ~-20 ~-20 ~20 ~20 ~20 minecraft:red_shulker_box{Items:[{Count:1b,id:"minecraft:bedrock"}]} replace spawner{SpawnData:{entity:{id:"minecraft:blaze"}}}
execute at @a[nbt={Dimension:"minecraft:the_nether"}] run fill ~-20 ~-20 ~-20 ~20 ~20 ~20 spawner{SpawnData:{entity:{id:"minecraft:blaze"}},SpawnCount:0s,Delay:100s} replace minecraft:red_shulker_box{Items:[{Count:1b,id:"minecraft:bedrock"}]}

execute if entity @a[gamemode=survival,nbt={Dimension:"minecraft:the_end"}] if data storage roguecraft:master {end:1} unless entity @e[type=minecraft:ender_dragon] in the_end if loaded -100 0 -100 if loaded 100 0 100 run schedule function roguecraft:ender_dragon/death 10s append
execute if entity @a[gamemode=survival,nbt={Dimension:"minecraft:the_end"}] if data storage roguecraft:master {end:1} unless entity @e[type=minecraft:ender_dragon] in the_end if loaded -100 0 -100 if loaded 100 0 100 run tag @a add victory

execute as @a unless entity @s[tag=dev] run gamemode adventure @s[tag=hub]

schedule function roguecraft:three_second 3s