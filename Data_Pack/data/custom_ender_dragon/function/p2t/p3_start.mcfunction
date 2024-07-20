execute in minecraft:the_end run summon minecraft:lightning_bolt 0 150 0
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.deactivate hostile @s ~ ~ ~
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~
scoreboard players set @e[type=minecraft:marker,tag=emaster] dragon_phase 5
data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:1}
data merge entity @e[type=minecraft:ender_dragon,limit=1] {CustomName:' "Hyper Jean" '}

execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.4 1.5
execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.4 1.5

execute in minecraft:the_end run summon minecraft:shulker 0 100 0 {Color:10,Tags:["dragon_minion"],DeathLootTable:"minecraft:empty"}
execute in minecraft:the_end run summon minecraft:shulker 0 100 0 {Color:10,Tags:["dragon_minion"],DeathLootTable:"minecraft:empty"}
execute in minecraft:the_end run summon minecraft:shulker 0 100 0 {Color:10,Tags:["dragon_minion"],DeathLootTable:"minecraft:empty"}
execute in minecraft:the_end run summon minecraft:shulker 0 100 0 {Color:10,Tags:["dragon_minion"],DeathLootTable:"minecraft:empty"}
execute in minecraft:the_end run summon minecraft:shulker 0 100 0 {Color:10,Tags:["dragon_minion"],DeathLootTable:"minecraft:empty"}
execute in minecraft:the_end run summon minecraft:shulker 0 100 0 {Color:10,Tags:["dragon_minion"],DeathLootTable:"minecraft:empty"}
execute in minecraft:the_end run summon minecraft:shulker 0 100 0 {Color:10,Tags:["dragon_minion"],DeathLootTable:"minecraft:empty"}
execute in minecraft:the_end run summon minecraft:shulker 0 100 0 {Color:10,Tags:["dragon_minion"],DeathLootTable:"minecraft:empty"}
execute in minecraft:the_end run summon minecraft:shulker 0 100 0 {Color:10,Tags:["dragon_minion"],DeathLootTable:"minecraft:empty"}
execute in minecraft:the_end run summon minecraft:shulker 0 100 0 {Color:10,Tags:["dragon_minion"],DeathLootTable:"minecraft:empty"}
execute in minecraft:the_end run summon minecraft:shulker 0 100 0 {Color:10,Tags:["dragon_minion"],DeathLootTable:"minecraft:empty"}
execute in minecraft:the_end run summon minecraft:shulker 0 100 0 {Color:10,Tags:["dragon_minion"],DeathLootTable:"minecraft:empty"}
execute in minecraft:the_end run summon minecraft:shulker 0 100 0 {Color:10,Tags:["dragon_minion"],DeathLootTable:"minecraft:empty"}
execute in minecraft:the_end run summon minecraft:shulker 0 100 0 {Color:10,Tags:["dragon_minion"],DeathLootTable:"minecraft:empty"}
execute in minecraft:the_end run summon minecraft:shulker 0 100 0 {Color:10,Tags:["dragon_minion"],DeathLootTable:"minecraft:empty"}

execute in minecraft:the_end run spreadplayers 0 0 0 50 false @e[type=minecraft:shulker,tag=dragon_minion]

schedule function custom_ender_dragon:p3/attack_timer 5s