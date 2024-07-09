execute as @a store result score @s temp_health run data get entity @s Health

#general
execute as @a[gamemode=creative] run scoreboard players operation @s mana = @s max_mana
execute as @a[gamemode=creative] run scoreboard players operation @s soul_charge = @s max_soul_charge

#healer class
execute as @a[gamemode=!spectator,scores={class=2},tag=!hub,tag=!victory] at @s run function roguecraft:tick/healer_particles

#vengeful spectre
execute as @e[type=minecraft:marker,tag=spectre] at @s run function roguecraft:ability/classes/vengeful_spectre/main with entity @s data
execute as @a[scores={class=4,mob_kills=1..}] run function roguecraft:calculate_soul_charge

#abilities
scoreboard players remove @a parry_timer 1
scoreboard players remove @a dirt_timer 1
scoreboard players remove @a liquid_timer 1

execute at @a[gamemode=!spectator,scores={dirt_timer=0..}] run function roguecraft:tick/abilities/dirt_walker
execute at @a[gamemode=!spectator,scores={liquid_timer=0..}] run function roguecraft:tick/abilities/liquid_walker
execute as @a[gamemode=!spectator,scores={parry_timer=1..,damage=1..}] at @s run function roguecraft:tick/abilities/parry
execute as @a[scores={parry_timer=0}] at @s run playsound minecraft:ui.toast.out master @s ~ ~ ~ 2 2
execute as @e[type=minecraft:fireball,tag=player_fireball] at @s if entity @a[distance=..80] run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.025 5 force
execute as @e[type=minecraft:marker,tag=gigadrill] at @s run function roguecraft:ability/mining/process_marker