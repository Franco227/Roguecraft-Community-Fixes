execute as @a unless score @e[type=minecraft:marker,tag=master,limit=1] beam_amount > @e[type=minecraft:marker,tag=master,limit=1] beam_max run function roguecraft:infinite_garden/prepare_marker_1

execute in roguecraft:infinite_garden run tp @a[tag=!hub,tag=!garden] 0 63 0 90 0
execute in roguecraft:infinite_garden run playsound minecraft:entity.enderman.teleport master @a 0 64 0 0.5 1.25
execute in roguecraft:infinite_garden run particle minecraft:reverse_portal 0 64 0 0 0 0 10 300 force
execute in roguecraft:infinite_garden run playsound minecraft:entity.player.levelup master @a[tag=!hub,tag=!garden] 0 64 0 1 1

data merge storage roguecraft:master {run_active:0}

execute as @e[type=minecraft:marker,tag=id] run function roguecraft:set_mana_bar with entity @s data
execute as @a[tag=!hub,tag=!garden] run function roguecraft:infinite_garden/hub/set_inventory

title @a[tag=!hub,tag=!garden] title {"translate":"roguecraft.title.victory","bold":true,"color":"green"}

xp set @a[tag=!hub,tag=!garden] 0 levels
xp set @a[tag=!hub,tag=!garden] 0 points
scoreboard players set @a[tag=!hub,tag=!garden] level_current 0
scoreboard players set @a[tag=!hub,tag=!garden] level_max 0

scoreboard players set @a[tag=!hub,tag=!garden] dirt_timer 0
scoreboard players set @a[tag=!hub,tag=!garden] liquid_timer 0
scoreboard players set @a[tag=!hub,tag=!garden] lava_timer 0

schedule clear custom_ender_dragon:p2/attack_timer
schedule clear custom_ender_dragon:p3/attack_timer
schedule clear custom_ender_dragon:two_second_tick
schedule clear custom_ender_dragon:quarter_second_tick
schedule clear custom_ender_dragon:p5/attack_timer_10s
schedule clear custom_ender_dragon:p5/attack_timer_15s
schedule clear custom_ender_dragon:p5/attack_timer_5s
bossbar set minecraft:dragon players @a[tag=olkjahsoihaef]
bossbar set minecraft:phase_4_mobs players @a[tag=olkjahsoihaef]

execute as @e[type=minecraft:marker,tag=id] run function roguecraft:ability/dirt_walker/disable_bossbar with entity @s data
execute as @e[type=minecraft:marker,tag=id] run function roguecraft:ability/liquid_walker/disable_bossbar with entity @s data
execute as @e[type=minecraft:marker,tag=id] run function roguecraft:ability/lava_walker/disable_bossbar with entity @s data

bossbar set minecraft:difficulty players @s[tag=tjrrtjrtaesf]

tag @a remove victory

scoreboard players add @a[tag=!garden,tag=!hub] skillpoints 40
execute as @a[tag=!garden,tag=!hub] run function roguecraft:infinite_garden/hub/set_inventory
execute as @a[tag=!garden,tag=!hub] run tellraw @s {"translate":"roguecraft.chat_messages.sp_ender_dragon","bold":true,"italic":true,"color":"aqua","with":["40",{"score":{"name":"@s","objective":"skillpoints"}}]}


effect clear @a[tag=!hub,tag=!garden]

effect give @a[tag=!hub,tag=!garden] minecraft:resistance infinite 4 true
effect give @a[tag=!hub,tag=!garden] minecraft:speed infinite 7 true
effect give @a[tag=!hub,tag=!garden] minecraft:saturation infinite 0 true
attribute @s minecraft:generic.armor base set 0
execute as @a[tag=!hub,tag=!garden] run attribute @s minecraft:generic.max_health base set 20
tag @a[tag=!hub,tag=!garden] add hub
team join not_ready @a[tag=!hub,tag=!garden]