execute unless data entity @s {Inventory:[{Slot:0b,components:{"minecraft:custom_model_data":2}}]} run item replace entity @s container.0 with warped_fungus_on_a_stick[minecraft:unbreakable={},minecraft:custom_model_data=2,minecraft:custom_name='{"translate":"roguecraft.item.ability","color":"light_purple","with":[{"translate":"roguecraft.generic.ability"},"1"],"italic":false}']
execute unless data entity @s {Inventory:[{Slot:1b,components:{"minecraft:custom_model_data":3}}]} run item replace entity @s container.1 with warped_fungus_on_a_stick[minecraft:unbreakable={},minecraft:custom_model_data=3,minecraft:custom_name='{"translate":"roguecraft.item.ability","color":"light_purple","with":[{"translate":"roguecraft.generic.ability"},"2"],"italic":false}']
execute unless data entity @s {Inventory:[{Slot:2b,components:{"minecraft:custom_model_data":4}}]} run item replace entity @s container.2 with warped_fungus_on_a_stick[minecraft:unbreakable={},minecraft:custom_model_data=4,minecraft:custom_name='{"translate":"roguecraft.item.ability","color":"light_purple","with":[{"translate":"roguecraft.generic.ability"},"3"],"italic":false}']
execute unless score @s class matches 1 run item replace entity @s container.3 with jigsaw
execute if score @s class matches 1 unless data entity @s {Inventory:[{Slot:3b,components:{"minecraft:custom_model_data":5}}]} run item replace entity @s container.3 with warped_fungus_on_a_stick[minecraft:unbreakable={},minecraft:custom_model_data=5,minecraft:custom_name='{"translate":"roguecraft.item.ability","color":"light_purple","with":[{"translate":"roguecraft.generic.ability"},"4"],"italic":false}']
item replace entity @s container.4 with jigsaw
item replace entity @s container.5 with jigsaw
item replace entity @s container.6 with totem_of_undying[custom_model_data=301,minecraft:custom_name='{"translate":"roguecraft.item.remove_upgrade","bold":true,"color":"red","italic":false}']
item replace entity @s container.7 with jigsaw

execute if data storage roguecraft:master {run_active:0} if entity @s[tag=!ready,tag=tutorial_done] run item replace entity @s container.8 with warped_fungus_on_a_stick[minecraft:unbreakable={},minecraft:custom_model_data=300,minecraft:custom_name='{"translate":"roguecraft.item.start_run","bold":true,"color":"aqua","italic":false}']
execute if data storage roguecraft:master {run_active:0} if entity @s[tag=!tutorial_done] run item replace entity @s container.8 with warped_fungus_on_a_stick[minecraft:unbreakable={},minecraft:custom_model_data=301,minecraft:custom_name='{"translate":"roguecraft.item.start_run","bold":true,"color":"gray","italic":false}']
execute if entity @s[tag=ready,tag=!ready_final] run item replace entity @s container.8 with warped_fungus_on_a_stick[minecraft:unbreakable={},minecraft:custom_model_data=302,minecraft:custom_name='{"translate":"roguecraft.item.unready","bold":true,"color":"aqua","italic":false}']
execute if entity @s[tag=ready_final] run item replace entity @s container.8 with warped_fungus_on_a_stick[minecraft:unbreakable={},minecraft:custom_model_data=303,minecraft:custom_name='{"translate":"roguecraft.item.unready","bold":true,"color":"gray","italic":false}']
execute if data storage roguecraft:master {run_active:1} if entity @s[tag=!ready,tag=tutorial_done] run item replace entity @s container.8 with warped_fungus_on_a_stick[minecraft:unbreakable={},minecraft:custom_model_data=304,minecraft:custom_name='{"translate":"roguecraft.item.join_run","bold":true,"color":"aqua","italic":false}']
execute if data storage roguecraft:master {run_active:1} if entity @s[tag=!tutorial_done] run item replace entity @s container.8 with warped_fungus_on_a_stick[minecraft:unbreakable={},minecraft:custom_model_data=305,minecraft:custom_name='{"translate":"roguecraft.item.join_run","bold":true,"color":"gray","italic":false}']

