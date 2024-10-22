$summon minecraft:marker ~ ~ ~ {Tags:["wildfire","$(boss_id)"],data:{boss_id:$(boss_id)}}
$summon minecraft:item_display ~ ~1.5 ~ {teleport_duration:1,item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,components:{"custom_model_data":6}},Rotation:[0.0f,-15.0f],Tags:["wildfire_shield","$(boss_id)","shield_0"]}
$summon minecraft:item_display ~ ~1.5 ~ {teleport_duration:1,item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,components:{"custom_model_data":6}},Rotation:[90.0f,-15.0f],Tags:["wildfire_shield","$(boss_id)","shield_1"]}
$summon minecraft:item_display ~ ~1.5 ~ {teleport_duration:1,item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,components:{"custom_model_data":6}},Rotation:[180.0f,-15.0f],Tags:["wildfire_shield","$(boss_id)","shield_2"]}
$summon minecraft:item_display ~ ~1.5 ~ {teleport_duration:1,item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,components:{"custom_model_data":6}},Rotation:[270.0f,-15.0f],Tags:["wildfire_shield","$(boss_id)","shield_3"]}
$summon minecraft:item_display ~ ~1.5 ~ {teleport_duration:1,item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,components:{"custom_model_data":7}},Tags:["wildfire_body","$(boss_id)"]}
$summon minecraft:item_display ~ ~4 ~ {teleport_duration:1,item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,components:{"custom_model_data":8}},Tags:["wildfire_head","$(boss_id)"]}
$execute as @e[type=minecraft:item_display,tag=wildfire_head,tag=$(boss_id)] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]

#hitboxes start
$summon minecraft:slime ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:fire_resistance",duration:-1,show_particles:false}],Silent:true,Size:1,NoAI:true,PersistenceRequired:true,Tags:["boss_hitbox","$(boss_id)","shield_0_0","shield_0"]}
$summon minecraft:slime ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:fire_resistance",duration:-1,show_particles:false}],Silent:true,Size:1,NoAI:true,PersistenceRequired:true,Tags:["boss_hitbox","$(boss_id)","shield_0_1","shield_0"]}
$summon minecraft:slime ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:fire_resistance",duration:-1,show_particles:false}],Silent:true,Size:1,NoAI:true,PersistenceRequired:true,Tags:["boss_hitbox","$(boss_id)","shield_0_2","shield_0"]}
$summon minecraft:slime ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:fire_resistance",duration:-1,show_particles:false}],Silent:true,Size:1,NoAI:true,PersistenceRequired:true,Tags:["boss_hitbox","$(boss_id)","shield_1_0","shield_1"]}
$summon minecraft:slime ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:fire_resistance",duration:-1,show_particles:false}],Silent:true,Size:1,NoAI:true,PersistenceRequired:true,Tags:["boss_hitbox","$(boss_id)","shield_1_1","shield_1"]}
$summon minecraft:slime ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:fire_resistance",duration:-1,show_particles:false}],Silent:true,Size:1,NoAI:true,PersistenceRequired:true,Tags:["boss_hitbox","$(boss_id)","shield_1_2","shield_1"]}
$summon minecraft:slime ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:fire_resistance",duration:-1,show_particles:false}],Silent:true,Size:1,NoAI:true,PersistenceRequired:true,Tags:["boss_hitbox","$(boss_id)","shield_2_0","shield_2"]}
$summon minecraft:slime ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:fire_resistance",duration:-1,show_particles:false}],Silent:true,Size:1,NoAI:true,PersistenceRequired:true,Tags:["boss_hitbox","$(boss_id)","shield_2_1","shield_2"]}
$summon minecraft:slime ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:fire_resistance",duration:-1,show_particles:false}],Silent:true,Size:1,NoAI:true,PersistenceRequired:true,Tags:["boss_hitbox","$(boss_id)","shield_2_2","shield_2"]}
$summon minecraft:slime ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:fire_resistance",duration:-1,show_particles:false}],Silent:true,Size:1,NoAI:true,PersistenceRequired:true,Tags:["boss_hitbox","$(boss_id)","shield_3_0","shield_3"]}
$summon minecraft:slime ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:fire_resistance",duration:-1,show_particles:false}],Silent:true,Size:1,NoAI:true,PersistenceRequired:true,Tags:["boss_hitbox","$(boss_id)","shield_3_1","shield_3"]}
$summon minecraft:slime ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:fire_resistance",duration:-1,show_particles:false}],Silent:true,Size:1,NoAI:true,PersistenceRequired:true,Tags:["boss_hitbox","$(boss_id)","shield_3_2","shield_3"]}
$summon minecraft:slime ~ ~0.5 ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:fire_resistance",duration:-1,show_particles:false}],Silent:true,Size:1,NoAI:true,PersistenceRequired:true,Tags:["boss_hitbox","$(boss_id)","main","flame"]}
$summon minecraft:slime ~ ~1.5 ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:fire_resistance",duration:-1,show_particles:false}],Silent:true,Size:1,NoAI:true,PersistenceRequired:true,Tags:["boss_hitbox","$(boss_id)","main"]}
$summon minecraft:slime ~ ~2.5 ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:fire_resistance",duration:-1,show_particles:false}],Silent:true,Size:1,NoAI:true,PersistenceRequired:true,Tags:["boss_hitbox","$(boss_id)","main","flame"]}
$summon minecraft:slime ~ ~3.5 ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:fire_resistance",duration:-1,show_particles:false}],Silent:true,Size:1,NoAI:true,PersistenceRequired:true,Tags:["boss_hitbox","$(boss_id)","main"]}

