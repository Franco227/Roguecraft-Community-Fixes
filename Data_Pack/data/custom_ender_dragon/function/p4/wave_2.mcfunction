bossbar set minecraft:phase_4_mobs name {"translate":"roguecraft.bossbar.wave","with":["2"]}
bossbar set minecraft:phase_4_mobs max 16

scoreboard players set @e[type=minecraft:marker,tag=emaster] dragon_phase 8

execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 2

summon minecraft:piglin ~ ~ ~ {Tags:["phase_4_mob"],IsImmuneToZombification:true,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_sword"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:piglin ~ ~ ~ {Tags:["phase_4_mob"],IsImmuneToZombification:true,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_sword"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:piglin ~ ~ ~ {Tags:["phase_4_mob"],IsImmuneToZombification:true,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_sword"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:piglin ~ ~ ~ {Tags:["phase_4_mob"],IsImmuneToZombification:true,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_sword"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:piglin ~ ~ ~ {Tags:["phase_4_mob"],IsImmuneToZombification:true,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_sword"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:piglin ~ ~ ~ {Tags:["phase_4_mob"],IsImmuneToZombification:true,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_sword"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:piglin ~ ~ ~ {Tags:["phase_4_mob"],IsImmuneToZombification:true,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_sword"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:piglin ~ ~ ~ {Tags:["phase_4_mob"],IsImmuneToZombification:true,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_sword"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:piglin ~ ~ ~ {Tags:["phase_4_mob"],IsImmuneToZombification:true,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_sword"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}

summon minecraft:piglin_brute ~ ~ ~ {Tags:["phase_4_mob"],IsImmuneToZombification:true,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_axe"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:piglin_brute ~ ~ ~ {Tags:["phase_4_mob"],IsImmuneToZombification:true,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_axe"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:piglin_brute ~ ~ ~ {Tags:["phase_4_mob"],IsImmuneToZombification:true,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_axe"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:piglin_brute ~ ~ ~ {Tags:["phase_4_mob"],IsImmuneToZombification:true,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_axe"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:piglin_brute ~ ~ ~ {Tags:["phase_4_mob"],IsImmuneToZombification:true,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_axe"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:piglin_brute ~ ~ ~ {Tags:["phase_4_mob"],IsImmuneToZombification:true,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_axe"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:piglin_brute ~ ~ ~ {Tags:["phase_4_mob"],IsImmuneToZombification:true,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_axe"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}

execute in minecraft:the_end run spreadplayers 0 0 0 5 false @e[tag=phase_4_mob]