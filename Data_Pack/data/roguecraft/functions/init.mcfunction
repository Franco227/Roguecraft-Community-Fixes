execute in roguecraft:infinite_garden run place template roguecraft:cosmic_dome/g10 48 56 0
function roguecraft:infinite_garden/hub/builder/place_markers

execute in roguecraft:infinite_garden run summon minecraft:marker 49 100 0 {Tags:["master"]}
scoreboard players set @e[tag=master,type=marker] id 0
scoreboard players set @e[tag=master,type=marker] region_x -100000
scoreboard players set @e[tag=master,type=marker] region_z 0
scoreboard players set @e[tag=master,type=marker] difficulty 0
scoreboard players set @e[type=marker,tag=master,limit=1] difficulty_val_max 450

scoreboard players set @e[type=marker,tag=master,limit=1] region_dir 0
scoreboard players set @e[type=marker,tag=master,limit=1] region_counter_max 1
scoreboard players set @e[type=marker,tag=master,limit=1] region_counter 1

#UPDATE FUNCTION
scoreboard players set @e[type=marker,tag=master] boss_id 0 

data merge storage roguecraft:master {Region:{X:-100000,Z:0}}
data merge storage roguecraft:master {shop_text:0}
data merge storage roguecraft:master {id:0}
data merge storage roguecraft:master {start:0}
data merge storage roguecraft:master {run_active:0}
data merge storage roguecraft:master {glowing:1}
data merge storage roguecraft:master {sp_loss:1}
data merge storage roguecraft:master {version_num:3}

#UPDATE FUNCTION
data merge storage roguecraft:master {default_inventory:[{Slot: 0b, id: "minecraft:warped_fungus_on_a_stick", Count: 1b, tag: {CustomModelData: 2, Damage: 0, display: {Name: '[{"translate":"roguecraft.item.ability","color":"light_purple","with":[{"translate":"roguecraft.generic.ability"},"1"]}]'}}}, {Slot: 1b, id: "minecraft:warped_fungus_on_a_stick", Count: 1b, tag: {CustomModelData: 3, Damage: 0, display: {Name: '[{"translate":"roguecraft.item.ability","color":"light_purple","with":[{"translate":"roguecraft.generic.ability"},"2"]}]'}}}, {Slot: 2b, id: "minecraft:warped_fungus_on_a_stick", Count: 1b, tag: {CustomModelData: 4, Damage: 0, display: {Name: '[{"translate":"roguecraft.item.ability","color":"light_purple","with":[{"translate":"roguecraft.generic.ability"},"3"]}]'}}}, {Slot: 8b, id: "minecraft:warped_fungus_on_a_stick", Count: 1b, tag: {CustomModelData: 1, Damage: 0, display: {Name: '{"text":"Start Run","bold":true,"color":"aqua"}'}}}, {Slot: 9b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900015, display: {Name: '{"translate":"roguecraft.loadout.food", "italic":false, "color": "white"}'}}}, {Slot: 14b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900020, display: {Name: '{"translate":"item.minecraft.splash_potion.effect.healing", "italic":false, "color": "white"}'}}}, {Slot: 15b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900021, display: {Name: '{"translate":"item.minecraft.splash_potion.effect.healing", "italic":false, "color": "white"}'}}}, {Slot: 16b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900018, display: {Name: '{"translate":"item.minecraft.splash_potion.effect.regeneration", "italic":false, "color": "white"}'}}}, {Slot: 17b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900019, display: {Name: '{"translate":"item.minecraft.splash_potion.effect.regeneration", "italic":false, "color": "white"}'}}}, {Slot: 18b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900007, display: {Name: '{"translate":"item.minecraft.bow", "italic":false, "color": "white"}'}}}, {Slot: 19b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900010, display: {Name: '{"translate":"item.minecraft.flint_and_steel", "italic":false, "color": "white"}'}}}, {Slot: 20b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900014, display: {Name: '{"translate":"item.minecraft.compass", "italic":false, "color": "white"}'}}}, {Slot: 23b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900023, display: {Name: '{"translate":"roguecraft.loadout.ability_2", "italic":false, "color": "white"}'}}}, {Slot: 24b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900024, display: {Name: '{"translate":"roguecraft.loadout.ability_3", "italic":false, "color": "white"}'}}}, {Slot: 25b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900017, Enchantments: [{}], display: {Name: '{"translate":"item.minecraft.enchanted_golden_apple", "italic":false, "color": "white"}'}}}, {Slot: 26b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900016, display: {Name: '{"translate":"roguecraft.loadout.golden_apple", "italic":false, "color": "white"}'}}}, {Slot: 27b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900005, display: {Name: '{"translate":"roguecraft.loadout.sword", "italic":false, "color": "white"}'}}}, {Slot: 28b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900003, display: {Name: '{"translate":"roguecraft.loadout.pickaxe", "italic":false, "color": "white"}'}}}, {Slot: 29b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900001, display: {Name: '{"translate":"roguecraft.loadout.axe", "italic":false, "color": "white"}'}}}, {Slot: 30b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900004, display: {Name: '{"translate":"roguecraft.loadout.shovel", "italic":false, "color": "white"}'}}}, {Slot: 31b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900002, display: {Name: '{"translate":"roguecraft.loadout.hoe", "italic":false, "color": "white"}'}}}, {Slot: 32b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900022, display: {Name: '{"translate":"roguecraft.loadout.ability_1", "italic":false, "color": "white"}'}}}, {Slot: 33b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900025, display: {Name: '{"translate":"roguecraft.loadout.ability_4", "italic":false, "color": "white"}'}}}, {Slot: 34b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900013, display: {Name: '{"translate":"roguecraft.loadout.pearl", "italic":false, "color": "white"}'}}}, {Slot: 35b, id: "minecraft:totem_of_undying", Count: 1b, tag: {CustomModelData: 900009, display: {Name: '{"translate":"item.minecraft.bucket", "italic":false, "color": "white"}'}}}]}

