execute if data entity @s {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}} unless data entity @s {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":1}}} run tag @s add bind

$execute if score @s[tag=!bind] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max if score @n[distance=..1,type=minecraft:marker] level_current matches 3 run tellraw @s {"translate":"roguecraft.chat_messages.error_max","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.ability"}]}
$execute if score @s[tag=!bind] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max unless score @n[distance=..1,type=minecraft:marker] level_current matches 3 run tellraw @s {"translate":"roguecraft.chat_messages.error_max_incomplete","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.ability"}]}
$execute if score @s[tag=!bind] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5

$execute unless score @s[tag=!bind,scores={$(upgrade)=2}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max as @s unless score @s skillpoints matches $(cost2).. run tellraw @s {"translate":"roguecraft.chat_messages.error_too_expensive","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.ability"}]}
$execute unless score @s[tag=!bind,scores={$(upgrade)=2}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max as @s unless score @s skillpoints matches $(cost2).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute unless score @s[tag=!bind,scores={$(upgrade)=2}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max as @s if score @s skillpoints matches $(cost2).. run function roguecraft:shops/ability/buying with entity @n[type=minecraft:marker] data

$execute unless score @s[tag=!bind,scores={$(upgrade)=1}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max as @s unless score @s skillpoints matches $(cost1).. run tellraw @s {"translate":"roguecraft.chat_messages.error_too_expensive","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.ability"}]}
$execute unless score @s[tag=!bind,scores={$(upgrade)=1}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max as @s unless score @s skillpoints matches $(cost1).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute unless score @s[tag=!bind,scores={$(upgrade)=1}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max as @s if score @s skillpoints matches $(cost1).. run function roguecraft:shops/ability/buying with entity @n[type=minecraft:marker] data

$execute unless score @s[tag=!bind,scores={$(upgrade)=0}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max as @s unless score @s skillpoints matches $(cost0).. run tellraw @s {"translate":"roguecraft.chat_messages.error_too_expensive","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.ability"}]}
$execute unless score @s[tag=!bind,scores={$(upgrade)=0}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max as @s unless score @s skillpoints matches $(cost0).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute unless score @s[tag=!bind,scores={$(upgrade)=0}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max as @s if score @s skillpoints matches $(cost0).. run function roguecraft:shops/ability/buying with entity @n[type=minecraft:marker] data

execute as @s[tag=bind] run function roguecraft:shops/ability/bind with entity @n[type=minecraft:marker] data
tag @s remove bind