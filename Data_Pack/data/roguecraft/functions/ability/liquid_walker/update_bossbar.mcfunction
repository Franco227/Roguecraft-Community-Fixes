$execute store result bossbar minecraft:liquid_$(id) value run scoreboard players get @a[tag=mana_$(id),limit=1] liquid_timer
$execute if score @a[tag=mana_$(id),limit=1] liquid_timer matches 0 run bossbar set minecraft:liquid_$(id) players @a[tag=terra_lumina]