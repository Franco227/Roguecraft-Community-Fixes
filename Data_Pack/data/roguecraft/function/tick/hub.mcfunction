#advancements
execute as @a[advancements={roguecraft:infinite_garden/all_dummy=false},scores={dummy_upgrade=100}] run advancement grant @s only roguecraft:infinite_garden/all_dummy
advancement grant @a[advancements={roguecraft:roguecraft/completion=false},scores={shops_completed=57}] only roguecraft:roguecraft/completion
execute as @a[advancements={roguecraft:infinite_garden/full_defense=false},scores={defense=10,armor=6,resistance=1,protection=3}] run advancement grant @s only roguecraft:infinite_garden/full_defense

#obelisks
execute as @e[type=minecraft:interaction,tag=obelisk] if data entity @s attack at @s run function roguecraft:infinite_garden/hub/obelisk_tell with entity @n[type=minecraft:marker] data
execute as @e[type=minecraft:interaction,tag=obelisk] if data entity @s interaction at @s run function roguecraft:infinite_garden/hub/obelisk_tell with entity @n[type=minecraft:marker] data

#golden scythe
execute as @e[type=minecraft:interaction,tag=golden_scythe,limit=1] if data entity @s attack at @s on attacker run function roguecraft:infinite_garden/hub/golden_scythe_check
execute as @e[type=minecraft:interaction,tag=golden_scythe,limit=1] if data entity @s interaction at @s on target run function roguecraft:infinite_garden/hub/golden_scythe_check
execute if entity @a[scores={golden_scythe=589000069}] at @e[type=minecraft:interaction,tag=golden_scythe,limit=1] run particle minecraft:trial_spawner_detection ~ ~ ~ 0.75 1 0.75 0 1 normal @a[scores={golden_scythe=589000069}]

execute as @e[type=minecraft:item_display,tag=obelisk] at @s run tp @s ~ ~ ~ ~1 ~
execute as @e[type=minecraft:item_display,tag=obelisk] at @s if data entity @n[distance=..5,type=minecraft:marker] {data:{status:0b}} run particle minecraft:dust{color:[0.5,0.0,0.0],scale:1.0} ~ ~ ~ 0.75 1 0.75 0 1
execute as @e[type=minecraft:item_display,tag=obelisk] at @s if data entity @n[distance=..5,type=minecraft:marker] {data:{status:1b}} run particle minecraft:dust{color:[0.0,0.894,0.961],scale:1.0} ~ ~ ~ 0.75 1 0.75 0 1
execute as @e[type=minecraft:item_display,tag=obelisk] at @s if data entity @n[distance=..5,type=minecraft:marker] {data:{status:2b}} run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.0} ~ ~ ~ 0.75 1 0.75 0 1
execute as @e[type=minecraft:item_display,tag=obelisk] at @s if data entity @n[distance=..5,type=minecraft:marker] {Tags:["center"]} run particle minecraft:dust{color:[0.5,0.0,0.0],scale:0.5} ~ ~ ~ 1 1.5 1 0 1
execute as @e[type=minecraft:item_display,tag=obelisk] at @s if data entity @n[distance=..5,type=minecraft:marker] {Tags:["center"]} run particle minecraft:warped_spore ~ ~-2 ~ 1 1 1 0 10

execute unless data storage roguecraft:master {bosses_checked:1b} in roguecraft:infinite_garden positioned 0.5 58 19.5 as @e[type=minecraft:marker,distance=..0.5,tag=seal_room] at @s if entity @a[x=-1.7,dx=5,y=58,dy=7,z=19,dz=2] run function roguecraft:infinite_garden/hub/seal/check_bosses
execute as @e[type=minecraft:item_display,tag=obelisk] unless data entity @s item at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.02 8

#tag change
execute in roguecraft:infinite_garden as @a[tag=hub] at @s positioned 0 ~ 0 if entity @s[distance=85..] at @s run function roguecraft:infinite_garden/init_garden

#shop glow
execute as @e[type=minecraft:marker,tag=class_shop,nbt={data:{id:0}}] at @s run particle minecraft:dust{color:[0.0,0.984,1.0],scale:1.0} ~ ~-1 ~ 0.4 0.025 0.4 0 1 normal @a[distance=..8,scores={class=0}]
execute as @e[type=minecraft:marker,tag=class_shop,nbt={data:{id:1}}] at @s run particle minecraft:dust{color:[0.0,0.984,1.0],scale:1.0} ~ ~-1 ~ 0.4 0.025 0.4 0 1 normal @a[distance=..8,scores={class=1}]
execute as @e[type=minecraft:marker,tag=class_shop,nbt={data:{id:2}}] at @s run particle minecraft:dust{color:[0.0,0.984,1.0],scale:1.0} ~ ~-1 ~ 0.4 0.025 0.4 0 1 normal @a[distance=..8,scores={class=2}]
execute as @e[type=minecraft:marker,tag=class_shop,nbt={data:{id:3}}] at @s run particle minecraft:dust{color:[0.0,0.984,1.0],scale:1.0} ~ ~-1 ~ 0.4 0.025 0.4 0 1 normal @a[distance=..8,scores={class=3}]
execute as @e[type=minecraft:marker,tag=class_shop,nbt={data:{id:4}}] at @s run particle minecraft:dust{color:[0.0,0.984,1.0],scale:1.0} ~ ~-1 ~ 0.4 0.025 0.4 0 1 normal @a[distance=..8,scores={class=4}]

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
execute as @e[type=minecraft:marker,tag=upgrade_shop,tag=!marked] at @s run function roguecraft:shops/upgrade/create_shop with entity @s data
execute as @e[type=minecraft:marker,tag=ability_shop,tag=!marked] at @s run function roguecraft:shops/ability/create_shop with entity @s data
execute as @e[type=minecraft:marker,tag=class_shop,tag=!marked] at @s run function roguecraft:shops/class/create_shop with entity @s data
execute as @e[type=minecraft:marker,tag=progressive_shop,tag=!marked] at @s run function roguecraft:shops/progressive/create_shop with entity @s data

#hub stuff
execute in roguecraft:infinite_garden positioned 0 63 0 run kill @e[type=minecraft:item,distance=..82,nbt={Item:{id:"minecraft:totem_of_undying"}}]
execute in roguecraft:infinite_garden positioned 0 63 0 run kill @e[type=minecraft:item,distance=..82,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}]

#reset interaction entities
execute as @e[type=minecraft:interaction,tag=!egg_interaction,tag=!obelisk,tag=!golden_scythe] run data remove entity @s interaction
execute as @e[type=minecraft:interaction,tag=!egg_interaction,tag=!obelisk,tag=!golden_scythe] run data remove entity @s attack

#ability items
execute as @a[tag=hub,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run function roguecraft:set_hub_ability_item