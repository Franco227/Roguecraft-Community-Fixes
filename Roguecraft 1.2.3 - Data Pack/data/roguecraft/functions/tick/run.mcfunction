#advancements
execute as @a store result score @s temp_health run data get entity @s Health
execute as @a[advancements={roguecraft:infinite_garden/max_health=false},nbt={AbsorptionAmount:16.0f,Health:52.0f}] run advancement grant @s only roguecraft:infinite_garden/max_health
execute as @a[advancements={roguecraft:roguecraft/avatar=false},scores={dirt_timer=1..,liquid_timer=1..}] if data entity @s {active_effects:[{id:"minecraft:levitation"}]} run advancement grant @s only roguecraft:roguecraft/avatar

#general
execute as @a[gamemode=creative] run scoreboard players operation @s mana = @s max_mana
execute as @a[gamemode=creative] run scoreboard players operation @s soul_charge = @s max_soul_charge

#healer class
execute as @a[scores={class=2},tag=!hub,gamemode=!spectator,tag=!victory] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 5.5 5.5 5.5 0.01 4 force @a[scores={class=-1}]
execute as @a[scores={class=2},tag=!hub,gamemode=!spectator,tag=!victory] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 5.5 5.5 5.5 0.01 4 force @a[scores={class=0}]
execute as @a[scores={class=2},tag=!hub,gamemode=!spectator,tag=!victory] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 5.5 5.5 5.5 0.01 4 force @a[scores={class=1}]
execute as @a[scores={class=2},tag=!hub,gamemode=!spectator,tag=!victory] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 5.5 5.5 5.5 0.01 4 force @a[scores={class=3}]

#vengeful spectre
execute as @e[type=marker,tag=spectre] at @s run function roguecraft:ability/classes/vengeful_spectre/main with entity @s data
execute as @a[scores={mob_kills=1..}] run function roguecraft:calculate_soul_charge

#abilities
scoreboard players remove @a parry_timer 1
scoreboard players remove @a dirt_timer 1
execute if entity @a[scores={dirt_timer=0..}] as @e[tag=id,type=marker] run function roguecraft:ability/dirt_walker/update_bossbar with entity @s data
execute at @a[scores={dirt_timer=0..},gamemode=!spectator] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 dirt replace air
execute at @a[scores={dirt_timer=0..},gamemode=!spectator] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 dirt replace cave_air
scoreboard players remove @a liquid_timer 1
execute if entity @a[scores={liquid_timer=0..}] as @e[tag=id,type=marker] run function roguecraft:ability/liquid_walker/update_bossbar with entity @s data
execute at @a[scores={liquid_timer=0..},gamemode=!spectator] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 frosted_ice replace water
execute at @a[scores={liquid_timer=0..},gamemode=!spectator] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 basalt replace lava
execute as @a[scores={parry_timer=1..,damage=1..,ability_spikes=1}] at @s run function roguecraft:ability/spikes/parry_1
execute as @a[scores={parry_timer=1..,damage=1..,ability_spikes=2}] at @s run function roguecraft:ability/spikes/parry_2
execute as @a[scores={parry_timer=1..,damage=1..,ability_spikes=3}] at @s run function roguecraft:ability/spikes/parry_3
execute as @e[tag=player_fireball] at @s if entity @a[distance=..80] run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.025 5 force

execute as @a[scores={parry_timer=0}] at @s run playsound minecraft:ui.toast.out master @s ~ ~ ~ 2 2