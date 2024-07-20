bossbar set minecraft:phase_4_mobs name {"translate":"roguecraft.bossbar.wave","with":["5"]}
bossbar set minecraft:phase_4_mobs max 8

scoreboard players set @e[type=minecraft:marker,tag=emaster] dragon_phase 11

execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 2

summon minecraft:marker ~ ~ ~ {Tags:["nether_star_clear"]}

summon minecraft:wither ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty"}
summon minecraft:wither_skeleton ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:stone_sword"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:wither_skeleton ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:stone_sword"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:wither_skeleton ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:stone_sword"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:wither_skeleton ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:stone_sword"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:wither_skeleton ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:stone_sword"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:wither_skeleton ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:stone_sword"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:wither_skeleton ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:stone_sword"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}

execute in minecraft:the_end run spreadplayers 0 0 0 5 false @e[tag=phase_4_mob]