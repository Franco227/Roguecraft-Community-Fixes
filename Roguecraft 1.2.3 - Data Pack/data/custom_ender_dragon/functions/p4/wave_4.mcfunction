bossbar set minecraft:phase_4_mobs name {"translate":"roguecraft.bossbar.wave","with":["4"]}
bossbar set minecraft:phase_4_mobs max 2

scoreboard players set @e[type=marker,tag=emaster] dragon_phase 10

execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 2

summon warden ~ ~ ~ {Tags:["phase_4_mob"],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}},Health:250f,DeathLootTable:"minecraft:empty",PersistenceRequired:true}
summon warden ~ ~ ~ {Tags:["phase_4_mob"],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}},Health:250f,DeathLootTable:"minecraft:empty",PersistenceRequired:true}
effect give @e[type=minecraft:warden,tag=phase_4_mob] minecraft:weakness infinite 2 true

execute in minecraft:the_end run spreadplayers 0 0 0 5 false @e[tag=phase_4_mob]