#$summon minecraft:slime ~ ~ ~ {Silent:true,Size:1,NoAI:true,Tags:["boss_hitbox","$(boss_id)","shield_0_0","shield_0"]}
#$summon minecraft:slime ~ ~ ~ {Silent:true,Size:1,NoAI:true,Tags:["boss_hitbox","$(boss_id)","shield_0_1","shield_0"]}
#$summon minecraft:slime ~ ~ ~ {Silent:true,Size:1,NoAI:true,Tags:["boss_hitbox","$(boss_id)","shield_0_2","shield_0"]}
#$summon minecraft:slime ~ ~ ~ {Silent:true,Size:1,NoAI:true,Tags:["boss_hitbox","$(boss_id)","shield_1_0","shield_1"]}
#$summon minecraft:slime ~ ~ ~ {Silent:true,Size:1,NoAI:true,Tags:["boss_hitbox","$(boss_id)","shield_1_1","shield_1"]}
#$summon minecraft:slime ~ ~ ~ {Silent:true,Size:1,NoAI:true,Tags:["boss_hitbox","$(boss_id)","shield_1_2","shield_1"]}
#$summon minecraft:slime ~ ~ ~ {Silent:true,Size:1,NoAI:true,Tags:["boss_hitbox","$(boss_id)","shield_2_0","shield_2"]}
#$summon minecraft:slime ~ ~ ~ {Silent:true,Size:1,NoAI:true,Tags:["boss_hitbox","$(boss_id)","shield_2_1","shield_2"]}
#$summon minecraft:slime ~ ~ ~ {Silent:true,Size:1,NoAI:true,Tags:["boss_hitbox","$(boss_id)","shield_2_2","shield_2"]}
#$summon minecraft:slime ~ ~ ~ {Silent:true,Size:1,NoAI:true,Tags:["boss_hitbox","$(boss_id)","shield_3_0","shield_3"]}
#$summon minecraft:slime ~ ~ ~ {Silent:true,Size:1,NoAI:true,Tags:["boss_hitbox","$(boss_id)","shield_3_1","shield_3"]}
#$summon minecraft:slime ~ ~ ~ {Silent:true,Size:1,NoAI:true,Tags:["boss_hitbox","$(boss_id)","shield_3_2","shield_3"]}
#$summon minecraft:slime ~ ~0.5 ~ {Silent:true,Size:1,NoAI:true,Tags:["boss_hitbox","$(boss_id)","main"]}
#$summon minecraft:slime ~ ~1.5 ~ {Silent:true,Size:1,NoAI:true,Tags:["boss_hitbox","$(boss_id)","main"]}
#$summon minecraft:slime ~ ~2.5 ~ {Silent:true,Size:1,NoAI:true,Tags:["boss_hitbox","$(boss_id)","main"]}
#$summon minecraft:slime ~ ~3.5 ~ {Silent:true,Size:1,NoAI:true,Tags:["boss_hitbox","$(boss_id)","main"]}

execute as @e[type=minecraft:slime,tag=boss_hitbox] run attribute @s generic.max_health base set 10000
execute as @e[type=minecraft:slime,tag=boss_hitbox] run data merge entity @s {Health:1000f}
#hitboxes end

