scoreboard players remove @s shops_completed 1

$scoreboard players remove @s class_$(upgrade) 1
$tellraw @s [{"translate":"roguecraft.chat_messages.class_sell","italic":true,"color":"gray","with":[{"translate":"roguecraft.class.name.$(upgrade)"},{"translate":"roguecraft.chat_messages.class"}]}]

execute at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0.5

$execute if score @s class matches $(id) run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 0.6
$execute if score @s class matches $(id) run tellraw @s {"translate":"roguecraft.chat_messages.class_deselect","italic":true,"color":"red","with":[{"translate":"roguecraft.class.name.$(upgrade)"},{"translate":"roguecraft.chat_messages.class"}]}
$execute if score @s class matches $(id) run summon minecraft:marker 0 100 0 {Tags:["unbind"]}
$execute if score @s class matches $(id) run scoreboard players set @s class -1

function roguecraft:infinite_garden/hub/set_inventory

kill @e[tag=unbind,type=!player]