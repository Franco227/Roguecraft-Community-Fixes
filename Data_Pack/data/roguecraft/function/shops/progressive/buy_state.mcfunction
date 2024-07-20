$execute if score @s $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max if score @n[distance=..1,type=minecraft:marker] level_current matches 3 run tellraw @s {"translate":"roguecraft.chat_messages.error_max","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.upgrade"}]}
$execute if score @s $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max unless score @n[distance=..1,type=minecraft:marker] level_current matches 3 run tellraw @s {"translate":"roguecraft.chat_messages.error_max_incomplete","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.upgrade"}]}
$execute if score @s $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5

$execute unless score @s[scores={$(upgrade)=5}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max unless score @s skillpoints matches $(cost5).. run tellraw @s {"translate":"roguecraft.chat_messages.error_too_expensive","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.upgrade"}]}
$execute unless score @s[scores={$(upgrade)=5}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max unless score @s skillpoints matches $(cost5).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute unless score @s[scores={$(upgrade)=5}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max if score @s skillpoints matches $(cost5).. run function roguecraft:shops/progressive/buying with entity @n[type=minecraft:marker] data

$execute unless score @s[scores={$(upgrade)=4}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max unless score @s skillpoints matches $(cost4).. run tellraw @s {"translate":"roguecraft.chat_messages.error_too_expensive","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.upgrade"}]}
$execute unless score @s[scores={$(upgrade)=4}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max unless score @s skillpoints matches $(cost4).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute unless score @s[scores={$(upgrade)=4}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max if score @s skillpoints matches $(cost4).. run function roguecraft:shops/progressive/buying with entity @n[type=minecraft:marker] data

$execute unless score @s[scores={$(upgrade)=3}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max unless score @s skillpoints matches $(cost3).. run tellraw @s {"translate":"roguecraft.chat_messages.error_too_expensive","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.upgrade"}]}
$execute unless score @s[scores={$(upgrade)=3}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max unless score @s skillpoints matches $(cost3).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute unless score @s[scores={$(upgrade)=3}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max if score @s skillpoints matches $(cost3).. run function roguecraft:shops/progressive/buying with entity @n[type=minecraft:marker] data

$execute unless score @s[scores={$(upgrade)=2}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max unless score @s skillpoints matches $(cost2).. run tellraw @s {"translate":"roguecraft.chat_messages.error_too_expensive","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.upgrade"}]}
$execute unless score @s[scores={$(upgrade)=2}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max unless score @s skillpoints matches $(cost2).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute unless score @s[scores={$(upgrade)=2}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max if score @s skillpoints matches $(cost2).. run function roguecraft:shops/progressive/buying with entity @n[type=minecraft:marker] data

$execute unless score @s[scores={$(upgrade)=1}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max unless score @s skillpoints matches $(cost1).. run tellraw @s {"translate":"roguecraft.chat_messages.error_too_expensive","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.upgrade"}]}
$execute unless score @s[scores={$(upgrade)=1}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max unless score @s skillpoints matches $(cost1).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute unless score @s[scores={$(upgrade)=1}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max if score @s skillpoints matches $(cost1).. run function roguecraft:shops/progressive/buying with entity @n[type=minecraft:marker] data

$execute unless score @s[scores={$(upgrade)=0}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max unless score @s skillpoints matches $(cost0).. run tellraw @s {"translate":"roguecraft.chat_messages.error_too_expensive","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.upgrade"}]}
$execute unless score @s[scores={$(upgrade)=0}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max unless score @s skillpoints matches $(cost0).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute unless score @s[scores={$(upgrade)=0}] $(upgrade) = @n[distance=..1,type=minecraft:marker] level_max if score @s skillpoints matches $(cost0).. run function roguecraft:shops/progressive/buying with entity @n[type=minecraft:marker] data