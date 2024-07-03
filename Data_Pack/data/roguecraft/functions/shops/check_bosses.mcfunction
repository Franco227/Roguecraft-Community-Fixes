execute if data entity @s data.corpus if data storage roguecraft:master {bosses_defeated:{corpus:1b}} run function roguecraft:shops/upgrade {boss:"corpus"}
execute if data entity @s data.sol if data storage roguecraft:master {bosses_defeated:{sol:1b}} run function roguecraft:shops/upgrade {boss:"sol"}
execute if data entity @s data.custos if data storage roguecraft:master {bosses_defeated:{custos:1b}} run function roguecraft:shops/upgrade {boss:"custos"}
execute if data entity @s data.aqua if data storage roguecraft:master {bosses_defeated:{aqua:1b}} run function roguecraft:shops/upgrade {boss:"aqua"}
execute if data entity @s data.tyrannus if data storage roguecraft:master {bosses_defeated:{tyrannus:1b}} run function roguecraft:shops/upgrade {boss:"tyrannus"}
execute if data entity @s data.anima if data storage roguecraft:master {bosses_defeated:{corpus:1b}} run function roguecraft:shops/upgrade {boss:"anima"}
execute if data entity @s data.fatum if data storage roguecraft:master {bosses_defeated:{fatum:1b}} run function roguecraft:shops/upgrade {boss:"fatum"}

scoreboard players operation @s run_number = @e[type=marker,tag=master,limit=1] run_number
function roguecraft:shops/set_max_level with entity @s data.max