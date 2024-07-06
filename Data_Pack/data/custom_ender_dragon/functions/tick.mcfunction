#init
execute if entity @e[type=minecraft:ender_dragon] unless entity @e[type=minecraft:marker,tag=emaster] run schedule function custom_ender_dragon:init 1s append

bossbar set minecraft:phase_4_mobs players @a[nbt={Dimension:"minecraft:the_end"}]

#dragon_phase 0
execute if entity @e[type=minecraft:marker,tag=emaster,scores={dragon_phase=0}] run data merge entity @e[type=minecraft:ender_dragon,limit=1] {CustomName:' "Ender Dragon" '}
execute store result score @e[tag=emaster] dragon_health run data get entity @e[type=minecraft:ender_dragon,tag=cdragon,limit=1] Health
execute store result bossbar minecraft:dragon value run data get entity @e[type=minecraft:ender_dragon,limit=1] Health
#execute if entity @e[type=minecraft:marker,tag=emaster,scores={dragon_phase=0,dragon_health=..100}] run function custom_ender_dragon:p1t/main
execute if entity @e[type=minecraft:marker,tag=emaster,scores={dragon_phase=0,dragon_health=..100}] run scoreboard players set @e[type=minecraft:marker,tag=emaster] dragon_phase 1


#dragon_phase 1/2
execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_phase matches 1..2 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:5}
execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_phase matches 1..2 run kill @e[type=minecraft:dragon_fireball]
execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_phase matches 1..2 in minecraft:the_end positioned 0 100 0 run kill @e[type=minecraft:area_effect_cloud,distance=..300]
execute if score @e[tag=emaster,limit=1] dragon_phase matches 2 run scoreboard players add @e[tag=emaster,limit=1] dragon_p1t_health 5
execute if score @e[tag=emaster,limit=1] dragon_phase matches 2 run execute store result bossbar minecraft:custom_dragon value run scoreboard players get @e[tag=emaster,limit=1] dragon_p1t_health
execute if score @e[tag=emaster,limit=1] dragon_phase matches 2 run execute at @e[tag=end_crystal_marker] run particle minecraft:dust{color:[0.73,0.0,1.0],scale:4.0} ~ ~ ~ 2 30 2 1 1 force

#dragon_phase 3
execute if entity @e[type=minecraft:marker,tag=emaster,scores={dragon_phase=3,dragon_health=..560}] run function custom_ender_dragon:p2t/main
execute if entity @e[type=minecraft:marker,tag=emaster,scores={dragon_phase=3,dragon_health=..560}] run scoreboard players set @e[type=minecraft:marker,tag=emaster] dragon_phase 4


#dragon_phase 4
execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_phase matches 4 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:5}


#dragon_phase 5
execute if entity @e[type=minecraft:marker,tag=emaster,scores={dragon_phase=5,dragon_health=..320}] run function custom_ender_dragon:p3t/main
execute if entity @e[type=minecraft:marker,tag=emaster,scores={dragon_phase=5,dragon_health=..320}] run scoreboard players set @e[type=minecraft:marker,tag=emaster] dragon_phase 6

#dragon_phase 6/7/8/9/10/11
execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_phase matches 6..11 in minecraft:the_end positioned 0 100 0 run kill @e[type=minecraft:area_effect_cloud,distance=..300]
execute if score @e[type=minecraft:marker,tag=emaster,limit=1] dragon_phase matches 6..11 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:5}
execute as @e[tag=nether_star_clear] at @s unless entity @e[type=minecraft:wither,tag=phase_4_mob] run function custom_ender_dragon:p4/clear_nether_star
execute unless entity @e[tag=phase_4_mob] if entity @e[type=minecraft:marker,tag=emaster,scores={dragon_phase=7}] at @e[tag=summon_portal] run function custom_ender_dragon:p4/wave_2
execute unless entity @e[tag=phase_4_mob] if entity @e[type=minecraft:marker,tag=emaster,scores={dragon_phase=8}] at @e[tag=summon_portal] run function custom_ender_dragon:p4/wave_3
execute unless entity @e[tag=phase_4_mob] if entity @e[type=minecraft:marker,tag=emaster,scores={dragon_phase=9}] at @e[tag=summon_portal] run function custom_ender_dragon:p4/wave_4
execute unless entity @e[tag=phase_4_mob] if entity @e[type=minecraft:marker,tag=emaster,scores={dragon_phase=10}] at @e[tag=summon_portal] run function custom_ender_dragon:p4/wave_5
execute unless entity @e[tag=phase_4_mob] if entity @e[type=minecraft:marker,tag=emaster,scores={dragon_phase=11}] at @e[tag=summon_portal] run function custom_ender_dragon:p4t/main_1

