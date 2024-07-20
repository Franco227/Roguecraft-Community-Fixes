execute as @a at @s if entity @a[distance=..10,scores={class=2},gamemode=!spectator] run effect give @s[tag=!hub] minecraft:regeneration 3 0 true

execute store result storage roguecraft:master difficulty int 1 run scoreboard players get @e[type=minecraft:marker,tag=master,limit=1] difficulty_level
execute at @a as @e[type=#roguecraft:difficulty_impacted,distance=..64,tag=!buffed] unless data entity @s {CustomName:' "Ender Dragon" '} run function roguecraft:difficulty/apply_difficulty with storage roguecraft:master

#execute as @a[scores={version_num=1..}] unless data storage roguecraft:master version_num store result storage roguecraft:master version_num int 1 run scoreboard players get @s version_num
#execute unless data storage roguecraft:master version_num run function roguecraft:update/110/main 
execute if entity @a if data storage roguecraft:master {run_active:0} if data storage roguecraft:master {version_num:3} run function roguecraft:update/124/main 

#difficulty
execute store result storage roguecraft:master difficulty_setting int 1 run difficulty
execute if data storage roguecraft:master {difficulty_setting:0} run difficulty easy

#infinite garden
execute store result score @e[type=minecraft:marker,tag=master,limit=1] infinite_garden_skillpoint_phase run data get storage roguecraft:master infinite_garden_skillpoint_phase
execute as @a[tag=garden] at @s run function roguecraft:infinite_garden/mob_spawning_init
execute as @e[type=minecraft:marker,tag=shop] at @s if score @s run_number < @e[type=minecraft:marker,tag=master,limit=1] run_number run function roguecraft:shops/check_bosses
execute if entity @a[nbt={Dimension:"roguecraft:infinite_garden"}] run function roguecraft:infinite_garden/set_skillpoint_level
execute if entity @a[nbt={Dimension:"roguecraft:infinite_garden"}] as @e[type=minecraft:marker,tag=infinite_garden_mob_marker] at @s run function roguecraft:infinite_garden/mob_spawning_check_sp

execute in roguecraft:infinite_garden run playsound minecraft:block.beacon.ambient master @a 0 60 31 2 0.5

#flint and steel repair
item replace entity @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{unbreakable:1b}}}}] weapon.mainhand with minecraft:flint_and_steel[minecraft:max_damage=1000000,custom_data={unbreakable:1b}]
item replace entity @a[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{unbreakable:1b}}}]}] weapon.offhand with minecraft:flint_and_steel[minecraft:max_damage=1000000,custom_data={unbreakable:1b}]

#tamed animal fix
function roguecraft:tag_tamed_animals
execute as @e[type=minecraft:fox,distance=..16,tag=!VengefulSpectreImmune,nbt=!{Trusted:[]}] run tag @s add tamed
execute as @e[type=minecraft:ocelot,distance=..16,tag=!VengefulSpectreImmune,nbt={Trusting:1b}] run tag @s add tamed

execute if entity @a[gamemode=!spectator,nbt={Dimension:"minecraft:the_end"}] if data storage roguecraft:master {end:1} unless entity @e[type=minecraft:ender_dragon] in minecraft:the_end if loaded -100 0 -100 if loaded 100 0 100 run schedule function roguecraft:ender_dragon/death 10s append
execute if entity @a[gamemode=!spectator,nbt={Dimension:"minecraft:the_end"}] if data storage roguecraft:master {end:1} unless entity @e[type=minecraft:ender_dragon] in minecraft:the_end if loaded -100 0 -100 if loaded 100 0 100 run tag @a add victory

effect give @a[gamemode=spectator] minecraft:instant_health infinite 255 true
gamemode adventure @a[tag=hub,tag=!dev]

schedule function roguecraft:three_second 3s