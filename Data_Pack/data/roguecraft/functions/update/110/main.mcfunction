execute as @a unless score @s compass matches 1 run scoreboard players set @s compass 0
execute as @a unless score @s ability_liquid_walker matches 1..3 run scoreboard players set @s ability_liquid_walker 0
execute as @a unless score @s ability_fireball matches 1..3 run scoreboard players set @s ability_fireball 0

scoreboard players set @a version_num 1

scoreboard players set @e[tag=master,type=minecraft:marker] region_x -100000
scoreboard players set @e[tag=master,type=minecraft:marker] region_z 0

scoreboard players set @e[type=minecraft:marker,tag=master,limit=1] region_dir 0
scoreboard players set @e[type=minecraft:marker,tag=master,limit=1] region_counter_max 1
scoreboard players set @e[type=minecraft:marker,tag=master,limit=1] region_counter 1

data merge storage roguecraft:master {Region:{X:-100000,Z:0}}
data merge storage roguecraft:master {run_active:0}
data merge storage roguecraft:master {glowing:1}
data merge storage roguecraft:master {sp_loss:1}
data merge storage roguecraft:master {version_num:1}

data merge storage roguecraft:master {abilities:{0:{name:"explosion"},1:{name:"heal"},2:{name:"mining"},3:{name:"damage_sphere"},4:{name:"arrow_wave"},5:{name:"spikes"},6:{name:"fireball"},7:{name:"levitate"},8:{name:"liquid_walker"},9:{name:"proximity_mine"},10:{name:"lava_walker"},11:{name:"dirt_walker"}}}
data merge storage roguecraft:master {temp_score_ability:0,temp_score_level:0}

team modify ready prefix ["",{"text":"[","bold":true,"color":"green"},{"translate":"roguecraft.generic.ready","bold":true,"color":"green"},{"text":"] ","bold":true,"color":"green"}]
team modify not_ready prefix ["",{"text":"[","bold":true,"color":"dark_red"},{"translate":"roguecraft.generic.not_ready","bold":true,"color":"dark_red"},{"text":"] ","bold":true,"color":"dark_red"}]

team modify class_0 prefix ["",{"text":"[","bold":true,"color":"gray"},{"translate":"roguecraft.class.name.tank","bold":true,"color":"gray"},{"text":"] ","bold":true,"color":"gray"}]
team modify class_1 prefix ["",{"text":"[","bold":true,"color":"blue"},{"translate":"roguecraft.class.name.mage","bold":true,"color":"blue"},{"text":"] ","bold":true,"color":"blue"}]
team modify class_2 prefix ["",{"text":"[","bold":true,"color":"red"},{"translate":"roguecraft.class.name.healer","bold":true,"color":"red"},{"text":"] ","bold":true,"color":"red"}]
team modify class_3 prefix ["",{"text":"[","bold":true,"color":"white"},{"translate":"roguecraft.class.name.glass_cannon","bold":true,"color":"white"},{"text":"] ","bold":true,"color":"white"}]

team modify class_0 color gray
team modify class_1 color blue
team modify class_2 color red
team modify class_3 color white

##rebalancing
#explosion
scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_0_1 40
scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_0_2 55
scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_0_3 65
#heal
scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_1_1 40
scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_1_2 35
scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_1_3 30
#fireball
scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_6_1 30
scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_6_2 25
scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_6_3 20
#liquid walker
scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_8_1 40
scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_8_2 32
scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_8_3 25
#dirt walker
scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_11_1 90
scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_11_2 85
scoreboard players set @e[type=minecraft:marker,tag=master] ability_cost_11_3 80
#class abilities
scoreboard players set @e[type=minecraft:marker,tag=master] class_cost_0 160
scoreboard players set @e[type=minecraft:marker,tag=master] class_cost_2 0
scoreboard players set @e[type=minecraft:marker,tag=master] class_cost_3 0

scoreboard players set @e[type=minecraft:marker,tag=master] revitalize_health 8
scoreboard players set @e[type=minecraft:marker,tag=master] adrenaline_health 6

##upgrade decreses and refunds
execute as @a if score @s max_health matches 21.. run function roguecraft:update/110/dec_health
execute as @a if score @s attack_damage matches 11.. run function roguecraft:update/110/dec_attack_damage
execute as @a if score @s protection matches 5.. run function roguecraft:update/110/dec_protection
execute as @a if score @s ability_frost_walker matches 1.. run function roguecraft:update/110/dec_frost_walker
execute as @a if score @s ability_lava_walker matches 1.. run function roguecraft:update/110/dec_lava_walker
execute as @a if score @s armor_toughness matches 1.. run function roguecraft:update/110/dec_armor_toughness
execute as @a if score @s knockback_resistance matches 1.. run function roguecraft:update/110/dec_knockback_resistance
execute as @a if score @s arrows matches 1.. run function roguecraft:update/110/dec_arrows

#tellraw @a ["",{"text":"If you don't already have the 1.1.0 resource pack, you can download it","color":"aqua"},{"text":" "},{"text":"here","color":"green","bold":true,"underlined":false,"clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/rogue-craft/version/nFIzMQWW"}}]

execute as @a unless score @s version_num matches 1 run scoreboard players add @s speed 1
execute as @a unless score @s version_num matches 1 run scoreboard players add @s jump_boost 1
execute as @a unless score @s version_num matches 1 run scoreboard players add @s resistance 1
execute as @a unless score @s version_num matches 1 run scoreboard players add @s haste 1

#regenerate hub
kill @e[type=!minecraft:player,tag=!master,tag=!id,tag=!constellation_line]
#place template roguecraft:hub -29 96 -14