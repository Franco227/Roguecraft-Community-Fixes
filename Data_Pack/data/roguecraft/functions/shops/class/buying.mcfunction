$scoreboard players add @s class_$(upgrade) 1
$tellraw @s {"translate":"roguecraft.chat_messages.class_buy","italic":true,"color":"green","with":[{"translate":"roguecraft.class.name.$(upgrade)"},{"translate":"roguecraft.chat_messages.class"}]}
execute at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1.5

scoreboard players add @s shops_completed 1

$scoreboard players remove @s skillpoints $(cost)

$execute if score @s class_$(upgrade) matches 1 run function roguecraft:shops/class/bind with entity @e[type=minecraft:marker,sort=nearest,limit=1] data