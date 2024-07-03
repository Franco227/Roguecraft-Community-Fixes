$scoreboard players operation @s level_current += @s $(boss)
$scoreboard players set @s $(boss) 0
$data remove entity @s data.$(boss)