$scoreboard players add @s $(upgrade) $(increase)
$tellraw @s [{"translate":"roguecraft.chat_messages.upgrade_buy","italic":true,"color":"green","with":[{"translate":"roguecraft.upgrade.name.$(upgrade)"}]},{"translate":" (%s/%s)","italic":true,"color":"green","with":[{"score":{"name":"@s","objective":"$(upgrade)"}},{"score":{"name":"@e[type=minecraft:marker,distance=..1,sort=nearest,limit=1]","objective":"level_max"}}]}]

$scoreboard players add @s[scores={$(upgrade)=$(max_final)}] shops_completed 1

$scoreboard players remove @s skillpoints $(cost)
execute at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1.5