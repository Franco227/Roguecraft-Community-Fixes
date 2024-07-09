fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:cave_air replace minecraft:end_stone
fill ~ ~-2 ~ ~ ~-2 ~ minecraft:amethyst_block replace minecraft:end_stone
summon minecraft:armor_stand ~ ~0.5 ~ {Motion:[0.5,1.5,0.5],Tags:["split_3"],Invulnerable:true,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:amethyst_block",Count:1b}],Small:1b}
summon minecraft:armor_stand ~ ~0.5 ~ {Motion:[0.5,1.5,-0.5],Tags:["split_3"],Invulnerable:true,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:amethyst_block",Count:1b}],Small:1b}
summon minecraft:armor_stand ~ ~0.5 ~ {Motion:[-0.5,1.5,0.5],Tags:["split_3"],Invulnerable:true,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:amethyst_block",Count:1b}],Small:1b}
summon minecraft:armor_stand ~ ~0.5 ~ {Motion:[-0.5,1.5,-0.5],Tags:["split_3"],Invulnerable:true,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:amethyst_block",Count:1b}],Small:1b}
kill