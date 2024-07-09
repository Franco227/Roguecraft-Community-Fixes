execute at @e[type=minecraft:end_crystal,tag=final] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:0}
execute at @e[type=minecraft:end_crystal,tag=final] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 2 1
kill @e[type=minecraft:end_crystal,tag=final]
kill @e[type=minecraft:block_display,tag=egg_block]
kill @e[type=minecraft:interaction,tag=egg_interaction]
playsound minecraft:block.glass.break master @a[tag=!garden,tag=!hub] ~ ~2 ~ 1 0.5
playsound minecraft:block.glass.break master @a[tag=!garden,tag=!hub] ~ ~2 ~ 1 0.75
playsound minecraft:block.glass.break master @a[tag=!garden,tag=!hub] ~ ~2 ~ 1 1
playsound minecraft:block.glass.break master @a[tag=!garden,tag=!hub] ~ ~2 ~ 1 1.25
playsound minecraft:block.glass.break master @a[tag=!garden,tag=!hub] ~ ~2 ~ 1 1.5
playsound minecraft:entity.wither.break_block master @a[tag=!garden,tag=!hub] ~ ~2 ~ 1 1.5
particle minecraft:reverse_portal ~ ~1 ~ 0.2 0.2 0.2 0.1 500
particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.5 100
particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.5 100
title @a[tag=!garden,tag=!hub] title {"translate":"roguecraft.title.run_end_dragon","color":"light_purple"}
execute as @a[tag=!garden,tag=!hub] at @s run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
advancement grant @a[tag=!garden,tag=!hub,advancements={roguecraft:roguecraft/run_complete=false}] only roguecraft:roguecraft/run_complete
execute if score @e[type=minecraft:marker,tag=master,limit=1] difficulty_level matches ..4 run advancement grant @a[tag=!garden,tag=!hub,advancements={roguecraft:roguecraft/speedrun=false}] only roguecraft:roguecraft/speedrun
execute if score @e[type=minecraft:marker,tag=master,limit=1] difficulty_level matches ..2 run advancement grant @a[tag=!garden,tag=!hub,advancements={roguecraft:roguecraft/world_record=false}] only roguecraft:roguecraft/world_record

tag @s remove victory

execute unless data storage roguecraft:master {bosses_defeated:{tyrannus:1b}} if data storage roguecraft:master {speedrun:{new_world_display:1b}} run function roguecraft:speedrun/tell_time {type:"new_world",message:"roguecraft.speedrun.ender_dragon_message"}
execute if data storage roguecraft:master {speedrun:{single_run_display:1b}} run function roguecraft:speedrun/tell_time {type:"single_run",message:"roguecraft.speedrun.ender_dragon_message"}

execute unless data storage roguecraft:master {bosses_defeated:{tyrannus:1b}} in roguecraft:infinite_garden run summon minecraft:marker 0 100 0 {Tags:["boss_defeated"]}
data merge storage roguecraft:master {bosses_defeated:{tyrannus:1b}}

spreadplayers 0 0 0 5 false @a[tag=!garden,tag=!hub]
execute as @a[tag=!garden,tag=!hub] run function roguecraft:ender_dragon/final_player_effects

function roguecraft:reset_end

schedule function roguecraft:infinite_garden/hub/check_bosses 8s
schedule function roguecraft:ender_dragon/hub_tp 6s