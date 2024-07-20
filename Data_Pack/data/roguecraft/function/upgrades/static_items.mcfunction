$execute as @s[scores={armor=1..}] run item replace entity @s armor.feet with $(armortype)boots[minecraft:unbreakable={}]
$execute as @s[scores={armor=1..}] run item replace entity @s armor.legs with $(armortype)leggings[minecraft:unbreakable={}]
$execute as @s[scores={armor=1..}] run item replace entity @s armor.chest with $(armortype)chestplate[minecraft:unbreakable={}]
$execute as @s[scores={armor=1..}] run item replace entity @s armor.head with $(armortype)helmet[minecraft:unbreakable={}]
item modify entity @s armor.feet roguecraft:enchant_boots
item modify entity @s armor.legs roguecraft:enchant_leggings
item modify entity @s armor.chest roguecraft:enchant_chestplate
item modify entity @s armor.head roguecraft:enchant_helmet

execute as @s[scores={bow=1}] run item replace entity @s container.9 with arrow 16
execute as @s[scores={wood=1},tag=!garden] run item replace entity @s container.10 with oak_planks 64
execute as @s[scores={cobblestone=1},tag=!garden] run item replace entity @s container.11 with cobblestone 64
execute as @s[scores={bed=1},tag=!garden] run item replace entity @s container.12 with red_bed