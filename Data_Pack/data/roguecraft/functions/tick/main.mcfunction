#handle new players
execute if entity @e[tag=master,limit=1] as @a[tag=!init_player] run function roguecraft:init_player with storage roguecraft:master

#give skill points for items
execute as @a run execute store result score @s skillpoint_cache run clear @s minecraft:structure_void

#right click detection
execute as @a[scores={right_click=1..}] run function roguecraft:right_click
execute unless entity @a[tag=!ready,tag=hub] if entity @a[tag=hub] if entity @a if data storage roguecraft:master {start:0} if data storage roguecraft:master {run_active:0} run function roguecraft:game_loop/run_start_1

#toggle_ability_feedback
execute as @a[scores={toggle_ability_feedback=1}] run function roguecraft:trigger_commands/toggle_ability_feedback with storage roguecraft:master Region
execute as @a[scores={toggle_ability_feedback=3}] run function roguecraft:trigger_commands/toggle_ability_feedback with storage roguecraft:master Region
scoreboard players enable @s toggle_ability_feedback

#call other tick functions
execute if entity @a[tag=hub] run function roguecraft:tick/hub
execute if entity @a[tag=garden] run function roguecraft:tick/infinite_garden
execute if data storage roguecraft:master {run_active:0} run function roguecraft:tick/hub_and_infinite_garden
execute if data storage roguecraft:master {run_active:1} if entity @a[tag=garden] run function roguecraft:tick/hub_and_infinite_garden
execute if data storage roguecraft:master {run_active:1} run function roguecraft:tick/true_run
execute if entity @a[gamemode=!adventure] run function roguecraft:tick/run
execute if entity @a[tag=victory] run function roguecraft:tick/final
execute at @a[gamemode=!adventure] run function roguecraft:tick/tag_tamed_entities

#custom recipes
execute as @a[nbt={Inventory:[{id:"minecraft:raw_copper_block"}]}] run recipe give @s roguecraft:copper_block_from_blasting_raw_copper_block
execute as @a[nbt={Inventory:[{id:"minecraft:raw_copper_block"}]}] run recipe give @s roguecraft:copper_block_from_smelting_raw_copper_block
execute as @a[nbt={Inventory:[{id:"minecraft:raw_gold_block"}]}] run recipe give @s roguecraft:gold_block_from_blasting_raw_gold_block
execute as @a[nbt={Inventory:[{id:"minecraft:raw_gold_block"}]}] run recipe give @s roguecraft:gold_block_from_smelting_raw_gold_block
execute as @a[nbt={Inventory:[{id:"minecraft:raw_iron_block"}]}] run recipe give @s roguecraft:iron_block_from_blasting_raw_iron_block
execute as @a[nbt={Inventory:[{id:"minecraft:raw_iron_block"}]}] run recipe give @s roguecraft:iron_block_from_smelting_raw_iron_block
execute as @a[nbt={Inventory:[{id:"minecraft:furnace"}]}] run recipe give @s minecraft:blast_furnace
execute as @a[nbt={Inventory:[{id:"minecraft:structure_block"}]}] run recipe give @s roguecraft:skillpoint_1
execute as @a[nbt={Inventory:[{id:"minecraft:structure_block"}]}] run recipe give @s roguecraft:skillpoint_2
execute as @a[nbt={Inventory:[{id:"minecraft:structure_block"}]}] run recipe give @s roguecraft:skillpoint_3
execute as @a[nbt={Inventory:[{id:"minecraft:structure_block"}]}] run recipe give @s roguecraft:skillpoint_4
execute as @a[nbt={Inventory:[{id:"minecraft:structure_block"}]}] run recipe give @s roguecraft:skillpoint_5
execute as @a[nbt={Inventory:[{id:"minecraft:structure_block"}]}] run recipe give @s roguecraft:skillpoint_6
execute as @a[nbt={Inventory:[{id:"minecraft:structure_block"}]}] run recipe give @s roguecraft:skill_gem_block
execute as @a[nbt={Inventory:[{id:"minecraft:command_block"}]}] run recipe give @s roguecraft:skill_gem