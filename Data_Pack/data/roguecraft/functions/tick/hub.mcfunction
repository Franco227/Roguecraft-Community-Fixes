#advancements
execute as @a[advancements={roguecraft:infinite_garden/all_dummy=false},scores={dummy_upgrade=100}] run advancement grant @s only roguecraft:infinite_garden/all_dummy
advancement grant @a[advancements={roguecraft:roguecraft/completion=false},scores={shops_completed=57}] only roguecraft:roguecraft/completion
execute as @a[advancements={roguecraft:infinite_garden/full_defense=false},scores={defense=10,armor=6,resistance=1,protection=3}] run advancement grant @s only roguecraft:infinite_garden/full_defense

#obelisks
execute as @e[type=interaction,tag=obelisk] if data entity @s attack at @s run function roguecraft:infinite_garden/hub/obelisk_tell with entity @e[type=marker,sort=nearest,limit=1] data
execute as @e[type=interaction,tag=obelisk] if data entity @s interaction at @s run function roguecraft:infinite_garden/hub/obelisk_tell with entity @e[type=marker,sort=nearest,limit=1] data

#golden scythe
execute as @e[type=interaction,tag=golden_scythe,limit=1] if data entity @s attack at @s on attacker run function roguecraft:infinite_garden/hub/golden_scythe_check
execute as @e[type=interaction,tag=golden_scythe,limit=1] if data entity @s interaction at @s on target run function roguecraft:infinite_garden/hub/golden_scythe_check

execute as @e[type=minecraft:item_display,tag=obelisk] at @s run tp @s ~ ~ ~ ~1 ~
execute as @e[type=minecraft:item_display,tag=obelisk] at @s if data entity @e[distance=..5,type=marker,sort=nearest,limit=1] {data:{status:0b}} run particle minecraft:dust 0.5 0 0 1 ~ ~ ~ 0.75 1 0.75 0 1
execute as @e[type=minecraft:item_display,tag=obelisk] at @s if data entity @e[distance=..5,type=marker,sort=nearest,limit=1] {data:{status:1b}} run particle minecraft:dust 0 0.894 0.961 1 ~ ~ ~ 0.75 1 0.75 0 1
execute as @e[type=minecraft:item_display,tag=obelisk] at @s if data entity @e[distance=..5,type=marker,sort=nearest,limit=1] {data:{status:2b}} run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.75 1 0.75 0 1
execute as @e[type=minecraft:item_display,tag=obelisk] at @s if data entity @e[distance=..5,type=marker,sort=nearest,limit=1] {Tags:["center"]} run particle minecraft:dust 0.5 0 0 0.5 ~ ~ ~ 1 1.5 1 0 1
execute as @e[type=minecraft:item_display,tag=obelisk] at @s if data entity @e[distance=..5,type=marker,sort=nearest,limit=1] {Tags:["center"]} run particle minecraft:warped_spore ~ ~-2 ~ 1 1 1 0 10

execute unless data storage roguecraft:master {bosses_checked:1b} in roguecraft:infinite_garden positioned 0.5 58 19.5 as @e[distance=..0.5,type=marker,tag=seal_room] at @s if entity @a[x=-1.7,dx=5,y=58,dy=7,z=19,dz=2] run function roguecraft:infinite_garden/hub/seal/check_bosses
execute at @e[type=minecraft:item_display,nbt={item:{id:"minecraft:air"}},tag=obelisk] run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.02 8

#tag change
execute in roguecraft:infinite_garden as @a[tag=hub] at @s positioned 0 ~ 0 if entity @s[distance=85..] at @s run function roguecraft:infinite_garden/init_garden

#shop glow (TEMP)
#execute as @e[tag=shop,tag=!class_shop,scores={level_current=0}] at @s run particle dust 1 0 0 1 ~ ~-0.5 ~ 0.25 0.0125 0.25 0 1 normal @a[distance=..8]
#execute as @e[tag=shop,tag=!class_shop,scores={level_current=1}] at @s run particle dust 1 0.533 0 1 ~ ~-0.5 ~ 0.25 0.025 0.25 0 1 normal @a[distance=..8]
#execute as @e[tag=shop,tag=!class_shop,scores={level_current=2}] at @s run particle dust 0.965 1 0 1 ~ ~-0.5 ~ 0.25 0.025 0.25 0 1 normal @a[distance=..8]
#execute as @e[tag=shop,tag=!class_shop,scores={level_current=3}] at @s run particle dust 0 1 0.133 1 ~ ~-0.5 ~ 0.25 0.025 0.25 0 1 normal @a[distance=..8]

