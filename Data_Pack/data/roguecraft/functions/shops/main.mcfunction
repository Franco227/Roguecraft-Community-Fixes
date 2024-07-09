$execute unless data entity @s {SelectedItem:{id:"minecraft:totem_of_undying",components:{"minecraft:custom_model_data":301}}} run function roguecraft:shops/$(type)/buy_state with entity @e[type=minecraft:marker,distance=..2,sort=nearest,limit=1] data
$execute if data entity @s {SelectedItem:{id:"minecraft:totem_of_undying",components:{"minecraft:custom_model_data":301}}} if predicate roguecraft:is_sneaking run function roguecraft:shops/$(type)/sell_state with entity @e[type=minecraft:marker,distance=..2,sort=nearest,limit=1] data
execute if data entity @s {SelectedItem:{id:"minecraft:totem_of_undying",components:{"minecraft:custom_model_data":301}}} unless predicate roguecraft:is_sneaking at @s run function roguecraft:shops/sell_error {type:"upgrade"}

data remove entity @e[type=minecraft:interaction,distance=..2,sort=nearest,limit=1] attack
data remove entity @e[type=minecraft:interaction,distance=..2,sort=nearest,limit=1] interaction