execute store result storage roguecraft:master Region.X int 1 run scoreboard players get @e[type=marker,tag=master,limit=1] region_x
execute store result storage roguecraft:master Region.Z int 1 run scoreboard players get @e[type=marker,tag=master,limit=1] region_z

scoreboard players set @e[type=marker,tag=master] run_number 0
scoreboard players set @e[type=marker,tag=master] beam_amount 0
scoreboard players set @e[type=marker,tag=master] beam_max 8
data merge storage roguecraft:master {abilities:{0:{name:"explosion"},1:{name:"heal"},2:{name:"mining"},3:{name:"damage_sphere"},4:{name:"arrow_wave"},5:{name:"spikes"},6:{name:"fireball"},7:{name:"levitate"},8:{name:"liquid_walker"},9:{name:"proximity_mine"},10:{name:"lava_walker"},11:{name:"dirt_walker"}}}
data merge storage roguecraft:master {temp_score_ability:0,temp_score_level:0}

team add ready ["",{"text":"[","bold":true,"color":"green"},{"translate":"roguecraft.generic.ready","bold":true,"color":"green"},{"text":"] ","bold":true,"color":"green"}]
team modify ready prefix ["",{"text":"[","bold":true,"color":"green"},{"translate":"roguecraft.generic.ready","bold":true,"color":"green"},{"text":"] ","bold":true,"color":"green"}]
team modify ready deathMessageVisibility never
team add not_ready ["",{"text":"[","bold":true,"color":"dark_red"},{"translate":"roguecraft.generic.not_ready","bold":true,"color":"dark_red"},{"text":"] ","bold":true,"color":"dark_red"}]
team modify not_ready prefix ["",{"text":"[","bold":true,"color":"dark_red"},{"translate":"roguecraft.generic.not_ready","bold":true,"color":"dark_red"},{"text":"] ","bold":true,"color":"dark_red"}]
team modify not_ready deathMessageVisibility never

bossbar add difficulty {"translate":"roguecraft.bossbar.difficulty_level","with":["0"]}
bossbar set minecraft:difficulty color red
execute store result bossbar minecraft:difficulty max run scoreboard players get @e[type=marker,tag=master,limit=1] difficulty_val_max

function roguecraft:shops/switch_shop_text
function roguecraft:second
function roguecraft:half_second
function roguecraft:three_second
#schedule function roguecraft:quarter_hour 900s

#ability cost

