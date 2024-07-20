title @s subtitle ""
title @s title {"translate":"roguecraft.title.cosmic_dome","color":"aqua"}
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 2 0.5

tag @s add tutorial_done

function roguecraft:infinite_garden/hub/ender_chest/reset
function roguecraft:infinite_garden/hub/set_inventory
advancement grant @s only roguecraft:roguecraft/root

function roguecraft:infinite_garden/hub/seal/waterlog_fix