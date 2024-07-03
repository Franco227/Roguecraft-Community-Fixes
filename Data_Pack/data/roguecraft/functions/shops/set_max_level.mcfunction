$execute if score @s level_current matches 0 run scoreboard players set @s level_max $(level_0)
$execute if score @s level_current matches 1 run scoreboard players set @s level_max $(level_1)
$execute if score @s level_current matches 2 run scoreboard players set @s level_max $(level_2)
$execute if score @s level_current matches 3 run scoreboard players set @s level_max $(level_3)

$data merge entity @s {data:{max_final:$(level_3)}}

execute if score @s level_current matches 0 at @s positioned ~ ~1.75 ~ run data merge entity @e[tag=lock,type=item_display,sort=nearest,limit=1] {item:{tag:{CustomModelData:403}}}
execute if score @s level_current matches 1 at @s positioned ~ ~1.75 ~ run data merge entity @e[tag=lock,type=item_display,sort=nearest,limit=1] {item:{tag:{CustomModelData:402}}}
execute if score @s level_current matches 2 at @s positioned ~ ~1.75 ~ run data merge entity @e[tag=lock,type=item_display,sort=nearest,limit=1] {item:{tag:{CustomModelData:401}}}
execute if score @s level_current matches 3 at @s positioned ~ ~1.75 ~ run data merge entity @e[tag=lock,type=item_display,sort=nearest,limit=1] {item:{tag:{CustomModelData:400}}}