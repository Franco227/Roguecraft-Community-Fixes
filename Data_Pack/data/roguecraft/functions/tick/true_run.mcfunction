#advancements
execute as @a[advancements={roguecraft:roguecraft/skillpoint_100=false},scores={skillpoints=100..}] run advancement grant @s only roguecraft:roguecraft/skillpoint_100
execute as @a[advancements={roguecraft:roguecraft/skillpoint_500=false},scores={skillpoints=500..}] run advancement grant @s only roguecraft:roguecraft/skillpoint_500
execute as @a[advancements={roguecraft:roguecraft/low_health_parry=false},scores={parry_timer=1..,damage=1..,temp_health=0..1}] run advancement grant @s only roguecraft:roguecraft/low_health_parry
execute as @a[advancements={roguecraft:roguecraft/instant_delivery=false},scores={parry_timer=1..,damage=1..}] at @s on attacker if entity @s[type=ghast] run execute as @a[sort=nearest,limit=1] run advancement grant @s only roguecraft:roguecraft/instant_delivery
scoreboard players remove @a adrenaline_advancement_timer 1
execute as @a[advancements={roguecraft:roguecraft/instant_regret=false},scores={deaths=1..,adrenaline_advancement_timer=1..}] run advancement grant @s only roguecraft:roguecraft/instant_regret

#general
execute at @e[tag=stronghold] if score @e[tag=master,limit=1] blaze_rods matches 1 store success storage roguecraft:master stronghold byte 1 run place structure minecraft:stronghold ~ ~ ~
execute if entity @e[tag=stronghold] if data storage roguecraft:master {stronghold:1b} run kill @e[tag=stronghold]

#wildfire
execute if entity @e[tag=wildfire] run function roguecraft:tick/wildfire
execute as @e[type=marker,tag=wildfire_particle_marker,tag=marked] at @s run function roguecraft:wildfire/particle/process_1
execute as @e[type=marker,tag=wildfire_particle_marker,tag=!marked] at @s run function roguecraft:wildfire/particle/init
scoreboard players remove @e[type=marker,tag=wildfire_particle_marker] marker_distance 1
execute as @e[type=marker,tag=wildfire_particle_marker,scores={marker_distance=..0}] at @s run function roguecraft:wildfire/particle/destroy
execute at @e[tag=wildfire_particle] run particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 0 5
execute at @e[tag=wildfire_particle,sort=random,limit=1] run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 0.15 2

#restart run
execute as @a[tag=!hub,scores={restart_run=1..},gamemode=!spectator,tag=!garden,tag=!hub] at @s run function roguecraft:trigger_commands/restart_run
execute as @a[scores={restart_run=1..},gamemode=spectator] run tellraw @s {"translate":"roguecraft.chat_messages.restart_dead","italic":true,"color":"red"}
execute as @a[scores={restart_run=1..},gamemode=spectator] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
scoreboard players enable @a restart_run
scoreboard players set @a restart_run 0

#death
execute as @a[scores={deaths=1..}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={deaths=1..},nbt={Health:20.0f}] run tp @r[gamemode=survival,limit=1]
gamemode spectator @a[scores={deaths=1..},nbt={Health:20.0f}]
execute unless entity @a[gamemode=!spectator,tag=!garden,tag=!hub] unless entity @a[tag=run_start_non_ticked] if entity @a run function roguecraft:game_loop/run_end
scoreboard players set @a[scores={deaths=1..},nbt={Health:20.0f}] deaths 0

#award skill pearls
execute as @a store result score @s level_current run xp query @s levels
execute as @a run execute if score @s level_current > @s level_max run function roguecraft:skillpoints/skillpearl
execute as @a[scores={skillpoint_cache=1..}] run function roguecraft:skillpoints/give_skillpoints

#get nether coords
execute as @a[gamemode=!spectator,gamemode=!adventure,advancements={story/enter_the_nether=true},scores={enter_nether=0}] run function roguecraft:skillpoints/enter_nether

#execute as @a[gamemode=!spectator,gamemode=!adventure,advancements={story/smelt_iron=true},scores={smelt_iron=0}] run function roguecraft:skillpoints/smelt_iron
#execute as @a[gamemode=!spectator,gamemode=!adventure,advancements={story/lava_bucket=true},scores={lava_bucket=0}] run function roguecraft:skillpoints/lava_bucket
#execute as @a[gamemode=!spectator,gamemode=!adventure,advancements={story/form_obsidian=true},scores={obsidian=0}] run function roguecraft:skillpoints/obsidian
#execute as @a[gamemode=!spectator,gamemode=!adventure,advancements={story/enter_the_nether=true},scores={enter_nether=0}] run function roguecraft:skillpoints/enter_nether
#execute as @a[gamemode=!spectator,gamemode=!adventure,advancements={nether/find_fortress=true},scores={find_fortress=0}] run function roguecraft:skillpoints/find_fortress
#execute as @a[gamemode=!spectator,gamemode=!adventure,advancements={nether/obtain_blaze_rod=true},scores={obtain_blaze_rod=0}] run function roguecraft:skillpoints/obtain_blaze_rod
#execute as @a[gamemode=!spectator,gamemode=!adventure,advancements={story/enter_the_end=true},scores={enter_end=0}] run function roguecraft:skillpoints/enter_end

#custom ender dragon
execute if data storage roguecraft:master {end:0} if entity @a[nbt={Dimension:"minecraft:the_end"}] in the_end if loaded 0 0 0 run forceload add -100 -100 100 100
execute if data storage roguecraft:master {end:0} if entity @a[nbt={Dimension:"minecraft:the_end"}] in the_end if loaded 0 0 0 run tag @e[type=ender_dragon] remove cdragon
execute if data storage roguecraft:master {end:0} if entity @a[nbt={Dimension:"minecraft:the_end"}] in the_end if loaded 0 0 0 run schedule function roguecraft:activate_end 5t append
execute if data storage roguecraft:master {end:1} run function custom_ender_dragon:tick
execute as @a[nbt={Dimension:"minecraft:the_end"},tag=!end] unless entity @a[tag=victory] run function roguecraft:enter_end

#stronghold location
execute as @a[scores={stronghold_location=1..}] run function roguecraft:trigger_commands/tell_stronghold with storage roguecraft:master Region