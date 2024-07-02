execute in roguecraft:infinite_garden if loaded 49 100 0 unless entity @e[type=marker,tag=master] run function roguecraft:init
effect give @a resistance 2 4 true
execute in roguecraft:infinite_garden run forceload add 49 0
execute unless entity @e[type=marker,tag=master] run schedule function roguecraft:pre_init 1s replace