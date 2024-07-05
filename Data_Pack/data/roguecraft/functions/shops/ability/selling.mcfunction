$scoreboard players remove @s[scores={$(upgrade)=3}] shops_completed 1

$scoreboard players remove @s $(upgrade) 1
$tellraw @s [{"translate":"roguecraft.chat_messages.upgrade_sell","italic":true,"color":"gray","with":[{"translate":"roguecraft.ability.name.$(upgrade)"}]},{"translate":" (%s/%s)","italic":true,"color":"gray","with":[{"score":{"name":"@s","objective":"$(upgrade)"}},{"score":{"name":"@e[distance=..1,type=marker,sort=nearest,limit=1]","objective":"level_max"}}]}]

execute at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0.5

$execute if score @s $(upgrade) matches 0 if score @s ability_1 matches $(id) run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 0.6
$execute if score @s $(upgrade) matches 0 if score @s ability_1 matches $(id) run tellraw @s {"translate":"roguecraft.chat_messages.ability_unbind","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.ability_equip_a1"}]}
$execute if score @s $(upgrade) matches 0 if score @s ability_1 matches $(id) run item replace entity @s container.0 with warped_fungus_on_a_stick[minecraft:unbreakable={},minecraft:custom_model_data=2,minecraft:custom_name='[{"translate":"roguecraft.item.ability","color":"light_purple","with":[{"translate":"roguecraft.generic.ability"},"1"],"italic":false}]']
$execute if score @s $(upgrade) matches 0 if score @s ability_1 matches $(id) run scoreboard players set @s ability_1 -1

$execute if score @s $(upgrade) matches 0 if score @s ability_2 matches $(id) run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 0.6
$execute if score @s $(upgrade) matches 0 if score @s ability_2 matches $(id) run tellraw @s {"translate":"roguecraft.chat_messages.ability_unbind","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.ability_equip_a2"}]}
$execute if score @s $(upgrade) matches 0 if score @s ability_2 matches $(id) run item replace entity @s container.1 with warped_fungus_on_a_stick[minecraft:unbreakable={},minecraft:custom_model_data=3,minecraft:custom_name='[{"translate":"roguecraft.item.ability","color":"light_purple","with":[{"translate":"roguecraft.generic.ability"},"2"],"italic":false}]']
$execute if score @s $(upgrade) matches 0 if score @s ability_2 matches $(id) run scoreboard players set @s ability_2 -1

$execute if score @s $(upgrade) matches 0 if score @s ability_3 matches $(id) run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 0.6
$execute if score @s $(upgrade) matches 0 if score @s ability_3 matches $(id) run tellraw @s {"translate":"roguecraft.chat_messages.ability_unbind","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.ability_equip_a3"}]}
$execute if score @s $(upgrade) matches 0 if score @s ability_3 matches $(id) run item replace entity @s container.2 with warped_fungus_on_a_stick[minecraft:unbreakable={},minecraft:custom_model_data=4,minecraft:custom_name='[{"translate":"roguecraft.item.ability","color":"light_purple","with":[{"translate":"roguecraft.generic.ability"},"3"],"italic":false}]']
$execute if score @s $(upgrade) matches 0 if score @s ability_3 matches $(id) run scoreboard players set @s ability_3 -1

$execute if score @s $(upgrade) matches 0 if score @s ability_4 matches $(id) run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 0.6
$execute if score @s $(upgrade) matches 0 if score @s ability_4 matches $(id) run tellraw @s {"translate":"roguecraft.chat_messages.ability_unbind","italic":true,"color":"red","with":[{"translate":"roguecraft.chat_messages.ability_equip_a4"}]}
$execute if score @s $(upgrade) matches 0 if score @s ability_4 matches $(id) if score @s class matches 1 run item replace entity @s container.3 with warped_fungus_on_a_stick[minecraft:unbreakable={},minecraft:custom_model_data=5,minecraft:custom_name='[{"translate":"roguecraft.item.ability","color":"light_purple","with":[{"translate":"roguecraft.generic.ability"},"4"],"italic":false}]']
$execute if score @s $(upgrade) matches 0 if score @s ability_4 matches $(id) run scoreboard players set @s ability_4 -1

function roguecraft:infinite_garden/hub/set_inventory