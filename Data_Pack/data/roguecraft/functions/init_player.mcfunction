forceload add 31 31 -31 -31

scoreboard players set @s defense 0
scoreboard players set @s armor_toughness 0
scoreboard players set @s max_health 5
scoreboard players set @s speed 0
scoreboard players set @s knockback_resistance 0
scoreboard players set @s attack_speed 40
scoreboard players set @s attack_damage 1
scoreboard players set @s water_breathing 0
scoreboard players set @s dolphins_grace 0
scoreboard players set @s fire_resistance 0
scoreboard players set @s haste 0
scoreboard players set @s jump_boost 0
scoreboard players set @s night_vision 0
scoreboard players set @s regeneration 0
scoreboard players set @s resistance 0
scoreboard players set @s armor 0
scoreboard players set @s protection 0
scoreboard players set @s aqua_affinity 0
scoreboard players set @s respiration 0
scoreboard players set @s feather_falling 0
scoreboard players set @s thorns 0
scoreboard players set @s swift_sneak 0
scoreboard players set @s tool 0
scoreboard players set @s efficiency 0
scoreboard players set @s fortune 0
scoreboard players set @s sword 0
scoreboard players set @s sharpness 0
scoreboard players set @s looting 0
scoreboard players set @s sweeping 0
scoreboard players set @s bow 0
scoreboard players set @s arrows 0
scoreboard players set @s power 0
scoreboard players set @s punch 0
scoreboard players set @s flame 0
scoreboard players set @s infinity 0
scoreboard players set @s food 0
scoreboard players set @s golden_apple 0
scoreboard players set @s enchanted_golden_apple 0
scoreboard players set @s flint_and_steel 0
scoreboard players set @s bucket 0
scoreboard players set @s pearls 0
scoreboard players set @s cobblestone 0
scoreboard players set @s wood 0
scoreboard players set @s bed 0
scoreboard players set @s compass 0
scoreboard players set @s mana 100
scoreboard players set @s max_mana 100
scoreboard players set @s max_mana_real 100
scoreboard players set @s mana_regen 2
scoreboard players set @s mage_mana_regen 0
scoreboard players set @s soul_charge 0
scoreboard players set @s max_soul_charge 5
scoreboard players set @s soul_charge_calc_temp 0

scoreboard players set @s dummy_upgrade 0

scoreboard players set @s shops_completed 0

scoreboard players set @s class_glass_cannon 0
scoreboard players set @s class_healer 0
scoreboard players set @s class_mage 0
scoreboard players set @s class_tank 0
scoreboard players set @s class_reaper 0

scoreboard players set @s ability_1 -1
scoreboard players set @s ability_2 -1
scoreboard players set @s ability_3 -1
scoreboard players set @s ability_4 -1
scoreboard players set @s class -1

scoreboard players set @s ability_explosion 0
scoreboard players set @s ability_mining 0
scoreboard players set @s ability_heal 0
scoreboard players set @s ability_damage_sphere 0
scoreboard players set @s ability_arrow_wave 0
scoreboard players set @s ability_lava_walker 0
scoreboard players set @s ability_liquid_walker 0
scoreboard players set @s ability_dirt_walker 0
scoreboard players set @s ability_levitate 0
scoreboard players set @s ability_fireball 0
scoreboard players set @s ability_spikes 0
scoreboard players set @s ability_proximity_mine 0

scoreboard players set @s dirt_timer 0
scoreboard players set @s liquid_timer 0
scoreboard players set @s lava_timer 0

scoreboard players set @s skillpoints 0
scoreboard players set @s level_max 0
scoreboard players set @s y 0

scoreboard players set @s gigadrill_range_1 8
scoreboard players set @s gigadrill_range_2 16
scoreboard players set @s gigadrill_range_3 30

scoreboard players set @s version_num 2

scoreboard players enable @s new_world_timer
scoreboard players enable @s single_run_timer

#add bossbars

$tag @s add mana_$(id)
$bossbar add minecraft:mana_$(id) "Mana"
$bossbar set minecraft:mana_$(id) color blue
$bossbar set minecraft:mana_$(id) style notched_10

$bossbar add minecraft:dirt_$(id) {"translate":"roguecraft.bossbar.dirt_walker"}
$bossbar set minecraft:dirt_$(id) color yellow

$bossbar add minecraft:liquid_$(id) {"translate":"roguecraft.bossbar.liquid_walker"}
$bossbar set minecraft:liquid_$(id) color yellow

$bossbar add minecraft:lava_$(id) "Lava Walker"
$bossbar set minecraft:lava_$(id) color yellow
$summon minecraft:marker 0 100 0 {Tags:["id"],data:{id:$(id)}}

$execute store result bossbar minecraft:mana_$(id) max run scoreboard players get @s 100
$execute store result bossbar minecraft:mana_$(id) value run scoreboard players get @s 100

scoreboard players add @e[tag=master,type=minecraft:marker] id 1
execute store result storage roguecraft:master id int 1 run scoreboard players get @e[type=minecraft:marker,tag=master,limit=1] id

team join not_ready @s
tag @s add init_player
tag @s add hub

effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:speed infinite 7 true
effect give @s minecraft:saturation infinite 0 true

tellraw @s ["",{"text":"If you don't already have the resource pack, you can download it","color":"aqua"},{"text":" "},{"text":"here","color":"green","bold":true,"underlined":false,"clickEvent":{"action":"open_url","value":"https://dub.sh/resource-pack-122"}}]
title @s subtitle {"translate":"roguecraft.bossbar.welcome_2","color":"aqua"}
title @s title {"translate":"roguecraft.bossbar.welcome_1","color":"aqua"}
execute in roguecraft:infinite_garden run tp @s 49 69 0 90 2
playsound minecraft:block.beacon.activate master @s 0.50 125.00 30.50 0.5 1
gamemode adventure @s


function roguecraft:infinite_garden/hub/ender_chest/reset
function roguecraft:infinite_garden/hub/check_inventory