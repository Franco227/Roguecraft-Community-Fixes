execute if data storage roguecraft:master {glowing:1} run data merge storage roguecraft:master {temp_glowing:1}
execute if data storage roguecraft:master {glowing:0} run data merge storage roguecraft:master {glowing:1}
execute if data storage roguecraft:master {temp_glowing:1} run data merge storage roguecraft:master {glowing:0}
data merge storage roguecraft:master {temp_glowing:0}

execute as @s if data storage roguecraft:master {glowing:0} run tellraw @s {"translate":"roguecraft.chat_messages.disable_glow","color":"blue"}
execute as @s if data storage roguecraft:master {glowing:1} run tellraw @s {"translate":"roguecraft.chat_messages.enable_glow","color":"blue"}

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5