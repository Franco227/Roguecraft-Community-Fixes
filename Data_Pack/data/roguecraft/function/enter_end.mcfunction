tag @s add end
execute in minecraft:the_end run spreadplayers 0 0 0 5 false @s
effect give @s minecraft:blindness 2 0 true
effect give @s minecraft:darkness 2 0 true
effect give @s minecraft:resistance 3 4 true
clear @s minecraft:end_portal_frame
title @s subtitle ""
title @s title {"translate":"roguecraft.title.enter_end","color":"light_purple"}