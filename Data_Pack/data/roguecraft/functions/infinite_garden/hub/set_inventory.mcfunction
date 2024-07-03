execute unless data entity @s {Inventory:[{Slot:0b,tag:{CustomModelData:2}}]} run item replace entity @s container.0 with warped_fungus_on_a_stick{CustomModelData:2,display:{Name:'[{"translate":"roguecraft.item.ability","color":"light_purple","with":[{"translate":"roguecraft.generic.ability"},"1"],"italic":false}]'}}
execute unless data entity @s {Inventory:[{Slot:1b,tag:{CustomModelData:3}}]} run item replace entity @s container.1 with warped_fungus_on_a_stick{CustomModelData:3,display:{Name:'[{"translate":"roguecraft.item.ability","color":"light_purple","with":[{"translate":"roguecraft.generic.ability"},"2"],"italic":false}]'}}
execute unless data entity @s {Inventory:[{Slot:2b,tag:{CustomModelData:4}}]} run item replace entity @s container.2 with warped_fungus_on_a_stick{CustomModelData:4,display:{Name:'[{"translate":"roguecraft.item.ability","color":"light_purple","with":[{"translate":"roguecraft.generic.ability"},"3"],"italic":false}]'}}
execute unless score @s class matches 1 run item replace entity @s container.3 with jigsaw
execute if score @s class matches 1 unless data entity @s {Inventory:[{Slot:3b,tag:{CustomModelData:5}}]} run item replace entity @s container.3 with warped_fungus_on_a_stick{CustomModelData:5,display:{Name:'[{"translate":"roguecraft.item.ability","color":"light_purple","with":[{"translate":"roguecraft.generic.ability"},"4"],"italic":false}]'}}
item replace entity @s container.4 with jigsaw
item replace entity @s container.5 with jigsaw
item replace entity @s container.6 with totem_of_undying{CustomModelData:301,display:{Name:'{"translate":"roguecraft.item.remove_upgrade","bold":true,"color":"red","italic":false}'}}
item replace entity @s container.7 with jigsaw

execute if data storage roguecraft:master {run_active:0} if entity @s[tag=!ready,tag=tutorial_done] run item replace entity @s container.8 with warped_fungus_on_a_stick{CustomModelData:300,display:{Name:'{"translate":"roguecraft.item.start_run","bold":true,"color":"aqua","italic":false}'}}
execute if data storage roguecraft:master {run_active:0} if entity @s[tag=!tutorial_done] run item replace entity @s container.8 with warped_fungus_on_a_stick{CustomModelData:301,display:{Name:'{"translate":"roguecraft.item.start_run","bold":true,"color":"gray","italic":false}'}}
execute if entity @s[tag=ready,tag=!ready_final] run item replace entity @s container.8 with warped_fungus_on_a_stick{CustomModelData:302,display:{Name:'{"translate":"roguecraft.item.unready","bold":true,"color":"aqua","italic":false}'}}
execute if entity @s[tag=ready_final] run item replace entity @s container.8 with warped_fungus_on_a_stick{CustomModelData:303,display:{Name:'{"translate":"roguecraft.item.unready","bold":true,"color":"gray","italic":false}'}}
execute if data storage roguecraft:master {run_active:1} if entity @s[tag=!ready,tag=tutorial_done] run item replace entity @s container.8 with warped_fungus_on_a_stick{CustomModelData:304,display:{Name:'{"translate":"roguecraft.item.join_run","bold":true,"color":"aqua","italic":false}'}}
execute if data storage roguecraft:master {run_active:1} if entity @s[tag=!tutorial_done] run item replace entity @s container.8 with warped_fungus_on_a_stick{CustomModelData:305,display:{Name:'{"translate":"roguecraft.item.join_run","bold":true,"color":"gray","italic":false}'}}

item replace entity @s container.9 with totem_of_undying{CustomModelData:900015,display:{Name:'{"translate":"roguecraft.loadout.food","italic":false}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.10 with jigsaw
item replace entity @s container.11 with jigsaw
item replace entity @s container.12 with jigsaw
item replace entity @s container.13 with jigsaw
item replace entity @s container.14 with totem_of_undying{CustomModelData:900018,display:{Name:'{"translate":"item.minecraft.splash_potion.effect.healing","italic":false}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.15 with totem_of_undying{CustomModelData:900019,display:{Name:'{"translate":"item.minecraft.splash_potion.effect.healing","italic":false}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.16 with totem_of_undying{CustomModelData:900020,display:{Name:'{"translate":"item.minecraft.splash_potion.effect.regeneration","italic":false}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.17 with totem_of_undying{CustomModelData:900021,display:{Name:'{"translate":"item.minecraft.splash_potion.effect.regeneration","italic":false}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}

item replace entity @s container.18 with totem_of_undying{CustomModelData:900007,display:{Name:'{"translate":"item.minecraft.bow","italic":false}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.19 with totem_of_undying{CustomModelData:900010,display:{Name:'{"translate":"item.minecraft.flint_and_steel","italic":false}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.20 with totem_of_undying{CustomModelData:900014,display:{Name:'{"translate":"item.minecraft.compass","italic":false}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.21 with jigsaw
item replace entity @s container.22 with jigsaw
item replace entity @s container.23 with totem_of_undying{CustomModelData:900023,display:{Name:'{"translate":"roguecraft.item.ability","italic":false,"with":[{"translate":"roguecraft.generic.ability"},"2"]}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.24 with totem_of_undying{CustomModelData:900024,display:{Name:'{"translate":"roguecraft.item.ability","italic":false,"with":[{"translate":"roguecraft.generic.ability"},"3"]}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.25 with totem_of_undying{CustomModelData:900016,display:{Name:'{"translate":"roguecraft.loadout.golden_apple","italic":false}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.26 with totem_of_undying{Enchantments:[{}],CustomModelData:900012,display:{Name:'{"translate":"item.minecraft.enchanted_golden_apple","italic":false,"color":"yellow"}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}


item replace entity @s container.27 with totem_of_undying{CustomModelData:900005,display:{Name:'{"translate":"roguecraft.loadout.sword","italic":false}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.28 with totem_of_undying{CustomModelData:900003,display:{Name:'{"translate":"roguecraft.loadout.pickaxe","italic":false}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.29 with totem_of_undying{CustomModelData:900001,display:{Name:'{"translate":"roguecraft.loadout.axe","italic":false}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.30 with totem_of_undying{CustomModelData:900004,display:{Name:'{"translate":"roguecraft.loadout.shovel","italic":false}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.31 with totem_of_undying{CustomModelData:900002,display:{Name:'{"translate":"roguecraft.loadout.hoe","italic":false}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.32 with totem_of_undying{CustomModelData:900022,display:{Name:'{"translate":"roguecraft.item.ability","italic":false,"with":[{"translate":"roguecraft.generic.ability"},"1"]}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.33 with totem_of_undying{CustomModelData:900025,display:{Name:'{"translate":"roguecraft.item.ability","italic":false,"with":[{"translate":"roguecraft.generic.ability"},"4"]}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.34 with totem_of_undying{CustomModelData:900013,display:{Name:'{"translate":"roguecraft.loadout.pearl","italic":false}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}
item replace entity @s container.35 with totem_of_undying{CustomModelData:900009,display:{Name:'{"translate":"item.minecraft.bucket","italic":false}',Lore:['{"translate":"roguecraft.loadout.lore"}']}}

item replace entity @s weapon.offhand with air
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

clear @s jigsaw