#dragon_phase 12
execute if entity @e[type=minecraft:marker,tag=emaster,scores={dragon_phase=12,dragon_health=..200}] run function custom_ender_dragon:p5/subphase_2

#dragon_phase 13
execute if entity @e[type=minecraft:marker,tag=emaster,scores={dragon_phase=13,dragon_health=..80}] run function custom_ender_dragon:p5/subphase_3

#dragon_phase 14
execute if entity @e[type=minecraft:marker,tag=emaster,scores={dragon_phase=14}] if score @e[tag=emaster,limit=1] dragon_health matches ..0 run function custom_ender_dragon:p5/end


#glass pillars
#execute as @e[tag=glass_pillar] at @s run kill @e[type=minecraft:end_crystal,distance=..5]
#execute as @e[tag=glass_pillar] at @s run tp ~ ~-0.125 ~
#execute as @e[tag=glass_destroyer] at @s run tp ~ ~-0.125 ~
#execute as @e[tag=glass_pillar] at @s run fill ~7 ~ ~7 ~-7 ~ ~-7 minecraft:black_stained_glass replace minecraft:obsidian
#execute as @e[tag=glass_pillar] at @s run fill ~7 ~ ~7 ~-7 ~ ~-7 minecraft:purple_stained_glass replace minecraft:crying_obsidian
#execute as @e[tag=glass_pillar] at @s run fill ~7 ~ ~7 ~-7 ~ ~-7 minecraft:gray_stained_glass replace minecraft:bedrock
#execute as @e[tag=glass_pillar] at @s run fill ~7 ~ ~7 ~-7 ~ ~-7 minecraft:light_gray_stained_glass_pane replace minecraft:iron_bars
#execute as @e[tag=glass_destroyer] at @s run fill ~-7 ~ ~-7 ~7 ~ ~7 air
#execute as @e[tag=glass_pillar] at @s if block ~8 ~-1 ~ end_stone run kill @s
#execute as @e[tag=glass_pillar] at @s if block ~-8 ~-1 ~ end_stone run kill @s
#execute as @e[tag=glass_pillar] at @s if block ~ ~-1 ~8 end_stone run kill @s
#execute as @e[tag=glass_pillar] at @s if block ~ ~-1 ~-8 end_stone run kill @s
#execute as @e[tag=glass_destroyer] at @s if block ~8 ~-1 ~ end_stone run kill @s
#execute as @e[tag=glass_destroyer] at @s if block ~-8 ~-1 ~ end_stone run kill @s
#execute as @e[tag=glass_destroyer] at @s if block ~ ~-1 ~8 end_stone run kill @s
#execute as @e[tag=glass_destroyer] at @s if block ~ ~-1 ~-8 end_stone run kill @s
#execute at @e[tag=glass_pillar] run particle minecraft:dragon_breath ~ ~ ~ 2 0 2 0.05 2 normal

#phase 4
execute at @e[tag=summon_portal] run particle minecraft:dragon_breath ~ ~ ~ 1.5 1.5 1.5 0 15 force
execute at @e[tag=summon_portal] run particle minecraft:dust{color:[1.0,0.5,1.0],scale:2.0} ~ ~ ~ 1.5 1.5 1.5 0 15 force
execute as @e[tag=phase_4_mob] run data merge entity @s {Glowing:1b}
execute store result bossbar minecraft:phase_4_mobs value run execute if entity @e[tag=phase_4_mob]