item replace entity @s container.9 with totem_of_undying[custom_model_data=900015,minecraft:custom_name='{"translate":"roguecraft.loadout.food","italic":false}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.10 with jigsaw
item replace entity @s container.11 with jigsaw
item replace entity @s container.12 with jigsaw
item replace entity @s container.13 with jigsaw
item replace entity @s container.14 with totem_of_undying[custom_model_data=900018,minecraft:custom_name='{"translate":"item.minecraft.splash_potion.effect.healing","italic":false}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.15 with totem_of_undying[custom_model_data=900019,minecraft:custom_name='{"translate":"item.minecraft.splash_potion.effect.healing","italic":false}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.16 with totem_of_undying[custom_model_data=900020,minecraft:custom_name='{"translate":"item.minecraft.splash_potion.effect.regeneration","italic":false}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.17 with totem_of_undying[custom_model_data=900021,minecraft:custom_name='{"translate":"item.minecraft.splash_potion.effect.regeneration","italic":false}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]

item replace entity @s container.18 with totem_of_undying[custom_model_data=900007,minecraft:custom_name='{"translate":"item.minecraft.bow","italic":false}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.19 with totem_of_undying[custom_model_data=900010,minecraft:custom_name='{"translate":"item.minecraft.flint_and_steel","italic":false}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.20 with totem_of_undying[custom_model_data=900014,minecraft:custom_name='{"translate":"item.minecraft.compass","italic":false}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.21 with jigsaw
item replace entity @s container.22 with jigsaw
item replace entity @s container.23 with totem_of_undying[custom_model_data=900023,minecraft:custom_name='{"translate":"roguecraft.item.ability","italic":false,"with":[{"translate":"roguecraft.generic.ability"},"2"]}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.24 with totem_of_undying[custom_model_data=900024,minecraft:custom_name='{"translate":"roguecraft.item.ability","italic":false,"with":[{"translate":"roguecraft.generic.ability"},"3"]}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.25 with totem_of_undying[custom_model_data=900016,minecraft:custom_name='{"translate":"roguecraft.loadout.golden_apple","italic":false}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.26 with totem_of_undying[minecraft:enchantment_glint_override=true,custom_model_data=900012,minecraft:custom_name='{"translate":"item.minecraft.enchanted_golden_apple","italic":false,"color":"yellow"}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]


item replace entity @s container.27 with totem_of_undying[custom_model_data=900005,minecraft:custom_name='{"translate":"roguecraft.loadout.sword","italic":false}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.28 with totem_of_undying[custom_model_data=900003,minecraft:custom_name='{"translate":"roguecraft.loadout.pickaxe","italic":false}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.29 with totem_of_undying[custom_model_data=900001,minecraft:custom_name='{"translate":"roguecraft.loadout.axe","italic":false}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.30 with totem_of_undying[custom_model_data=900004,minecraft:custom_name='{"translate":"roguecraft.loadout.shovel","italic":false}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.31 with totem_of_undying[custom_model_data=900002,minecraft:custom_name='{"translate":"roguecraft.loadout.hoe","italic":false}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.32 with totem_of_undying[custom_model_data=900022,minecraft:custom_name='{"translate":"roguecraft.item.ability","italic":false,"with":[{"translate":"roguecraft.generic.ability"},"1"]}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.33 with totem_of_undying[custom_model_data=900025,minecraft:custom_name='{"translate":"roguecraft.item.ability","italic":false,"with":[{"translate":"roguecraft.generic.ability"},"4"]}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.34 with totem_of_undying[custom_model_data=900013,minecraft:custom_name='{"translate":"roguecraft.loadout.pearl","italic":false}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]
item replace entity @s container.35 with totem_of_undying[custom_model_data=900009,minecraft:custom_name='{"translate":"item.minecraft.bucket","italic":false}',minecraft:lore=['{"translate":"roguecraft.loadout.lore"}']]

item replace entity @s weapon.offhand with air
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

clear @s jigsaw