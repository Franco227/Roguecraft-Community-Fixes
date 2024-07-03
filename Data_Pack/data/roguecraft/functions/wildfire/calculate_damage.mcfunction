scoreboard players set @s health_loss 0
scoreboard players set @s lowest_health 1000
$execute as @e[type=slime,tag=$(boss_id),tag=shield_0] run function roguecraft:wildfire/compare_health with entity @e[type=marker,tag=$(boss_id),limit=1] data
execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 run scoreboard players operation @s health_loss += 1000 int
execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 run scoreboard players operation @s health_loss -= @s lowest_health
$execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 at @e[type=slime,tag=$(boss_id),tag=shield_0] run playsound minecraft:entity.wither.break_block hostile @a ^ ^ ^1 0.25
$execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 at @e[type=slime,tag=$(boss_id),tag=shield_0] run playsound minecraft:entity.blaze.hurt hostile @a ^ ^ ^1 1 0.5
scoreboard players operation @s shield_0_health -= @s health_loss
$execute if score @s health_loss matches 1.. at @e[type=item_display,tag=shield_0,tag=$(boss_id)] run particle small_flame ^ ^ ^2 0.1 1 0.1 0.5 10

scoreboard players set @s health_loss 0
scoreboard players set @s lowest_health 1000
$execute as @e[type=slime,tag=$(boss_id),tag=shield_1] run function roguecraft:wildfire/compare_health with entity @e[type=marker,tag=$(boss_id),limit=1] data
execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 run scoreboard players operation @s health_loss += 1000 int
execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 run scoreboard players operation @s health_loss -= @s lowest_health
$execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 at @e[type=slime,tag=$(boss_id),tag=shield_1] run playsound minecraft:entity.wither.break_block hostile @a ^ ^ ^1 0.25
$execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 at @e[type=slime,tag=$(boss_id),tag=shield_1] run playsound minecraft:entity.blaze.hurt hostile @a ^ ^ ^1 1 0.5
scoreboard players operation @s shield_1_health -= @s health_loss
$execute if score @s health_loss matches 1.. at @e[type=item_display,tag=shield_1,tag=$(boss_id)] run particle small_flame ^ ^ ^2 0.1 1 0.1 0.5 10

scoreboard players set @s health_loss 0
scoreboard players set @s lowest_health 1000
$execute as @e[type=slime,tag=$(boss_id),tag=shield_2] run function roguecraft:wildfire/compare_health with entity @e[type=marker,tag=$(boss_id),limit=1] data
execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 run scoreboard players operation @s health_loss += 1000 int
execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 run scoreboard players operation @s health_loss -= @s lowest_health
$execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 at @e[type=slime,tag=$(boss_id),tag=shield_2] run playsound minecraft:entity.wither.break_block hostile @a ^ ^ ^1 0.25
$execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 at @e[type=slime,tag=$(boss_id),tag=shield_2] run playsound minecraft:entity.blaze.hurt hostile @a ^ ^ ^1 1 0.5
scoreboard players operation @s shield_2_health -= @s health_loss
$execute if score @s health_loss matches 1.. at @e[type=item_display,tag=shield_2,tag=$(boss_id)] run particle small_flame ^ ^ ^2 0.1 1 0.1 0.5 10

scoreboard players set @s health_loss 0
scoreboard players set @s lowest_health 1000
$execute as @e[type=slime,tag=$(boss_id),tag=shield_3] run function roguecraft:wildfire/compare_health with entity @e[type=marker,tag=$(boss_id),limit=1] data
execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 run scoreboard players operation @s health_loss += 1000 int
execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 run scoreboard players operation @s health_loss -= @s lowest_health
$execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 at @e[type=slime,tag=$(boss_id),tag=shield_3] run playsound minecraft:entity.wither.break_block hostile @a ^ ^ ^1 0.25
$execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 at @e[type=slime,tag=$(boss_id),tag=shield_3] run playsound minecraft:entity.blaze.hurt hostile @a ^ ^ ^1 1 0.5
scoreboard players operation @s shield_3_health -= @s health_loss
$execute if score @s health_loss matches 1.. at @e[type=item_display,tag=shield_3,tag=$(boss_id)] run particle small_flame ^ ^ ^2 0.1 1 0.1 0.5 10

