#init
execute if entity @e[type=minecraft:ender_dragon] unless entity @e[type=minecraft:marker,tag=emaster] run schedule function custom_ender_dragon:init 1s append

bossbar set minecraft:phase_4_mobs players @a[nbt={Dimension:"minecraft:the_end"}]

#dragon_phase 0
execute if entity @e[type=minecraft:marker,scores={dragon_phase=0},tag=emaster] run data merge entity @e[type=minecraft:ender_dragon,limit=1] {CustomName:' "Ender Dragon" '}
execute store result score @e[type=minecraft:marker,tag=emaster] dragon_health run data get entity @e[type=minecraft:ender_dragon,tag=cdragon,limit=1] Health
execute store result bossbar minecraft:dragon value run data get entity @e[type=minecraft:ender_dragon,limit=1] Health
#execute if entity @e[type=minecraft:marker,scores={dragon_phase=0,dragon_health=..100},tag=emaster] run function custom_ender_dragon:p1t/main
execute if entity @e[type=minecraft:marker,scores={dragon_phase=0,dragon_health=..100},tag=emaster] run scoreboard players set @e[type=minecraft:marker,tag=emaster] dragon_phase 1


#dragon_phase 1/2
execute as @e[type=minecraft:marker,tag=emaster,limit=1] run function custom_ender_dragon:dragon_phase_1_2

#dragon_phase 3
execute if entity @e[type=minecraft:marker,scores={dragon_phase=3,dragon_health=..560},tag=emaster] run function custom_ender_dragon:p2t/main
execute if entity @e[type=minecraft:marker,scores={dragon_phase=3,dragon_health=..560},tag=emaster] run scoreboard players set @e[type=minecraft:marker,tag=emaster] dragon_phase 4


#dragon_phase 4
execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_phase matches 4 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:5}


#dragon_phase 5
execute if entity @e[type=minecraft:marker,scores={dragon_phase=5,dragon_health=..320},tag=emaster] run function custom_ender_dragon:p3t/main
execute if entity @e[type=minecraft:marker,scores={dragon_phase=5,dragon_health=..320},tag=emaster] run scoreboard players set @e[type=minecraft:marker,tag=emaster] dragon_phase 6

#dragon_phase 6/7/8/9/10/11
execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_phase matches 6..11 in minecraft:the_end positioned 0 100 0 run kill @e[type=minecraft:area_effect_cloud,distance=..300]
execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_phase matches 6..11 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:5}
execute as @e[type=minecraft:marker,tag=nether_star_clear] at @s unless entity @e[type=minecraft:wither,tag=phase_4_mob] run function custom_ender_dragon:p4/clear_nether_star
execute unless entity @e[tag=phase_4_mob] as @e[type=minecraft:marker,tag=emaster] run function custom_ender_dragon:dragon_phase_7_11

#dragon_phase 12
execute if entity @e[type=minecraft:marker,scores={dragon_phase=12,dragon_health=..200},tag=emaster] run function custom_ender_dragon:p5/subphase_2

#dragon_phase 13
execute if entity @e[type=minecraft:marker,scores={dragon_phase=13,dragon_health=..80},tag=emaster] run function custom_ender_dragon:p5/subphase_3

#dragon_phase 14
execute if score @e[type=minecraft:marker,scores={dragon_phase=14},tag=emaster,limit=1] dragon_health matches ..0 run function custom_ender_dragon:p5/end


#glass pillars
#execute as @e[type=minecraft:marker,tag=glass_pillar] at @s run kill @e[type=minecraft:end_crystal,distance=..5]
#execute as @e[type=minecraft:marker,tag=glass_pillar] at @s run tp ~ ~-0.125 ~
#execute as @e[type=minecraft:marker,tag=glass_destroyer] at @s run tp ~ ~-0.125 ~
#execute as @e[type=minecraft:marker,tag=glass_pillar] at @s run fill ~7 ~ ~7 ~-7 ~ ~-7 minecraft:black_stained_glass replace minecraft:obsidian
#execute as @e[type=minecraft:marker,tag=glass_pillar] at @s run fill ~7 ~ ~7 ~-7 ~ ~-7 minecraft:purple_stained_glass replace minecraft:crying_obsidian
#execute as @e[type=minecraft:marker,tag=glass_pillar] at @s run fill ~7 ~ ~7 ~-7 ~ ~-7 minecraft:gray_stained_glass replace minecraft:bedrock
#execute as @e[type=minecraft:marker,tag=glass_pillar] at @s run fill ~7 ~ ~7 ~-7 ~ ~-7 minecraft:light_gray_stained_glass_pane replace minecraft:iron_bars
#execute as @e[type=minecraft:marker,tag=glass_destroyer] at @s run fill ~-7 ~ ~-7 ~7 ~ ~7 minecraft:air
#execute as @e[type=minecraft:marker,tag=glass_pillar] at @s if block ~8 ~-1 ~ minecraft:end_stone run kill @s
#execute as @e[type=minecraft:marker,tag=glass_pillar] at @s if block ~-8 ~-1 ~ minecraft:end_stone run kill @s
#execute as @e[type=minecraft:marker,tag=glass_pillar] at @s if block ~ ~-1 ~8 minecraft:end_stone run kill @s
#execute as @e[type=minecraft:marker,tag=glass_pillar] at @s if block ~ ~-1 ~-8 minecraft:end_stone run kill @s
#execute as @e[type=minecraft:marker,tag=glass_destroyer] at @s if block ~8 ~-1 ~ minecraft:end_stone run kill @s
#execute as @e[type=minecraft:marker,tag=glass_destroyer] at @s if block ~-8 ~-1 ~ minecraft:end_stone run kill @s
#execute as @e[type=minecraft:marker,tag=glass_destroyer] at @s if block ~ ~-1 ~8 minecraft:end_stone run kill @s
#execute as @e[type=minecraft:marker,tag=glass_destroyer] at @s if block ~ ~-1 ~-8 minecraft:end_stone run kill @s
#execute at @e[type=minecraft:marker,tag=glass_pillar] run particle minecraft:dragon_breath ~ ~ ~ 2 0 2 0.05 2 normal

