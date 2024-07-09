#class teams
#team add class_0 {"text":"[Tank] ","bold":true,"color":"gray"}
#team modify class_0 prefix {"text":"[Tank] ","bold":true,"color":"gray"}
#team modify class_0 deathMessageVisibility always

#team add class_1 {"text":"[Mage] ","bold":true,"color":"blue"}
#team modify class_1 prefix {"text":"[Mage] ","bold":true,"color":"blue"}
#team modify class_1 deathMessageVisibility always

#team add class_2 {"text":"[Healer] ","bold":true,"color":"red"}
#team modify class_2 prefix {"text":"[Healer] ","bold":true,"color":"red"}
#team modify class_2 deathMessageVisibility always

#team add class_3 {"text":"[Glass Cannon] ","bold":true,"color":"white"}
#team modify class_3 prefix {"text":"[Glass Cannon] ","bold":true,"color":"white"}
#team modify class_3 deathMessageVisibility always

##explosion
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_0_1 40
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_0_2 55
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_0_3 70
##heal
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_1_1 50
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_1_2 40
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_1_3 30
##mine
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_2_1 20
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_2_2 25
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_2_3 30
##damage
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_3_1 30
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_3_2 28
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_3_3 25
##arrow
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_4_1 12
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_4_2 9
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_4_3 5
##parry
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_5_1 70
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_5_2 60
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_5_3 50
##fireball
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_6_1 30
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_6_2 25
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_6_3 20
##levitate
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_7_1 40
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_7_2 38
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_7_3 35
##liquid walker
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_8_1 40
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_8_2 32
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_8_3 25
##proximity
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_9_1 0
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_9_2 0
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_9_3 0
##lava walker
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_10_1 60
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_10_2 55
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_10_3 50
##dirt walker
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_11_1 70
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_11_2 65
#scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_11_3 60
##class abilities
#scoreboard players set @e[type=minecraft:marker,tag=master] class_cost_0 160
#scoreboard players set @e[type=minecraft:marker,tag=master] class_cost_2 0
#scoreboard players set @e[type=minecraft:marker,tag=master] class_cost_3 0
#
##tellraw @s ["",{"text":"You cast Explosion","italic":true,"color":"blue"},{"$(id)"},{"text":"asdeas","color":"dark_aqua"}]

#tellraw @a ["","region_x: ",{"score":{"name":"@e[type=minecraft:marker,tag=master,limit=1]","objective":"region_x"}}," | region_z: ",{"score":{"name":"@e[type=minecraft:marker,tag=master,limit=1]","objective":"region_z"}}," | region_counter: ",{"score":{"name":"@e[type=minecraft:marker,tag=master,limit=1]","objective":"region_counter"}}," | region_counter_max: ",{"score":{"name":"@e[type=minecraft:marker,tag=master,limit=1]","objective":"region_counter_max"}}," | region_dir: ",{"score":{"name":"@e[type=minecraft:marker,tag=master,limit=1]","objective":"region_dir"}}]


#execute if data storage roguecraft:master {stronghold:0b} in minecraft:the_nether run summon minecraft:armor_stand 0 0 0 {Tags:["structure_stand"],Invulnerable:1b,Marker:1b}
#execute if data storage roguecraft:master {stronghold:0b} in minecraft:the_nether run loot replace entity @e[type=minecraft:armor_stand,tag=structure_stand,limit=1] weapon.mainhand fish roguecraft:add_map_structure ~ ~ ~
#execute as @s if data storage roguecraft:master {stronghold:0b} run function roguecraft:compass_nether_fortress with entity @e[type=minecraft:armor_stand,tag=structure_stand,limit=1] HandItems[0].tag.Decorations[0]
#kill @e[type=minecraft:armor_stand,tag=structure_stand]
#execute as @s if data storage roguecraft:master {stronghold:1b} run function roguecraft:compass_stronghold with storage roguecraft:master Region
#data modify storage roguecraft:copy_coords Decorations set from entity @e[type=minecraft:armor_stand,limit=1,tag=structure_stand] HandItems[0].Decorations

#kill @e[type=minecraft:armor_stand,tag=structure_stand]
#item modify entity @s weapon.mainhand roguecraft:map_to_compass