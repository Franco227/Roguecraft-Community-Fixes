tellraw @s[scores={toggle_ability_feedback=1}] {"translate":"roguecraft.chat_messages.disable_ability_feedback","color":"blue"}
tellraw @s[scores={toggle_ability_feedback=3}] {"translate":"roguecraft.chat_messages.enable_ability_feedback","color":"blue"}

scoreboard players set @s[scores={toggle_ability_feedback=1}] toggle_ability_feedback 2
scoreboard players set @s[scores={toggle_ability_feedback=3}] toggle_ability_feedback 0
scoreboard players enable @a toggle_ability_feedback
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5