#explosion
scoreboard players set @e[type=marker,tag=master] ability_cost_0_1 40
scoreboard players set @e[type=marker,tag=master] ability_cost_0_2 55
scoreboard players set @e[type=marker,tag=master] ability_cost_0_3 65
#heal
scoreboard players set @e[type=marker,tag=master] ability_cost_1_1 40
scoreboard players set @e[type=marker,tag=master] ability_cost_1_2 35
scoreboard players set @e[type=marker,tag=master] ability_cost_1_3 30
#mine
scoreboard players set @e[type=marker,tag=master] ability_cost_2_1 20
scoreboard players set @e[type=marker,tag=master] ability_cost_2_2 25
scoreboard players set @e[type=marker,tag=master] ability_cost_2_3 30
#damage
scoreboard players set @e[type=marker,tag=master] ability_cost_3_1 30
scoreboard players set @e[type=marker,tag=master] ability_cost_3_2 28
scoreboard players set @e[type=marker,tag=master] ability_cost_3_3 25
#arrow
scoreboard players set @e[type=marker,tag=master] ability_cost_4_1 12
scoreboard players set @e[type=marker,tag=master] ability_cost_4_2 9
scoreboard players set @e[type=marker,tag=master] ability_cost_4_3 5
#parry
scoreboard players set @e[type=marker,tag=master] ability_cost_5_1 70
scoreboard players set @e[type=marker,tag=master] ability_cost_5_2 60
scoreboard players set @e[type=marker,tag=master] ability_cost_5_3 50
#fireball
scoreboard players set @e[type=marker,tag=master] ability_cost_6_1 30
scoreboard players set @e[type=marker,tag=master] ability_cost_6_2 25
scoreboard players set @e[type=marker,tag=master] ability_cost_6_3 20
#levitate
scoreboard players set @e[type=marker,tag=master] ability_cost_7_1 40
scoreboard players set @e[type=marker,tag=master] ability_cost_7_2 38
scoreboard players set @e[type=marker,tag=master] ability_cost_7_3 35
#liquid walker
scoreboard players set @e[type=marker,tag=master] ability_cost_8_1 40
scoreboard players set @e[type=marker,tag=master] ability_cost_8_2 32
scoreboard players set @e[type=marker,tag=master] ability_cost_8_3 25
#proximity
scoreboard players set @e[type=marker,tag=master] ability_cost_9_1 0
scoreboard players set @e[type=marker,tag=master] ability_cost_9_2 0
scoreboard players set @e[type=marker,tag=master] ability_cost_9_3 0
#lava walker
scoreboard players set @e[type=marker,tag=master] ability_cost_10_1 60
scoreboard players set @e[type=marker,tag=master] ability_cost_10_2 55
scoreboard players set @e[type=marker,tag=master] ability_cost_10_3 50
#dirt walker
scoreboard players set @e[type=marker,tag=master] ability_cost_11_1 90
scoreboard players set @e[type=marker,tag=master] ability_cost_11_2 85
scoreboard players set @e[type=marker,tag=master] ability_cost_11_3 80
#class abilities
scoreboard players set @e[type=marker,tag=master] class_cost_0 160
scoreboard players set @e[type=marker,tag=master] class_cost_2 0
scoreboard players set @e[type=marker,tag=master] class_cost_3 0

scoreboard players set @e[type=marker,tag=master] revitalize_health 8
scoreboard players set @e[type=marker,tag=master] adrenaline_health 6

scoreboard players set @e[type=marker,tag=master] infinite_garden_mob_cap 15 

#class teams
team add class_0 ["",{"text":"[","bold":true,"color":"gray"},{"translate":"roguecraft.class.name.tank","bold":true,"color":"gray"},{"text":"] ","bold":true,"color":"gray"}]
team modify class_0 prefix ["",{"text":"[","bold":true,"color":"gray"},{"translate":"roguecraft.class.name.tank","bold":true,"color":"gray"},{"text":"] ","bold":true,"color":"gray"}]
team modify class_0 deathMessageVisibility always
team modify class_0 color gray

team add class_1 ["",{"text":"[","bold":true,"color":"blue"},{"translate":"roguecraft.class.name.mage","bold":true,"color":"blue"},{"text":"] ","bold":true,"color":"blue"}]
team modify class_1 prefix ["",{"text":"[","bold":true,"color":"blue"},{"translate":"roguecraft.class.name.mage","bold":true,"color":"blue"},{"text":"] ","bold":true,"color":"blue"}]
team modify class_1 deathMessageVisibility always
team modify class_1 color blue

team add class_2 ["",{"text":"[","bold":true,"color":"red"},{"translate":"roguecraft.class.name.healer","bold":true,"color":"red"},{"text":"] ","bold":true,"color":"red"}]
team modify class_2 prefix ["",{"text":"[","bold":true,"color":"red"},{"translate":"roguecraft.class.name.healer","bold":true,"color":"red"},{"text":"] ","bold":true,"color":"red"}]
team modify class_2 deathMessageVisibility always
team modify class_2 color red

team add class_3 ["",{"text":"[","bold":true,"color":"white"},{"translate":"roguecraft.class.name.glass_cannon","bold":true,"color":"white"},{"text":"] ","bold":true,"color":"white"}]
team modify class_3 prefix ["",{"text":"[","bold":true,"color":"white"},{"translate":"roguecraft.class.name.glass_cannon","bold":true,"color":"white"},{"text":"] ","bold":true,"color":"white"}]
team modify class_3 deathMessageVisibility always
team modify class_3 color white

team add class_4 ["",{"text":"[","bold":true,"color":"dark_purple"},{"translate":"roguecraft.class.name.reaper","bold":true,"color":"dark_purple"},{"text":"] ","bold":true,"color":"dark_purple"}]
team modify class_4 prefix ["",{"text":"[","bold":true,"color":"dark_purple"},{"translate":"roguecraft.class.name.reaper","bold":true,"color":"dark_purple"},{"text":"] ","bold":true,"color":"dark_purple"}]
team modify class_4 deathMessageVisibility always
team modify class_4 color dark_purple

kill @e[type=item]