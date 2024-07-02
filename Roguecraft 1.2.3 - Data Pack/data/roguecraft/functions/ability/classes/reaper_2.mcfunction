summon minecraft:marker ~ ~ ~ {Tags:["spectre","current_main"]}
data modify entity @e[distance=..1,tag=current_main,tag=spectre,limit=1] data.owner set from entity @s UUID
data modify entity @e[distance=..1,tag=current_main,tag=spectre,limit=1] data.target set from entity @e[distance=..16,type=!#roguecraft:reaper_excluded,sort=nearest,limit=1] UUID
scoreboard players operation @e[distance=..1,tag=current_main,tag=spectre,limit=1] soul_charge = @s soul_charge
scoreboard players operation @e[distance=..1,tag=current_main,tag=spectre,limit=1] soul_charge *= 3 int
scoreboard players set @e[distance=..1,tag=current_main,tag=spectre,limit=1] damage 2
scoreboard players operation @e[distance=..1,tag=current_main,tag=spectre,limit=1] damage += @s attack_damage
scoreboard players operation @e[distance=..1,tag=current_main,tag=spectre,limit=1] damage += @s sharpness
scoreboard players operation @e[distance=..1,tag=current_main,tag=spectre,limit=1] damage += @s tool
execute store result entity @e[distance=..1,tag=current_main,tag=spectre,limit=1] data.damage int 1 run scoreboard players get @e[distance=..1,tag=current_main,tag=spectre,limit=1] damage
tag @e[distance=..1,tag=current_main,tag=spectre,limit=1] remove current_main

tellraw @s[scores={toggle_ability_feedback=0}] {"translate":"roguecraft.chat_messages.use_ability","italic":true,"color":"dark_purple","with":[{"translate":"roguecraft.class_ability.reaper"}]}
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 1.1