bossbar set minecraft:phase_4_mobs name {"translate":"roguecraft.bossbar.wave","with":["3"]}

execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 2

summon minecraft:ravager ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",PersistenceRequired:true}
summon minecraft:ravager ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",PersistenceRequired:true}
summon minecraft:ravager ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",PersistenceRequired:true}

summon minecraft:vindicator ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:iron_axe"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:vindicator ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:iron_axe"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:vindicator ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:iron_axe"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:vindicator ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:iron_axe"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:vindicator ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:iron_axe"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:vindicator ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:iron_axe"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}

summon minecraft:pillager ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:crossbow"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:pillager ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:crossbow"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:pillager ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:crossbow"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:pillager ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:crossbow"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:pillager ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:crossbow"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:pillager ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:crossbow"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}
summon minecraft:pillager ~ ~ ~ {Tags:["phase_4_mob"],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:crossbow"}],HandDropChances:[0.0f,0.0f],PersistenceRequired:true}

execute in minecraft:the_end run spreadplayers 0 0 0 5 false @e[tag=phase_4_mob]

scoreboard players set @e[type=minecraft:marker,tag=emaster] dragon_phase 9