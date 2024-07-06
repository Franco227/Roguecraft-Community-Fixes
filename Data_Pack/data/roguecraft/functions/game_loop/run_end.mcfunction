execute as @a[tag=!garden,tag=!hub] unless score @e[type=minecraft:marker,tag=master,limit=1] beam_amount > @e[type=minecraft:marker,tag=master,limit=1] beam_max run function roguecraft:infinite_garden/prepare_marker_1

execute in roguecraft:infinite_garden run tp @a[tag=!garden,tag=!hub] 0 63 0 90 0
execute in roguecraft:infinite_garden run playsound minecraft:entity.wither.spawn master @a[tag=!garden,tag=!hub] 0.00 64 0.00 0.2 0.75
gamemode adventure @a[tag=!garden,tag=!hub]
effect give @a[tag=!garden,tag=!hub] minecraft:resistance infinite 4 true
effect give @a[tag=!garden,tag=!hub] minecraft:speed infinite 7 true
effect give @a[tag=!garden,tag=!hub] minecraft:saturation infinite 0 true
team join not_ready @a[tag=!garden,tag=!hub]

data merge storage roguecraft:master {run_active:0}
data merge storage roguecraft:master {bosses_checked:0b}

execute as @e[tag=id,type=minecraft:marker] run function roguecraft:set_mana_bar with entity @s data
execute as @a[tag=!garden,tag=!hub] run function roguecraft:infinite_garden/hub/set_inventory

title @a[tag=!garden,tag=!hub] title {"translate":"roguecraft.title.defeat","bold":true,"color":"dark_red"}

xp set @a[tag=!garden,tag=!hub] 0 levels
xp set @a[tag=!garden,tag=!hub] 0 points
scoreboard players set @a[tag=!garden,tag=!hub] level_current 0
scoreboard players set @a[tag=!garden,tag=!hub] level_max 0

scoreboard players set @a[tag=!garden,tag=!hub] dirt_timer 0
scoreboard players set @a[tag=!garden,tag=!hub] liquid_timer 0
scoreboard players set @a[tag=!garden,tag=!hub] lava_timer 0

scoreboard players reset @a stronghold_location
scoreboard players reset @a restart_run

schedule clear custom_ender_dragon:p2/attack_timer
schedule clear custom_ender_dragon:p3/attack_timer
schedule clear custom_ender_dragon:two_second_tick
schedule clear custom_ender_dragon:quarter_second_tick
schedule clear custom_ender_dragon:p5/attack_timer_10s
schedule clear custom_ender_dragon:p5/attack_timer_15s
schedule clear custom_ender_dragon:p5/attack_timer_5s
bossbar set minecraft:dragon players @a[tag=olkjahsoihaef]
bossbar set minecraft:phase_4_mobs players @a[tag=olkjahsoihaef]

execute as @e[tag=id,type=minecraft:marker] run function roguecraft:ability/dirt_walker/disable_bossbar with entity @s data
execute as @e[tag=id,type=minecraft:marker] run function roguecraft:ability/liquid_walker/disable_bossbar with entity @s data
execute as @e[tag=id,type=minecraft:marker] run function roguecraft:ability/lava_walker/disable_bossbar with entity @s data

schedule function roguecraft:infinite_garden/hub/check_bosses 1s

bossbar set minecraft:difficulty players @s[tag=how_tf_did_this_video_get_over_200k_views_sdigfhwshje]

tag @a[tag=!garden] add hub