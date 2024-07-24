scoreboard players set @e[type=minecraft:marker,tag=master] id 100000
scoreboard players set @e[type=minecraft:marker,tag=master,limit=1] boss_id 100000
execute if score @e[type=minecraft:marker,tag=master,limit=1] infinite_garden_skillpoint_phase matches ..6 if entity @a[advancements={roguecraft:roguecraft/skillpoint_100=true,roguecraft:roguecraft/skillpoint_500=false}] run scoreboard players set @e[type=minecraft:marker,tag=master,limit=1] infinite_garden_skillpoint_phase 6
execute if score @e[type=minecraft:marker,tag=master,limit=1] infinite_garden_skillpoint_phase matches ..10 if entity @a[advancements={roguecraft:roguecraft/skillpoint_500=true}] run scoreboard players set @e[type=minecraft:marker,tag=master,limit=1] infinite_garden_skillpoint_phase 10

scoreboard players set @e[type=minecraft:marker,tag=master] bossbar_amount 0
execute store result storage roguecraft:master bossbar_amount int 1 run scoreboard players get @e[type=minecraft:marker,tag=master,limit=1] bossbar_amount

function roguecraft:settings/125_fix/get_bossbar_amount with storage roguecraft:master
function roguecraft:settings/125_fix/shift_game_region