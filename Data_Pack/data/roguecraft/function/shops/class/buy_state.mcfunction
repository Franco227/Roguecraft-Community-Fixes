$execute if score @s class_$(upgrade) matches 1 run function roguecraft:shops/class/bind with entity @n[type=minecraft:marker] data
$execute if score @s class_$(upgrade) matches 0 if score @s class_$(upgrade) = @n[distance=..1,type=minecraft:marker] level_max run tellraw @s {"translate":"roguecraft.chat_messages.error_max_incomplete","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.class"}]}
$execute if score @s class_$(upgrade) matches 0 if score @s class_$(upgrade) = @n[distance=..1,type=minecraft:marker] level_max run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute unless score @s class_$(upgrade) = @n[distance=..1,type=minecraft:marker] level_max unless score @s skillpoints matches $(cost).. run tellraw @s {"translate":"roguecraft.chat_messages.error_too_expensive","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.class"}]}
$execute unless score @s class_$(upgrade) = @n[distance=..1,type=minecraft:marker] level_max unless score @s skillpoints matches $(cost).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5

$execute unless score @s class_$(upgrade) = @n[distance=..1,type=minecraft:marker] level_max if score @s skillpoints matches $(cost).. run function roguecraft:shops/class/buying with entity @n[type=minecraft:marker] data