#attacks p2#

#meteor
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=Meteor] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Invulnerable:true,CustomName:' "Ender Dragon" ',ExplosionRadius:4}
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=Meteor] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:cave_air replace end_stone
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=Meteor] run fill ~ ~-2 ~ ~ ~-2 ~ minecraft:amethyst_block replace end_stone
execute as @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=Meteor] run kill
execute at @e[type=minecraft:armor_stand,tag=Meteor] positioned over motion_blocking run particle minecraft:portal ~ ~ ~ 0 0 0 0.1 5 force
execute at @e[type=minecraft:armor_stand,tag=Meteor] run particle minecraft:dust{color:[0.73,0.0,1.0],scale:3.0} ~ ~ ~ 0.5 0.5 0.5 0.01 5 force

#tnt lines
execute as @e[type=minecraft:area_effect_cloud,tag=tnt,tag=z] run execute at @s run tp ~ ~ ~-2
execute as @e[type=minecraft:area_effect_cloud,tag=tnt,tag=x] run execute at @s run tp ~-2 ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=tnt,tag=xzp] run execute at @s run tp ~-2 ~ ~-2
execute as @e[type=minecraft:area_effect_cloud,tag=tnt,tag=xzm] run execute at @s run tp ~-2 ~ ~2
execute at @e[type=minecraft:area_effect_cloud,tag=tnt] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:120,Tags:["tntsoon"]}
execute in minecraft:the_end as @e[type=minecraft:area_effect_cloud,tag=tntsoon] at @s positioned 0 ~ 0 if entity @s[distance=..100] at @s run particle minecraft:dust{color:[0.73,0.0,1.0],scale:1.0} ~ ~ ~ 0 0 0 1 1 force
execute at @e[type=minecraft:area_effect_cloud,tag=tnt] run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1 2
execute at @e[type=minecraft:area_effect_cloud,tag=tntsoon,nbt={Age:100}] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Invulnerable:true,CustomName:' "Ender Dragon" '}

#lightning ring
execute as @e[type=minecraft:area_effect_cloud,tag=lightning_ring] run execute at @s run tp @s ^ ^ ^0.17 ~0.5 ~
execute at @e[type=minecraft:area_effect_cloud,tag=lightning_ring] positioned over motion_blocking run particle minecraft:dust{color:[0.73,0.0,1.0],scale:1.5} ~ ~ ~ 0 0 0 1 1

#lightning endermen
execute if entity @e[type=minecraft:marker,tag=dragon_endermen] in minecraft:the_end as @e[type=minecraft:enderman] at @s run particle minecraft:soul_fire_flame ~ ~1.5 ~ 0 0 0 0.1 2

#balls
execute as @e[type=minecraft:dragon_fireball,tag=balls] at @s positioned ~ 0 ~ if entity @s[distance=200..] run function custom_ender_dragon:p2/balls/main_2


#attacks p3#

#missile
execute as @e[tag=auto_aim] run data merge entity @s {power:[0.0,0.0,0.0]}
execute as @e[tag=auto_aim] run data merge entity @s {Motion:[0.0,0.0,0.0]}
execute as @e[tag=auto_aim] at @s facing entity @a[sort=nearest,gamemode=!spectator,limit=1] feet run tp ^ ^ ^0.2
execute at @e[tag=auto_aim] run particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 0 10 normal
execute at @e[tag=auto_aim] run particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 0 5 force
execute at @e[tag=auto_aim] run particle minecraft:dust{color:[0.73,0.0,1.0],scale:3.0} ~ ~ ~ 0.5 0.5 0.5 0.01 7 force
execute at @e[tag=auto_aim,nbt={Age:399}] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:4,CustomName:' "Ender Dragon" '}
execute at @e[type=minecraft:area_effect_cloud,tag=auto_aim] run playsound minecraft:block.conduit.attack.target master @a ~ ~ ~ 0.6 0
execute at @e[tag=auto_aim] run particle minecraft:dust{color:[0.73,0.0,1.0],scale:2.0} ~ ~ ~ 5 5 5 0.02 3 normal

