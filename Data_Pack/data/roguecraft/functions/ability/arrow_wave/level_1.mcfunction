summon minecraft:arrow ~0.0 ~1 ~1.5 {Motion:[0.0,0.1,1.0],life:1100}
summon minecraft:arrow ~0.7499999999999999 ~1 ~1.299038105676658 {Motion:[0.49999999999999994,0.1,0.8660254037844387],life:1100}
summon minecraft:arrow ~1.299038105676658 ~1 ~0.7500000000000002 {Motion:[0.8660254037844386,0.1,0.5000000000000001],life:1100}
summon minecraft:arrow ~1.5 ~1 ~ {Motion:[1.0,0.1,0.0],life:1100}
summon minecraft:arrow ~1.299038105676658 ~1 ~-0.7499999999999997 {Motion:[0.8660254037844387,0.1,-0.4999999999999998],life:1100}
summon minecraft:arrow ~0.7499999999999999 ~1 ~-1.299038105676658 {Motion:[0.49999999999999994,0.1,-0.8660254037844387],life:1100}
summon minecraft:arrow ~ ~1 ~-1.5 {Motion:[0.0,0.1,-1.0],life:1100}
summon minecraft:arrow ~-0.7500000000000002 ~1 ~-1.299038105676658 {Motion:[-0.5000000000000001,0.1,-0.8660254037844386],life:1100}
summon minecraft:arrow ~-1.2990381056766578 ~1 ~-0.7500000000000007 {Motion:[-0.8660254037844385,0.1,-0.5000000000000004],life:1100}
summon minecraft:arrow ~-1.5 ~1 ~ {Motion:[-1.0,0.1,0.0],life:1100}
summon minecraft:arrow ~-1.299038105676658 ~1 ~0.7500000000000002 {Motion:[-0.8660254037844386,0.1,0.5000000000000001],life:1100}
summon minecraft:arrow ~-0.7500000000000007 ~1 ~1.2990381056766576 {Motion:[-0.5000000000000004,0.1,0.8660254037844384],life:1100}

execute as @e[type=minecraft:arrow,distance=..2] run data modify entity @s Owner set from entity @a[sort=nearest,limit=1] UUID

#tellraw @s[scores={toggle_ability_feedback=0}] {"text":"You cast Arrow Shockwave","italic":true,"color":"blue"}
playsound minecraft:item.crossbow.shoot master @a ~ ~ ~ 0.6 0.9
playsound minecraft:item.crossbow.shoot master @a ~ ~ ~ 0.6 0.95
playsound minecraft:item.crossbow.shoot master @a ~ ~ ~ 0.6 1.05
playsound minecraft:item.crossbow.shoot master @a ~ ~ ~ 0.6 1.1