summon minecraft:creeper ~ ~ ~ {Fuse:0,Invulnerable:true,CustomName:' "Ender Dragon" ',ExplosionRadius:4}
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:cave_air replace minecraft:end_stone
fill ~ ~-2 ~ ~ ~-2 ~ minecraft:amethyst_block replace minecraft:end_stone
summon minecraft:armor_stand ~ ~0.5 ~ {Motion:[0.0,1.5,-1.0],Tags:["split_2"],Invulnerable:true,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:amethyst_block",Count:1b}],Small:1b}
summon minecraft:armor_stand ~ ~0.5 ~ {Motion:[0.0,1.5,1.0],Tags:["split_2"],Invulnerable:true,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:amethyst_block",Count:1b}],Small:1b}
summon minecraft:armor_stand ~ ~0.5 ~ {Motion:[-1.0,1.5,0.0],Tags:["split_2"],Invulnerable:true,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:amethyst_block",Count:1b}],Small:1b}
summon minecraft:armor_stand ~ ~0.5 ~ {Motion:[1.0,1.5,0.0],Tags:["split_2"],Invulnerable:true,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:amethyst_block",Count:1b}],Small:1b}
kill