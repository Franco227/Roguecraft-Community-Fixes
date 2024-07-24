tag @s add marked
tag @s add shop

scoreboard players set @s run_number -1
$scoreboard players set @s level_current $(default_level)
execute store result score @s level_min run data get entity @s data.max.level_0

execute store result score @s corpus run data get entity @s data.corpus
execute store result score @s sol run data get entity @s data.sol
execute store result score @s custos run data get entity @s data.custos
execute store result score @s aqua run data get entity @s data.aqua
execute store result score @s tyrannus run data get entity @s data.tyrannus
execute store result score @s anima run data get entity @s data.anima
execute store result score @s fatum run data get entity @s data.fatum

$summon minecraft:text_display ~ ~1.6 ~ {text:'[{"translate":"roguecraft.class.name.$(name)"},{"text":"\\n"},{"translate":"roguecraft.generic.cost"},{"text":": $(cost)✦"}]',Rotation:[$(rotation).0f,0.0f]}
$summon minecraft:interaction ~ ~-0.5 ~ {Tags:["class_shop"],Rotation:[$(rotation).0f,0.0f],height:2}
$execute positioned ~ ~2.75 ~ unless entity @e[type=minecraft:item_display,tag=lock,distance=..1.5] run summon minecraft:item_display ~ ~ ~ {item:{id:"totem_of_undying",Count:1b,components:{"minecraft:custom_model_data":403}},Rotation:[$(rotation).0f,0.0f],Tags:["lock"]}
tp @s ~ ~0.5 ~

function roguecraft:shops/set_max_level with entity @s data.max