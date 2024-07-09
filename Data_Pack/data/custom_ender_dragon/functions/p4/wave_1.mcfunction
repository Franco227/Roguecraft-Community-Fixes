bossbar add minecraft:phase_4_mobs {"translate":"roguecraft.bossbar.wave","with":["1"]}
bossbar set minecraft:phase_4_mobs max 14
bossbar set minecraft:phase_4_mobs color purple

execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 2

summon minecraft:zombie ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",PersistenceRequired:true}
summon minecraft:zombie ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",PersistenceRequired:true}
summon minecraft:zombie ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",PersistenceRequired:true}
summon minecraft:zombie ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",PersistenceRequired:true}
summon minecraft:zombie ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",PersistenceRequired:true}
summon minecraft:zombie ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",PersistenceRequired:true}
summon minecraft:zombie ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",PersistenceRequired:true}

summon minecraft:skeleton ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:bow"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:skeleton ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:bow"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:skeleton ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:bow"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:skeleton ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:bow"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:skeleton ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:bow"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:skeleton ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:bow"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:skeleton ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:bow"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}

execute in minecraft:the_end run spreadplayers 0 0 0 5 false @e[tag=phase_4_mob]

scoreboard players set @e[type=minecraft:marker,tag=emaster] dragon_phase 7