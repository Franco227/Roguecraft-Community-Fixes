$execute unless data entity @s {SelectedItem:{id:"minecraft:totem_of_undying",tag:{CustomModelData:301}}} run function roguecraft:shops/$(type)/buy_state with entity @e[distance=..2,type=marker,sort=nearest,limit=1] data
$execute if data entity @s {SelectedItem:{id:"minecraft:totem_of_undying",tag:{CustomModelData:301}}} if predicate roguecraft:is_sneaking run function roguecraft:shops/$(type)/sell_state with entity @e[distance=..2,type=marker,sort=nearest,limit=1] data
execute if data entity @s {SelectedItem:{id:"minecraft:totem_of_undying",tag:{CustomModelData:301}}} unless predicate roguecraft:is_sneaking at @s run function roguecraft:shops/sell_error {type:"upgrade"}

data remove entity @e[distance=..2,type=interaction,sort=nearest,limit=1] attack
data remove entity @e[distance=..2,type=interaction,sort=nearest,limit=1] interaction