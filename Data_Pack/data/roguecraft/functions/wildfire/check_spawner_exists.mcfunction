execute store result storage roguecraft:master spawner_count int 1 run fill ~6 ~6 ~6 ~-6 ~-6 ~-6 minecraft:shulker_box{Items:[{Count:1b,id:"minecraft:bedrock"}]} replace spawner{SpawnData:{entity:{id:"minecraft:blaze"}}}
execute unless data storage roguecraft:master {spawner_count:0} run clone ~-6 ~-6 ~-6 ~6 ~6 ~6 ~-6 ~122 ~-6 filtered shulker_box
execute unless data storage roguecraft:master {spawner_count:0} run fill ~-6 ~122 ~-6 ~6 ~134 ~6 air destroy
execute unless data storage roguecraft:master {spawner_count:0} as @e[type=item,nbt={Item:{id:"minecraft:shulker_box"}}] at @s run function roguecraft:wildfire/check_spawner_success