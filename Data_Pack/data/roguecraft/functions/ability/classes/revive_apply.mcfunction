#attributes
$attribute @s minecraft:generic.armor base set $(defense)
$attribute @s minecraft:generic.armor_toughness base set $(armor_toughness)
$attribute @s minecraft:generic.max_health base set $(max_health)
$attribute @s minecraft:generic.knockback_resistance base set $(knockback_resistance)
$attribute @s minecraft:generic.attack_speed base set $(attack_speed)
$attribute @s minecraft:generic.attack_damage base set $(attack_damage)

#effects
execute unless score @s haste matches 0 run function roguecraft:upgrades/haste with entity @e[type=minecraft:marker,tag=main_storage,limit=1] data
execute unless score @s jump_boost matches 0 run function roguecraft:upgrades/jump_boost with entity @e[type=minecraft:marker,tag=main_storage,limit=1] data
execute unless score @s resistance matches 0 run function roguecraft:upgrades/resistance with entity @e[type=minecraft:marker,tag=main_storage,limit=1] data
execute unless score @s speed matches 0 run function roguecraft:upgrades/speed with entity @e[type=minecraft:marker,tag=main_storage,limit=1] data
effect give @s[scores={water_breathing=1}] minecraft:water_breathing infinite 0 true
effect give @s[scores={dolphins_grace=1}] minecraft:dolphins_grace infinite 0 true
effect give @s[scores={fire_resistance=1}] minecraft:fire_resistance infinite 0 true
effect give @s[scores={night_vision=1}] minecraft:night_vision infinite 0 true
effect give @s[scores={regeneration=1}] minecraft:regeneration infinite 0 true
execute if data storage roguecraft:master {glowing:1} run effect give @s minecraft:glowing infinite 0 true

##tools'n stuff
#armor glass cannon
execute if score @s armor matches 1..2 if score @s class matches 3 run effect give @s minecraft:strength infinite 0 true
execute if score @s armor matches 3..4 if score @s class matches 3 run effect give @s minecraft:strength infinite 1 true
execute if score @s armor matches 5 if score @s class matches 3 run effect give @s minecraft:strength infinite 2 true
execute if score @s armor matches 6 if score @s class matches 3 run effect give @s minecraft:strength infinite 3 true

#tank passive
execute as @s[scores={class=0}] run effect give @s minecraft:health_boost infinite 1 true

#healer passive
execute as @s[scores={class=0}] run effect give @s minecraft:health_boost infinite 1 true
execute if score @s class matches 2 if score @s regeneration matches 0 run effect give @s minecraft:regeneration infinite 0 true
execute if score @s class matches 2 if score @s regeneration matches 1 run effect give @s minecraft:regeneration infinite 1 true

#glass cannon
execute if score @s class matches 3 run execute unless score @s speed matches 0 run function roguecraft:upgrades/strength with entity @e[type=minecraft:marker,tag=main_storage,limit=1] data

#mage
effect give @s[scores={class=1}] minecraft:weakness infinite 0 true

execute as @a run scoreboard players operation @s mana = @s max_mana