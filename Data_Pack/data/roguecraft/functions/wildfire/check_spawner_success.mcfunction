kill @s
setblock ~ ~-128 ~ air
particle block spawner ~ ~-127.5 ~ 0.25 0.25 0.25 0 100
playsound minecraft:block.netherite_block.break master @a ~ ~-127.5 ~ 2 1
summon marker ~ ~-128 ~ {Tags:["wildfire_particle_marker","summon"]}
execute positioned ~ ~-128 ~ run kill @e[type=blaze,distance=..10]
execute positioned ~ ~-128 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod"}},distance=..10]