#phase 4
execute at @e[type=minecraft:marker,tag=summon_portal] run particle minecraft:dragon_breath ~ ~ ~ 1.5 1.5 1.5 0 15 force
execute at @e[type=minecraft:marker,tag=summon_portal] run particle minecraft:dust{color:[1.0,0.5,1.0],scale:2.0} ~ ~ ~ 1.5 1.5 1.5 0 15 force
execute as @e[tag=phase_4_mob] run data merge entity @s {Glowing:1b}
execute store result bossbar minecraft:phase_4_mobs value run execute if entity @e[tag=phase_4_mob]


#attacks p2#

#meteor
execute as @e[type=minecraft:armor_stand,tag=Meteor,nbt={OnGround:1b}] at @s run function custom_ender_dragon:p2/meteor/tick_meteor
execute at @e[type=minecraft:armor_stand,tag=Meteor] positioned over motion_blocking run particle minecraft:portal ~ ~ ~ 0 0 0 0.1 5 force
execute at @e[type=minecraft:armor_stand,tag=Meteor] run particle minecraft:dust{color:[0.73,0.0,1.0],scale:3.0} ~ ~ ~ 0.5 0.5 0.5 0.01 5 force

#tnt lines
execute as @e[type=minecraft:area_effect_cloud,tag=z] run execute at @s run tp ~ ~ ~-2
execute as @e[type=minecraft:area_effect_cloud,tag=x] run execute at @s run tp ~-2 ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=xzp] run execute at @s run tp ~-2 ~ ~-2
execute as @e[type=minecraft:area_effect_cloud,tag=xzm] run execute at @s run tp ~-2 ~ ~2
execute at @e[type=minecraft:area_effect_cloud,tag=tnt] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:120,Tags:["tntsoon"]}
execute in minecraft:the_end as @e[type=minecraft:area_effect_cloud,tag=tntsoon] at @s positioned 0 ~ 0 if entity @s[distance=..100] at @s run particle minecraft:dust{color:[0.73,0.0,1.0],scale:1.0} ~ ~ ~ 0 0 0 1 1 force
execute at @e[type=minecraft:area_effect_cloud,tag=tnt] run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 2
execute at @e[type=minecraft:area_effect_cloud,tag=tntsoon,nbt={Age:100}] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Invulnerable:true,CustomName:' "Ender Dragon" '}

#lightning ring
execute as @e[type=minecraft:area_effect_cloud,tag=lightning_ring] run execute at @s run tp @s ^ ^ ^0.17 ~0.5 ~
execute at @e[type=minecraft:area_effect_cloud,tag=lightning_ring] positioned over motion_blocking run particle minecraft:dust{color:[0.73,0.0,1.0],scale:1.5} ~ ~ ~ 0 0 0 1 1

#lightning endermen
execute if entity @e[type=minecraft:marker,tag=dragon_endermen] in minecraft:the_end as @e[x=-250,y=0,z=-250,dx=500,dy=150,dz=500,type=minecraft:enderman] at @s run particle minecraft:soul_fire_flame ~ ~1.5 ~ 0 0 0 0.1 2

#balls
execute as @e[type=minecraft:dragon_fireball,tag=balls] at @s positioned ~ 0 ~ if entity @s[distance=200..] run function custom_ender_dragon:p2/balls/main_2


#attacks p3#

#missile
execute as @e[type=minecraft:area_effect_cloud,tag=auto_aim] at @s run function custom_ender_dragon:p3/missile/tick_missile
execute at @e[type=minecraft:area_effect_cloud,tag=auto_aim,nbt={Age:399}] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:4,CustomName:' "Ender Dragon" '}

#split
execute as @e[type=minecraft:armor_stand,tag=split_1,nbt={OnGround:1b}] at @s run function custom_ender_dragon:p3/split/tick_split_1
execute as @e[type=minecraft:armor_stand,tag=split_2,nbt={OnGround:1b}] at @s run function custom_ender_dragon:p3/split/tick_split_2
execute as @e[type=minecraft:armor_stand,tag=split_3,nbt={OnGround:1b}] at @s run function custom_ender_dragon:p3/split/tick_split_3
execute at @e[type=minecraft:armor_stand,tag=split_1] run particle minecraft:dust{color:[0.73,0.0,1.0],scale:3.0} ~ ~ ~ 0.5 0.5 0.5 0.01 5 force
execute at @e[type=minecraft:armor_stand,tag=split_2] run particle minecraft:dust{color:[0.73,0.0,1.0],scale:3.0} ~ ~ ~ 0.5 0.5 0.5 0.01 3 force
execute at @e[type=minecraft:armor_stand,tag=split_3] run particle minecraft:dust{color:[0.73,0.0,1.0],scale:3.0} ~ ~ ~ 0.5 0.5 0.5 0.01 1 force

kill @e[type=minecraft:ender_dragon,tag=!cdragon]
execute as @e[tag=phase_4_mob,tag=!post_tag] at @s run function custom_ender_dragon:p4/dirt_fix