#execute as @e[tag=class_shop,scores={level_current=0}] at @s run particle dust 1 0 0 1 ~ ~-1 ~ 0.4 0.0125 0.4 0 1 normal @a[distance=..8]
#execute as @e[tag=class_shop,scores={level_current=3}] at @s run particle dust 0 1 0.133 1 ~ ~-1 ~ 0.4 0.025 0.4 0 1 normal @a[distance=..8]
execute as @e[tag=class_shop,nbt={data:{id:0}}] at @s run particle dust 0 0.984 1 1 ~ ~-1 ~ 0.4 0.025 0.4 0 1 normal @a[distance=..8,scores={class=0}]
execute as @e[tag=class_shop,nbt={data:{id:1}}] at @s run particle dust 0 0.984 1 1 ~ ~-1 ~ 0.4 0.025 0.4 0 1 normal @a[distance=..8,scores={class=1}]
execute as @e[tag=class_shop,nbt={data:{id:2}}] at @s run particle dust 0 0.984 1 1 ~ ~-1 ~ 0.4 0.025 0.4 0 1 normal @a[distance=..8,scores={class=2}]
execute as @e[tag=class_shop,nbt={data:{id:3}}] at @s run particle dust 0 0.984 1 1 ~ ~-1 ~ 0.4 0.025 0.4 0 1 normal @a[distance=..8,scores={class=3}]
execute as @e[tag=class_shop,nbt={data:{id:4}}] at @s run particle dust 0 0.984 1 1 ~ ~-1 ~ 0.4 0.025 0.4 0 1 normal @a[distance=..8,scores={class=4}]



#shops
execute as @a at @s run function roguecraft:shops/tell_main

execute as @e[type=minecraft:interaction,tag=upgrade_shop] at @s on attacker run function roguecraft:shops/main {type:"upgrade"}
execute as @e[type=minecraft:interaction,tag=upgrade_shop] at @s on target run function roguecraft:shops/main {type:"upgrade"}

execute as @e[type=minecraft:interaction,tag=progressive_shop] at @s on attacker run function roguecraft:shops/main {type:"progressive"}
execute as @e[type=minecraft:interaction,tag=progressive_shop] at @s on target run function roguecraft:shops/main {type:"progressive"}

execute as @e[type=minecraft:interaction,tag=ability_shop] at @s on attacker run function roguecraft:shops/main {type:"ability"}
execute as @e[type=minecraft:interaction,tag=ability_shop] at @s on target run function roguecraft:shops/main {type:"ability"}

execute as @e[type=minecraft:interaction,tag=class_shop] at @s on attacker run function roguecraft:shops/main {type:"class"}
execute as @e[type=minecraft:interaction,tag=class_shop] at @s on target run function roguecraft:shops/main {type:"class"}

#create shops
execute as @e[type=marker,tag=upgrade_shop,tag=!marked] at @s run function roguecraft:shops/upgrade/create_shop with entity @s data
execute as @e[type=marker,tag=ability_shop,tag=!marked] at @s run function roguecraft:shops/ability/create_shop with entity @s data
execute as @e[type=marker,tag=class_shop,tag=!marked] at @s run function roguecraft:shops/class/create_shop with entity @s data
execute as @e[type=marker,tag=progressive_shop,tag=!marked] at @s run function roguecraft:shops/progressive/create_shop with entity @s data

#hub stuff
execute in roguecraft:infinite_garden positioned 0 63 0 run kill @e[distance=..82,type=item,nbt={Item:{id:"minecraft:totem_of_undying"}}]
execute in roguecraft:infinite_garden positioned 0 63 0 run kill @e[distance=..82,type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}]

#reset interaction entities
#execute as @e[type=minecraft:interaction,tag=!egg_interaction,tag=!obelisk,tag=!golden_scythe] run data remove entity @s interaction
#execute as @e[type=minecraft:interaction,tag=!egg_interaction,tag=!obelisk,tag=!golden_scythe] run data remove entity @s attack

#ability items
execute as @a[tag=hub,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run function roguecraft:set_hub_ability_item