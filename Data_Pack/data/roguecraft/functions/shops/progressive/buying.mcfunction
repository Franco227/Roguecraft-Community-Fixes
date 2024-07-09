$scoreboard players add @s $(upgrade) $(increase)
$tellraw @s [{"translate":"roguecraft.chat_messages.upgrade_buy","italic":true,"color":"green","with":[{"translate":"roguecraft.upgrade.name.$(upgrade)"}]},{"translate":" (%s/%s)","italic":true,"color":"green","with":[{"score":{"name":"@s","objective":"$(upgrade)"}},{"score":{"name":"@e[type=minecraft:marker,distance=..1,sort=nearest,limit=1]","objective":"level_max"}}]}]
execute at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1.5

$scoreboard players add @s[scores={$(upgrade)=$(max_final)}] shops_completed 1

$scoreboard players remove @s[scores={$(upgrade)=1}] skillpoints $(cost0)
$scoreboard players remove @s[scores={$(upgrade)=2}] skillpoints $(cost1)
$scoreboard players remove @s[scores={$(upgrade)=3}] skillpoints $(cost2)
$scoreboard players remove @s[scores={$(upgrade)=4}] skillpoints $(cost3)
$scoreboard players remove @s[scores={$(upgrade)=5}] skillpoints $(cost4)
$scoreboard players remove @s[scores={$(upgrade)=6}] skillpoints $(cost5)