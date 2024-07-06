tag @a[tag=hub,tag=!garden] add ready_final
execute store result storage roguecraft:master Region.X int 1 run scoreboard players get @e[tag=master,limit=1] region_x
execute store result storage roguecraft:master Region.Z int 1 run scoreboard players get @e[tag=master,limit=1] region_z
scoreboard players add @e[type=minecraft:marker,tag=master] run_number 1
data merge storage roguecraft:master {start:1}
data merge storage roguecraft:master {bosses_checked:0b}
scoreboard players set @e[type=minecraft:marker,tag=master,limit=1] difficulty_val_max 450

execute as @a[tag=!garden] run function roguecraft:infinite_garden/hub/set_inventory

schedule clear roguecraft:second
schedule clear roguecraft:half_second
schedule clear roguecraft:three_second
schedule clear roguecraft:shops/switch_shop_text
schedule clear roguecraft:quarter_hour
function roguecraft:second
function roguecraft:half_second
function roguecraft:three_second
function roguecraft:shops/switch_shop_text
schedule function roguecraft:quarter_hour 900s

function roguecraft:game_loop/forceload_init with storage roguecraft:master Region

schedule function roguecraft:countdown/countdown_5 1s append
schedule function roguecraft:countdown/countdown_4 2s append
schedule function roguecraft:countdown/countdown_3 3s append
schedule function roguecraft:countdown/countdown_2 4s append
schedule function roguecraft:countdown/countdown_1 5s append
schedule function roguecraft:game_loop/run_start_2 6s replace