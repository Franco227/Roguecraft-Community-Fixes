$scoreboard players add @s $(upgrade) $(increase)
$tellraw @s [{"translate":"roguecraft.chat_messages.upgrade_buy","italic":true,"color":"green","with":[{"translate":"roguecraft.ability.name.$(upgrade)"}]},{"translate":" (%s/%s)","italic":true,"color":"green","with":[{"score":{"name":"@s","objective":"$(upgrade)"}},{"score":{"name":"@n[distance=..1,type=minecraft:marker]","objective":"level_max"}}]}]
execute at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1.5

$scoreboard players add @s[scores={$(upgrade)=3}] shops_completed 1

$scoreboard players remove @s[scores={$(upgrade)=1}] skillpoints $(cost0)
$scoreboard players remove @s[scores={$(upgrade)=2}] skillpoints $(cost1)
$scoreboard players remove @s[scores={$(upgrade)=3}] skillpoints $(cost2)

advancement grant @s only roguecraft:roguecraft/first_ability