$execute as @e[type=minecraft:item_display,tag=$(boss_id)] unless data entity @s {item:{components:{"minecraft:custom_model_data":8}}} run data merge entity @s {transformation:{scale:[2.5f,2.5f,2.5f]}}
$data merge entity @e[type=minecraft:item_display,tag=$(boss_id),tag=wildfire_head,limit=1] {transformation:{scale:[1f,1f,1f]}}

execute store result storage roguecraft:master random int 1 run random value 0..99
$execute if data storage roguecraft:master {random:99} run bossbar add minecraft:wildfire_$(boss_id) {"translate":"roguecraft.bossbar.wildfire_variant"}
$execute unless data storage roguecraft:master {random:99} run bossbar add minecraft:wildfire_$(boss_id) {"translate":"roguecraft.bossbar.wildfire"}

#fill ~5 ~ ~5 ~-5 ~5 ~-5 air destroy

execute if data storage roguecraft:master {wildfire_arena_direction:0} run place template roguecraft:wildfire_arena ~-8 ~-3 ~-8
execute if data storage roguecraft:master {wildfire_arena_direction:1} run place template roguecraft:wildfire_arena ~8 ~-3 ~-8 clockwise_90
execute if data storage roguecraft:master {wildfire_arena_direction:2} run place template roguecraft:wildfire_arena ~8 ~-3 ~8 180
execute if data storage roguecraft:master {wildfire_arena_direction:3} run place template roguecraft:wildfire_arena ~-8 ~-3 ~8 counterclockwise_90

playsound roguecraft:entity.wildfire.spawn master @a ~ ~ ~

$scoreboard players set @e[type=minecraft:marker,tag=$(boss_id)] boss_health 50
$scoreboard players set @e[type=minecraft:marker,tag=$(boss_id)] boss_health_per_player 150
$execute at @a[gamemode=!spectator,distance=..80] run scoreboard players operation @e[type=minecraft:marker,tag=$(boss_id)] boss_health += @e[type=minecraft:marker,tag=$(boss_id)] boss_health_per_player
$scoreboard players set @e[type=minecraft:marker,tag=$(boss_id)] shield_0_health 120
$scoreboard players set @e[type=minecraft:marker,tag=$(boss_id)] shield_1_health 120
$scoreboard players set @e[type=minecraft:marker,tag=$(boss_id)] shield_2_health 120
$scoreboard players set @e[type=minecraft:marker,tag=$(boss_id)] shield_3_health 120
$scoreboard players set @e[type=minecraft:marker,tag=$(boss_id)] damage_reduction 100

$scoreboard players operation @e[type=minecraft:marker,tag=$(boss_id)] half_health = @e[type=minecraft:marker,tag=$(boss_id)] boss_health
$scoreboard players operation @e[type=minecraft:marker,tag=$(boss_id)] half_health /= 2 int

$scoreboard players set @e[type=minecraft:marker,tag=$(boss_id)] hover_accleration 0
$scoreboard players set @e[type=minecraft:marker,tag=$(boss_id)] hover_accleration_inc 25
$scoreboard players set @e[type=minecraft:marker,tag=$(boss_id)] hover_speed -5250
$scoreboard players set @e[type=minecraft:marker,tag=$(boss_id)] hover_multiplier 1000
$scoreboard players set @e[type=minecraft:marker,tag=$(boss_id)] hover_lower_limit -500
$scoreboard players set @e[type=minecraft:marker,tag=$(boss_id)] hover_upper_limit 500
$scoreboard players set @e[type=minecraft:marker,tag=$(boss_id)] hover_phase 1

$scoreboard players set @e[type=minecraft:marker,tag=$(boss_id)] attack_cooldown 15
$scoreboard players set @e[type=minecraft:marker,tag=$(boss_id)] last_attack 0

$bossbar set minecraft:wildfire_$(boss_id) players @a[distance=..96]
$bossbar set minecraft:wildfire_$(boss_id) players @a[distance=..96]
$bossbar set minecraft:wildfire_$(boss_id) style notched_12
$bossbar set minecraft:wildfire_$(boss_id) color red
$execute store result bossbar minecraft:wildfire_$(boss_id) max run scoreboard players get @e[type=minecraft:marker,tag=$(boss_id),limit=1] boss_health
$execute store result bossbar minecraft:wildfire_$(boss_id) value run scoreboard players get @e[type=minecraft:marker,tag=$(boss_id),limit=1] boss_health

forceload add ~ ~