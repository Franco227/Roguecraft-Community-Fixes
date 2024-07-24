data remove entity @n[distance=..1,type=minecraft:interaction] attack
data remove entity @n[distance=..1,type=minecraft:interaction] interaction

execute if entity @s[advancements={roguecraft:roguecraft/true_completion=false}] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
execute if entity @s[advancements={roguecraft:roguecraft/true_completion=false}] run return run tellraw @s {"translate":"roguecraft.chat_messages.golden_scythe_no_requirements","italic":true,"color":"red"}

execute unless score @s golden_scythe matches 589000069 run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 2
execute unless score @s golden_scythe matches 589000069 run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 0.5
execute unless score @s golden_scythe matches 589000069 run tellraw @s {"translate":"roguecraft.chat_messages.golden_scythe_equip","italic":true,"color":"gold"}
execute unless score @s golden_scythe matches 589000069 run particle minecraft:crit ~ ~1.5 ~ 0.1 0.5 0.1 1 30
execute unless score @s golden_scythe matches 589000069 run return run scoreboard players set @s golden_scythe 589000069

tellraw @s {"translate":"roguecraft.chat_messages.golden_scythe_unequip","italic":true,"color":"red"}
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 0.6
scoreboard players set @s golden_scythe 0