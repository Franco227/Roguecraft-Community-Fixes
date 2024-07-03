execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:entity.ender_dragon.shoot hostile @s ~ ~ ~
execute in minecraft:the_end positioned 0 200 0 run summon minecraft:armor_stand ~ 200 ~ {OnGround:0b,Tags:["Meteor","spread"],Invisible:1,ArmorItems:[{},{},{},{id:amethyst_block,Count:1b}],Small:1b}
execute in minecraft:the_end positioned 0 200 0 run summon minecraft:armor_stand ~ 200 ~ {OnGround:0b,Tags:["Meteor","spread"],Invisible:1,ArmorItems:[{},{},{},{id:amethyst_block,Count:1b}],Small:1b}
execute in minecraft:the_end positioned 0 200 0 run summon minecraft:armor_stand ~ 200 ~ {OnGround:0b,Tags:["Meteor","spread"],Invisible:1,ArmorItems:[{},{},{},{id:amethyst_block,Count:1b}],Small:1b}
execute in minecraft:the_end positioned 0 200 0 run summon minecraft:armor_stand ~ 200 ~ {OnGround:0b,Tags:["Meteor","spread"],Invisible:1,ArmorItems:[{},{},{},{id:amethyst_block,Count:1b}],Small:1b}
execute in minecraft:the_end positioned 0 200 0 run spreadplayers ~ ~ 0 40 false @e[type=minecraft:armor_stand,tag=spread]
execute as @e[type=minecraft:armor_stand,tag=spread] run execute at @s run tp ~ 319 ~
execute as @e[type=minecraft:armor_stand,tag=spread] run data merge entity @s {OnGround:0b}
tag @e[type=minecraft:armor_stand,tag=spread] remove spread

schedule function custom_ender_dragon:p2/meteor/main_3 30t append