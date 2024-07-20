$execute if score @s $(upgrade) = @n[distance=..1,type=minecraft:marker] level_min run tellraw @s {"translate":"roguecraft.chat_messages.error_min","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.upgrade"}]}
$execute if score @s $(upgrade) = @n[distance=..1,type=minecraft:marker] level_min at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5

$execute unless score @s $(upgrade) = @n[distance=..1,type=minecraft:marker] level_min run function roguecraft:shops/upgrade/selling with entity @n[type=minecraft:marker] data