#advancements
execute as @a[advancements={roguecraft:infinite_garden/all_dummy=true,roguecraft:roguecraft/avatar=true,roguecraft:roguecraft/completion=true,roguecraft:roguecraft/difficulty_20=true,roguecraft:infinite_garden/full_defense=true,roguecraft:roguecraft/instant_delivery=true,roguecraft:roguecraft/instant_regret=true,roguecraft:roguecraft/low_health_parry=true,roguecraft:infinite_garden/max_health=true,roguecraft:roguecraft/prevent_death=true,roguecraft:roguecraft/root=true,roguecraft:roguecraft/run_complete=true,roguecraft:roguecraft/skillpoint_1=true,roguecraft:roguecraft/skillpoint_100=true,roguecraft:roguecraft/speedrun=true,roguecraft:roguecraft/first_ability=true,roguecraft:roguecraft/skillpoint_500=true,roguecraft:roguecraft/wildfire=true,roguecraft:roguecraft/world_record=true,roguecraft:infinite_garden/chester=true,roguecraft:infinite_garden/destroy_hub=true,roguecraft:infinite_garden/infinite_garden_void=true,roguecraft:infinite_garden/keep_inventory=true,roguecraft:roguecraft/true_completion=false}] run advancement grant @s only roguecraft:roguecraft/true_completion

#mana
execute as @a run scoreboard players operation @s mana += @s mana_regen
execute as @a if score @s class matches 1 run scoreboard players add @s mana 5
execute as @a if score @s mana > @s max_mana run scoreboard players operation @s mana = @s max_mana
execute as @e[tag=id,type=marker] run function roguecraft:mana_bar_test with entity @s data

execute if entity @a[tag=!hub,tag=!garden] if data storage roguecraft:master {bedrock_platform_left:1} unless entity @a[tag=victory] run scoreboard players add @e[tag=master,type=marker] difficulty 1
execute store result bossbar minecraft:difficulty value run scoreboard players get @e[type=marker,tag=master,limit=1] difficulty
execute if score @e[type=marker,tag=master,limit=1] difficulty >= @e[type=marker,tag=master,limit=1] difficulty_val_max run function roguecraft:increase_difficulty

execute as @a[tag=!hub] run function roguecraft:ability/tell_1

execute if entity @a[tag=hub] in overworld run weather clear
execute if entity @a[tag=victory] in overworld run weather clear

execute if data storage roguecraft:master {run_active:1} run execute as @a[tag=hub,tag=!garden,tag=ready] run function roguecraft:game_loop/run_start_singular with storage roguecraft:master Region
execute if data storage roguecraft:master {run_active:0} run execute as @a[tag=!hub,tag=!garden] unless data entity @s {Health:0.0f} run function roguecraft:game_loop/run_end_singular
execute if data storage roguecraft:master {run_active:1} as @a[tag=!hub,tag=!garden] if score @s run_number < @e[type=marker,tag=master,limit=1] run_number run function roguecraft:game_loop/run_end_singular

execute as @a at @s if entity @a[distance=..10,scores={class=2},gamemode=!spectator] run effect give @s[tag=!hub] minecraft:regeneration 2 0 true

#compass
execute as @a[scores={compass=1..}] at @s run function roguecraft:compass

#wildfire
execute as @a[gamemode=!spectator,nbt={Dimension:"minecraft:the_nether"}] at @s run function roguecraft:wildfire/check_spawner_exists

#hub
execute as @a[tag=!tutorial_done,tag=init_player] in roguecraft:infinite_garden positioned 0 63 0 if entity @s[distance=..15] run function roguecraft:infinite_garden/hub/finish_tutorial

#bedrock platform check
execute if data storage roguecraft:master {bedrock_platform_left:0} as @a[tag=!garden,tag=!hub] at @s unless block ~ ~-1 ~ bedrock run kill @e[type=interaction,tag=bedrock_blocker]
execute if data storage roguecraft:master {bedrock_platform_left:0} as @a[tag=!garden,tag=!hub] at @s unless block ~ ~-1 ~ bedrock run data merge storage roguecraft:master {bedrock_platform_left:1}

#speedruns
execute if entity @a if score @e[type=minecraft:marker,tag=master,limit=1] run_number matches 1.. run function roguecraft:speedrun/update_speedrun_timer

#ender dragon
execute at @e[type=area_effect_cloud,tag=auto_aim] run execute as @a[distance=..3] run damage @s 4 minecraft:magic by @e[type=minecraft:ender_dragon,limit=1]

#triggers
execute as @a if entity @s[tag=!hub,tag=!garden] run scoreboard players reset @s new_world_timer
execute as @a if entity @s[tag=!hub,tag=!garden] run scoreboard players reset @s single_run_timer
execute as @a unless entity @s[tag=!hub,tag=!garden] run scoreboard players enable @s new_world_timer
execute as @a unless entity @s[tag=!hub,tag=!garden] run scoreboard players enable @s single_run_timer

schedule function roguecraft:second 1s