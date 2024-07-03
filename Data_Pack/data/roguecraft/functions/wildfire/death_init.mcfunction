function roguecraft:wildfire/destroy_shield_0 with entity @s data
function roguecraft:wildfire/destroy_shield_1 with entity @s data
function roguecraft:wildfire/destroy_shield_2 with entity @s data
function roguecraft:wildfire/destroy_shield_3 with entity @s data

function roguecraft:wildfire/explode
schedule function roguecraft:wildfire/explode 5t append
schedule function roguecraft:wildfire/explode 10t append
schedule function roguecraft:wildfire/explode 15t append
schedule function roguecraft:wildfire/explode 20t append
schedule function roguecraft:wildfire/explode 25t append
schedule function roguecraft:wildfire/explode 30t append
schedule function roguecraft:wildfire/explode 35t append
schedule function roguecraft:wildfire/explode 40t append
schedule function roguecraft:wildfire/explode 45t append
schedule function roguecraft:wildfire/explode 50t append
schedule function roguecraft:wildfire/explode 55t append
schedule function roguecraft:wildfire/death_final_1 75t append
execute unless data storage roguecraft:master {stronghold:1b} run schedule function roguecraft:wildfire/spawn_stronghold_1 100t append