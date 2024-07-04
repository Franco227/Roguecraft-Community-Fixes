tag @s add current_main

#attributes
$attribute @s minecraft:generic.armor base set $(defense)
$attribute @s minecraft:generic.armor_toughness base set $(armor_toughness)
$attribute @s minecraft:generic.max_health base set $(max_health)
$attribute @s minecraft:generic.knockback_resistance base set $(knockback_resistance)
$attribute @s minecraft:generic.attack_speed base set $(attack_speed)
$attribute @s minecraft:generic.attack_damage base set $(attack_damage)

#heal players
effect give @s minecraft:instant_health 40
effect give @s minecraft:saturation 1 100 true
effect give @s minecraft:resistance 2 4 true

#effects
execute unless score @s haste matches 0 run function roguecraft:upgrades/haste with entity @e[tag=main_storage,limit=1] data
execute unless score @s jump_boost matches 0 run function roguecraft:upgrades/jump_boost with entity @e[tag=main_storage,limit=1] data
execute unless score @s resistance matches 0 run function roguecraft:upgrades/resistance with entity @e[tag=main_storage,limit=1] data
execute unless score @s speed matches 0 run function roguecraft:upgrades/speed with entity @e[tag=main_storage,limit=1] data
effect give @s[scores={water_breathing=1}] minecraft:water_breathing infinite 0 true
effect give @s[scores={dolphins_grace=1}] minecraft:dolphins_grace infinite 0 true
effect give @s[scores={fire_resistance=1}] minecraft:fire_resistance infinite 0 true
effect give @s[scores={night_vision=1}] minecraft:night_vision infinite 0 true
effect give @s[scores={regeneration=1}] minecraft:regeneration infinite 0 true
execute if entity @a[tag=!current_main] if data storage roguecraft:master {glowing:1} run effect give @a[tag=!hub,tag=!garden] minecraft:glowing infinite 0 true

#armor glass cannon
execute if score @s armor matches 1..2 if score @s class matches 3 run effect give @s minecraft:strength infinite 0 true
execute if score @s armor matches 3..4 if score @s class matches 3 run effect give @s minecraft:strength infinite 1 true
execute if score @s armor matches 5..6 if score @s class matches 3 run effect give @s minecraft:strength infinite 2 true
execute if score @s armor matches 1..2 if score @s class matches 3 run scoreboard players set @s current_strength 1
execute if score @s armor matches 3..4 if score @s class matches 3 run scoreboard players set @s current_strength 2
execute if score @s armor matches 5..6 if score @s class matches 3 run scoreboard players set @s current_strength 3

execute as @a store result score @s current_health run attribute @s minecraft:generic.max_health base get

$team join class_$(class) @s
#tank passive
execute as @s[scores={class=0}] run effect give @s minecraft:health_boost infinite 2 true

#healer passive
execute as @s[scores={class=0}] run effect give @s minecraft:health_boost infinite 1 true
execute if score @s class matches 2 if score @s regeneration matches 0 run effect give @s minecraft:regeneration infinite 0 true
execute if score @s class matches 2 if score @s regeneration matches 1 run effect give @s minecraft:regeneration infinite 1 true

#reaper
scoreboard players operation @s max_soul_charge = @s max_mana
scoreboard players operation @s soul_charge_calc_temp = @s max_soul_charge
scoreboard players operation @s max_soul_charge /= 20 int
scoreboard players operation @s soul_charge_calc_temp %= 20 int
execute if score @s soul_charge_calc_temp matches 1.. run scoreboard players add @s max_soul_charge 1
scoreboard players set @s soul_charge 0

#mage
effect give @s[scores={class=1}] minecraft:weakness infinite 0 true
execute as @a run scoreboard players operation @s mana = @s max_mana

#inventory
execute as @s[scores={armor=0}] run data modify storage roguecraft:master armortype set value leather_
execute as @s[scores={armor=1}] run data modify storage roguecraft:master armortype set value leather_
execute as @s[scores={armor=2}] run data modify storage roguecraft:master armortype set value golden_
execute as @s[scores={armor=3}] run data modify storage roguecraft:master armortype set value chainmail_
execute as @s[scores={armor=4}] run data modify storage roguecraft:master armortype set value iron_
execute as @s[scores={armor=5}] run data modify storage roguecraft:master armortype set value diamond_
execute as @s[scores={armor=6}] run data modify storage roguecraft:master armortype set value netherite_

execute unless entity @s[tag=garden,tag=garden_items] run function roguecraft:upgrades/set_inventory
execute unless entity @s[tag=garden,tag=garden_items] run function roguecraft:upgrades/sort_inventory
execute unless entity @s[tag=garden,tag=garden_items] run function roguecraft:upgrades/static_items with storage roguecraft:master

tag @s remove current_main