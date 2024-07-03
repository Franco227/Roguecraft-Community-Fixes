scoreboard players set @s temp 0

# Add all possible items here
#sword
$execute as @s[scores={tool=1..}] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900005}}] run item replace entity @s container.$(selectedslot) with $(tooltype)sword{Unbreakable:true}
$execute if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900005}}] run item modify entity @s container.$(selectedslot) roguecraft:enchant_sword
$execute if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900005}}] run item modify entity @s container.$(selectedslot) roguecraft:set_scythe
#pickaxe
$execute as @s[scores={tool=2..}] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900003}}] run item replace entity @s container.$(selectedslot) with $(tooltype)pickaxe{Unbreakable:true}
$execute as @s[scores={tool=..1}] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900003}}] run item replace entity @s container.$(selectedslot) with stone_pickaxe{Unbreakable:true}
$execute if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900003}}] run item modify entity @s container.$(selectedslot) roguecraft:enchant_tools
#axe
$execute as @s[scores={tool=1..}] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900001}}] run item replace entity @s container.$(selectedslot) with $(tooltype)axe{Unbreakable:true}
$execute if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900001}}] run item modify entity @s container.$(selectedslot) roguecraft:enchant_axe
#shovel
$execute as @s[scores={tool=1..}] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900004}}] run item replace entity @s container.$(selectedslot) with $(tooltype)shovel{Unbreakable:true}
$execute if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900004}}] run item modify entity @s container.$(selectedslot) roguecraft:enchant_tools
#hoe
$execute as @s[scores={tool=1..}] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900002}}] run item replace entity @s container.$(selectedslot) with $(tooltype)hoe{Unbreakable:true}
$execute if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900002}}] run item modify entity @s container.$(selectedslot) roguecraft:enchant_tools

#bow
$execute as @s[scores={bow=1}] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900007}}] run item replace entity @s container.$(selectedslot) with bow{Unbreakable:true}
$execute if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900007}}] run item modify entity @s container.$(selectedslot) roguecraft:enchant_bow
#flint and steel
$execute as @s[scores={flint_and_steel=1},tag=!garden] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900010}}] run item replace entity @s container.$(selectedslot) with flint_and_steel{Unbreakable:true}
#comp ass
$data modify storage roguecraft:master Region.selectedslot set value $(selectedslot)
$execute as @s[scores={compass=1},tag=!garden] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900014}}] run function roguecraft:upgrades/compass with storage roguecraft:master Region
#bucket
$execute as @s[scores={bucket=1},tag=!garden] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900009}}] run item replace entity @s container.$(selectedslot) with bucket
#ender pearls
$execute as @s[scores={pearls=1..},tag=!garden] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900013}}] run function roguecraft:upgrades/amountslots {"slot":$(selectedslot),"itemid":"ender_pearl","amount":$(pearls)}

#golden apples
$execute as @s[scores={golden_apple=1},tag=!garden] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900016}}] run item replace entity @s container.$(selectedslot) with golden_apple 5
#enchanted golden apple
$execute as @s[scores={enchanted_golden_apple=1},tag=!garden] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900012}}] run item replace entity @s container.$(selectedslot) with enchanted_golden_apple
#food
$execute as @s[scores={food=1..},tag=!garden] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900015}}] run item replace entity @s container.$(selectedslot) with $(foodtype) $(foodcount)

#potions
$execute as @s[scores={class=2},tag=!garden] unless entity @a[tag=!current_main] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900018}}] run item replace entity @s container.$(selectedslot) with minecraft:splash_potion{Potion:"minecraft:healing"}
$execute as @s[scores={class=2},tag=!garden] unless entity @a[tag=!current_main] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900019}}] run item replace entity @s container.$(selectedslot) with minecraft:splash_potion{Potion:"minecraft:strong_healing"}
$execute as @s[scores={class=2},tag=!garden] unless entity @a[tag=!current_main] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900020}}] run item replace entity @s container.$(selectedslot) with minecraft:splash_potion{Potion:"minecraft:regeneration"}
$execute as @s[scores={class=2},tag=!garden] unless entity @a[tag=!current_main] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900021}}] run item replace entity @s container.$(selectedslot) with minecraft:splash_potion{Potion:"minecraft:strong_regeneration"}
#abilities
$execute as @s[scores={ability_1=0..}] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900022}}] store success score @s temp run function roguecraft:upgrades/make_ability {"slot":$(selectedslot), "number":1, "model":2}
$execute as @s[scores={ability_2=0..}] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900023}}] store success score @s temp run function roguecraft:upgrades/make_ability {"slot":$(selectedslot), "number":2, "model":3}
$execute as @s[scores={ability_3=0..}] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900024}}] store success score @s temp run function roguecraft:upgrades/make_ability {"slot":$(selectedslot), "number":3, "model":4}
$execute as @s[scores={ability_4=0..,class=1}] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900025}}] store success score @s temp run function roguecraft:upgrades/make_ability {"slot":$(selectedslot), "number":4, "model":5}
#class abilities
$execute as @s[scores={class=0},tag=!garden] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900025}}] run item replace entity @s container.$(selectedslot) with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.class_ability.tank"}]'},Enchantments:[{}],CustomModelData:5}
$execute as @s[scores={class=2},tag=!garden] if entity @a[tag=!current_main] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900025}}] run item replace entity @s container.$(selectedslot) with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.class_ability.healer"}]'},Enchantments:[{}],CustomModelData:5}
$execute as @s[scores={class=3},tag=!garden] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900025}}] run item replace entity @s container.$(selectedslot) with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.class_ability.glass_cannon"}]'},Enchantments:[{}],CustomModelData:5}
$execute as @s[scores={class=4},tag=!garden] if data entity @s EnderItems[{Slot:$(selectedslot)b,tag:{CustomModelData:900025}}] run item replace entity @s container.$(selectedslot) with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.class_ability.reaper"}]'},Enchantments:[{}],CustomModelData:5}

# Increase selectedslot
execute store result score @s temp run data get storage roguecraft:master selectedslot
execute store result storage roguecraft:master selectedslot int 1 run scoreboard players add @s temp 1