execute store result storage roguecraft:master random int 1 run random value 0..2
scoreboard players set @s health_loss 0
scoreboard players set @s lowest_health 1000
$execute as @e[type=slime,tag=$(boss_id),tag=main] run function roguecraft:wildfire/compare_health with entity @e[type=marker,tag=$(boss_id),limit=1] data
execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 run scoreboard players operation @s health_loss += 1000 int
execute unless score @s lowest_health matches 1000 unless score @s lowest_health matches 0 run scoreboard players operation @s health_loss -= @s lowest_health
scoreboard players operation @s damage_percentage = 100 int
scoreboard players operation @s damage_percentage -= @s damage_reduction
scoreboard players operation @s health_loss *= @s damage_percentage
scoreboard players operation @s health_loss /= 100 int
execute if score @s health_loss matches 1.. at @s if data storage roguecraft:master {random:0} run playsound roguecraft:entity.wildfire.hurt_0 hostile @a ~ ~ ~ 2
execute if score @s health_loss matches 1.. at @s if data storage roguecraft:master {random:1} run playsound roguecraft:entity.wildfire.hurt_1 hostile @a ~ ~ ~ 2
execute if score @s health_loss matches 1.. at @s if data storage roguecraft:master {random:2} run playsound roguecraft:entity.wildfire.hurt_2 hostile @a ~ ~ ~ 2
scoreboard players operation @s boss_health -= @s health_loss
$execute if score @s health_loss matches 1.. store result bossbar wildfire_$(boss_id) value run scoreboard players get @s boss_health
execute if score @s health_loss matches 1.. at @s run particle small_flame ~ ~2 ~ 0.05 2 0.1 0.5 15

$execute if score @s shield_0_health matches 90..119 run data merge entity @e[type=item_display,tag=$(boss_id),tag=shield_0,limit=1] {item:{tag:{CustomModelData:9}}}
$execute if score @s shield_0_health matches 60..89 run data merge entity @e[type=item_display,tag=$(boss_id),tag=shield_0,limit=1] {item:{tag:{CustomModelData:10}}}
$execute if score @s shield_0_health matches 30..59 run data merge entity @e[type=item_display,tag=$(boss_id),tag=shield_0,limit=1] {item:{tag:{CustomModelData:11}}}
$execute if score @s shield_0_health matches 1..29 run data merge entity @e[type=item_display,tag=$(boss_id),tag=shield_0,limit=1] {item:{tag:{CustomModelData:12}}}

$execute if score @s shield_1_health matches 90..119 run data merge entity @e[type=item_display,tag=$(boss_id),tag=shield_1,limit=1] {item:{tag:{CustomModelData:9}}}
$execute if score @s shield_1_health matches 60..89 run data merge entity @e[type=item_display,tag=$(boss_id),tag=shield_1,limit=1] {item:{tag:{CustomModelData:10}}}
$execute if score @s shield_1_health matches 30..59 run data merge entity @e[type=item_display,tag=$(boss_id),tag=shield_1,limit=1] {item:{tag:{CustomModelData:11}}}
$execute if score @s shield_1_health matches 1..29 run data merge entity @e[type=item_display,tag=$(boss_id),tag=shield_1,limit=1] {item:{tag:{CustomModelData:12}}}

$execute if score @s shield_2_health matches 90..119 run data merge entity @e[type=item_display,tag=$(boss_id),tag=shield_2,limit=1] {item:{tag:{CustomModelData:9}}}
$execute if score @s shield_2_health matches 60..89 run data merge entity @e[type=item_display,tag=$(boss_id),tag=shield_2,limit=1] {item:{tag:{CustomModelData:10}}}
$execute if score @s shield_2_health matches 30..59 run data merge entity @e[type=item_display,tag=$(boss_id),tag=shield_2,limit=1] {item:{tag:{CustomModelData:11}}}
$execute if score @s shield_2_health matches 1..29 run data merge entity @e[type=item_display,tag=$(boss_id),tag=shield_2,limit=1] {item:{tag:{CustomModelData:12}}}

$execute if score @s shield_3_health matches 90..119 run data merge entity @e[type=item_display,tag=$(boss_id),tag=shield_3,limit=1] {item:{tag:{CustomModelData:9}}}
$execute if score @s shield_3_health matches 60..89 run data merge entity @e[type=item_display,tag=$(boss_id),tag=shield_3,limit=1] {item:{tag:{CustomModelData:10}}}
$execute if score @s shield_3_health matches 30..59 run data merge entity @e[type=item_display,tag=$(boss_id),tag=shield_3,limit=1] {item:{tag:{CustomModelData:11}}}
$execute if score @s shield_3_health matches 1..29 run data merge entity @e[type=item_display,tag=$(boss_id),tag=shield_3,limit=1] {item:{tag:{CustomModelData:12}}}

$execute if entity @e[type=item_display,tag=$(boss_id),tag=shield_0] if score @s shield_0_health matches ..0 run function roguecraft:wildfire/destroy_shield_0 with entity @s data
$execute if entity @e[type=item_display,tag=$(boss_id),tag=shield_1] if score @s shield_1_health matches ..0 run function roguecraft:wildfire/destroy_shield_1 with entity @s data
$execute if entity @e[type=item_display,tag=$(boss_id),tag=shield_2] if score @s shield_2_health matches ..0 run function roguecraft:wildfire/destroy_shield_2 with entity @s data
$execute if entity @e[type=item_display,tag=$(boss_id),tag=shield_3] if score @s shield_3_health matches ..0 run function roguecraft:wildfire/destroy_shield_3 with entity @s data

execute at @s if score @s boss_health matches ..0 run function roguecraft:wildfire/death_init

$execute as @e[type=slime,tag=$(boss_id)] run data merge entity @s {Health:1000.0f}

execute at @s if entity @s[tag=!blazes_spawned] if score @s boss_health < @s half_health run function roguecraft:wildfire/spawn_blazes