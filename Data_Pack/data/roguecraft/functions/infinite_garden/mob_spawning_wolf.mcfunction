execute store result score @s infinite_garden_marker_type run random value 0..39
execute unless score @s infinite_garden_marker_type matches 0 run summon minecraft:wolf ~ ~ ~
execute if score @s infinite_garden_marker_type matches 0 run summon minecraft:wolf ~ ~ ~ {Glowing:true,active_effects:[{id:"minecraft:invisibility",show_particles:false,duration:-1}],Tags:["chester"]}