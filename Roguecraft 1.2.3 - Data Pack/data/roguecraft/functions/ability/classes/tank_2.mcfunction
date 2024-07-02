effect give @s resistance 10 4 true
tellraw @s[scores={toggle_ability_feedback=0}] {"translate":"roguecraft.chat_messages.use_ability","italic":true,"color":"gray","with":[{"translate":"roguecraft.class_ability.tank"}]}
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 1.1
execute as @s[advancements={roguecraft:roguecraft/prevent_death=false},scores={temp_health=0..1}] run advancement grant @s only roguecraft:roguecraft/prevent_death