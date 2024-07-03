$execute unless score @a[tag=mana_$(id),tag=!hub,limit=1] class matches 4 store result bossbar mana_$(id) max run scoreboard players get @a[tag=mana_$(id),limit=1] max_mana
$execute unless score @a[tag=mana_$(id),tag=!hub,limit=1] class matches 4 store result bossbar mana_$(id) value run scoreboard players get @a[tag=mana_$(id),limit=1] mana
$execute unless score @a[tag=mana_$(id),tag=!hub,limit=1] class matches 4 run bossbar set minecraft:mana_$(id) name ["",{"score":{"name":"@a[tag=mana_$(id),limit=1]","objective":"mana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@a[tag=mana_$(id),limit=1]","objective":"max_mana"},"color":"aqua"},{"text":" "},{"translate":"roguecraft.generic.mana","color":"aqua"}]
$execute unless score @a[tag=mana_$(id),tag=!hub,limit=1] class matches 4 run bossbar set minecraft:mana_$(id) color blue

$execute if score @a[tag=mana_$(id),tag=!hub,limit=1] class matches 4 store result bossbar mana_$(id) max run scoreboard players get @a[tag=mana_$(id),limit=1] max_soul_charge
$execute if score @a[tag=mana_$(id),tag=!hub,limit=1] class matches 4 store result bossbar mana_$(id) value run scoreboard players get @a[tag=mana_$(id),limit=1] soul_charge
$execute if score @a[tag=mana_$(id),tag=!hub,limit=1] class matches 4 run bossbar set minecraft:mana_$(id) name ["",{"score":{"name":"@a[tag=mana_$(id),limit=1]","objective":"soul_charge"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"@a[tag=mana_$(id),limit=1]","objective":"max_soul_charge"},"color":"white"},{"text":" "},{"translate":"roguecraft.generic.soul_charge","color":"white"}]
$execute if score @a[tag=mana_$(id),tag=!hub,limit=1] class matches 4 run bossbar set minecraft:mana_$(id) color purple

$bossbar set mana_$(id) players @a[tag=mana_$(id),tag=!hub,gamemode=!spectator]
$execute unless entity @e[tag=mana_$(id),tag=garden] if data storage roguecraft:master {run_active:0} run bossbar set mana_$(id) players @s