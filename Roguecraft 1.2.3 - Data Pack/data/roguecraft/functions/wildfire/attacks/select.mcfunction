execute store result score @s random run random value 0..5


execute if score @s attack_cooldown matches ..0 unless score @s last_attack matches 0 if entity @a[gamemode=!spectator,distance=..6] if score @s random matches 0..3 run function roguecraft:wildfire/attacks/pulse/main

execute if score @s attack_cooldown matches ..0 unless score @s last_attack matches 1 unless entity @a[gamemode=!spectator,distance=..6] if score @s random matches 0..2 run function roguecraft:wildfire/attacks/small_fireball/main
execute if score @s attack_cooldown matches ..0 if score @s last_attack matches 0 if entity @a[gamemode=!spectator,distance=..6] if score @s random matches 0..2 run function roguecraft:wildfire/attacks/small_fireball/main
execute if score @s attack_cooldown matches ..0 if score @s last_attack matches 2 if entity @a[gamemode=!spectator,distance=..6] if score @s random matches 4..5 run function roguecraft:wildfire/attacks/small_fireball/main
execute if score @s attack_cooldown matches ..0 if score @s last_attack matches 3 if entity @a[gamemode=!spectator,distance=..6] if score @s random matches 4 run function roguecraft:wildfire/attacks/small_fireball/main

execute if score @s attack_cooldown matches ..0 unless score @s last_attack matches 2 unless entity @a[gamemode=!spectator,distance=..6] if score @s random matches 3..5 run function roguecraft:wildfire/attacks/big_fireball/main
execute if score @s attack_cooldown matches ..0 if score @s last_attack matches 0 if entity @a[gamemode=!spectator,distance=..6] if score @s random matches 3..5 run function roguecraft:wildfire/attacks/big_fireball/main
execute if score @s attack_cooldown matches ..0 if score @s last_attack matches 1 if entity @a[gamemode=!spectator,distance=..6] if score @s random matches 4..5 run function roguecraft:wildfire/attacks/big_fireball/main
execute if score @s attack_cooldown matches ..0 if score @s last_attack matches 3 if entity @a[gamemode=!spectator,distance=..6] if score @s random matches 5 run function roguecraft:wildfire/attacks/big_fireball/main

execute if score @s attack_cooldown matches ..0 if score @s last_attack matches 1 unless entity @a[gamemode=!spectator,distance=..6] if score @s random matches 0..2 run function roguecraft:wildfire/attacks/pillar/main
execute if score @s attack_cooldown matches ..0 if score @s last_attack matches 2 unless entity @a[gamemode=!spectator,distance=..6] if score @s random matches 3..5 run function roguecraft:wildfire/attacks/pillar/main


execute store result storage roguecraft:master random int 1 run random value 0..2
execute at @e[type=marker,tag=wildfire,scores={boss_health=1..}] if data storage roguecraft:master {random:0} run playsound roguecraft:entity.wildfire.shoot_vocal_0 hostile @a ~ ~ ~ 1.5
execute at @e[type=marker,tag=wildfire,scores={boss_health=1..}] if data storage roguecraft:master {random:1} run playsound roguecraft:entity.wildfire.shoot_vocal_1 hostile @a ~ ~ ~ 1.5
execute at @e[type=marker,tag=wildfire,scores={boss_health=1..}] if data storage roguecraft:master {random:2} run playsound roguecraft:entity.wildfire.shoot_vocal_2 hostile @a ~ ~ ~ 1.5