#split
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_1] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Invulnerable:true,CustomName:' "Ender Dragon" ',ExplosionRadius:4}
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_1] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:cave_air replace end_stone
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_1] run fill ~ ~-2 ~ ~ ~-2 ~ minecraft:amethyst_block replace end_stone
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_2] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Invulnerable:true,CustomName:' "Ender Dragon" ',ExplosionRadius:2}
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_2] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:cave_air replace end_stone
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_2] run fill ~ ~-2 ~ ~ ~-2 ~ minecraft:amethyst_block replace end_stone
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_3] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Invulnerable:true,CustomName:' "Ender Dragon" ',ExplosionRadius:1}
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_3] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:cave_air replace end_stone
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_3] run fill ~ ~-2 ~ ~ ~-2 ~ minecraft:amethyst_block replace end_stone
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_1] run summon minecraft:armor_stand ~ ~0.5 ~ {Motion:[0.0,1.5,-1.0],Tags:["split_2"],Invulnerable:true,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:amethyst_block",Count:1b}],Small:1b}
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_1] run summon minecraft:armor_stand ~ ~0.5 ~ {Motion:[0.0,1.5,1.0],Tags:["split_2"],Invulnerable:true,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:amethyst_block",Count:1b}],Small:1b}
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_1] run summon minecraft:armor_stand ~ ~0.5 ~ {Motion:[-1.0,1.5,0.0],Tags:["split_2"],Invulnerable:true,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:amethyst_block",Count:1b}],Small:1b}
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_1] run summon minecraft:armor_stand ~ ~0.5 ~ {Motion:[1.0,1.5,0.0],Tags:["split_2"],Invulnerable:true,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:amethyst_block",Count:1b}],Small:1b}
execute as @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_1] run kill
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_2] run summon minecraft:armor_stand ~ ~0.5 ~ {Motion:[0.5,1.5,0.5],Tags:["split_3"],Invulnerable:true,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:amethyst_block",Count:1b}],Small:1b}
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_2] run summon minecraft:armor_stand ~ ~0.5 ~ {Motion:[0.5,1.5,-0.5],Tags:["split_3"],Invulnerable:true,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:amethyst_block",Count:1b}],Small:1b}
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_2] run summon minecraft:armor_stand ~ ~0.5 ~ {Motion:[-0.5,1.5,0.5],Tags:["split_3"],Invulnerable:true,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:amethyst_block",Count:1b}],Small:1b}
execute at @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_2] run summon minecraft:armor_stand ~ ~0.5 ~ {Motion:[-0.5,1.5,-0.5],Tags:["split_3"],Invulnerable:true,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:amethyst_block",Count:1b}],Small:1b}
execute as @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_2] run kill
execute as @e[type=minecraft:armor_stand,nbt={OnGround:1b},tag=split_3] run kill
execute at @e[type=minecraft:armor_stand,tag=split_1] run particle minecraft:dust{color:[0.73,0.0,1.0],scale:3.0} ~ ~ ~ 0.5 0.5 0.5 0.01 5 force
execute at @e[type=minecraft:armor_stand,tag=split_2] run particle minecraft:dust{color:[0.73,0.0,1.0],scale:3.0} ~ ~ ~ 0.5 0.5 0.5 0.01 3 force
execute at @e[type=minecraft:armor_stand,tag=split_3] run particle minecraft:dust{color:[0.73,0.0,1.0],scale:3.0} ~ ~ ~ 0.5 0.5 0.5 0.01 1 force

kill @e[type=minecraft:ender_dragon,tag=!cdragon]
execute as @e[tag=phase_4_mob,tag=!post_tag] at @s run function custom_ender_dragon:p4/dirt_fix