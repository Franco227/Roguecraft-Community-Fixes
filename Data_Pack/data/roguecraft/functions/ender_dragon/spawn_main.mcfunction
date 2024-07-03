kill @e[type=end_crystal]

execute in the_end run summon area_effect_cloud 33.5 89 -24.5 {Duration:40,Tags:["end_crystal_spawner"]}
execute in the_end run summon area_effect_cloud 12.5 81 -39.5 {Duration:60,Tags:["end_crystal_spawner"]}
execute in the_end run summon area_effect_cloud -12.5 83 -39.5 {Duration:80,Tags:["end_crystal_spawner"]}
execute in the_end run summon area_effect_cloud -33.5 75 -24.5 {Duration:100,Tags:["end_crystal_spawner"]}
execute in the_end run summon area_effect_cloud -41.5 86 -0.5 {Duration:120,Tags:["end_crystal_spawner"]}
execute in the_end run summon area_effect_cloud -33.5 77 24.5 {Duration:140,Tags:["end_crystal_spawner"]}
execute in the_end run summon area_effect_cloud -12.5 86 39.5 {Duration:160,Tags:["end_crystal_spawner"]}
execute in the_end run summon area_effect_cloud 12.5 80 39.5 {Duration:180,Tags:["end_crystal_spawner"]}
execute in the_end run summon area_effect_cloud 33.5 84 24.5 {Duration:200,Tags:["end_crystal_spawner"]}
execute in the_end run summon area_effect_cloud 42.5 93 0.5 {Duration:220,Tags:["end_crystal_spawner"]}

execute in the_end run summon area_effect_cloud 0.5 73.5 0.5 {Duration:260,Tags:["egg_spawner"]}

execute as @e[type=#roguecraft:post_enderdragon_removed] at @s run tp ~ -100 ~
execute as @e[type=#roguecraft:post_enderdragon_removed] run kill @s