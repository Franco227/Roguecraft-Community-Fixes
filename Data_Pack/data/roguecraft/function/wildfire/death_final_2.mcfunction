$bossbar remove minecraft:wildfire_$(boss_id)
$tp @e[type=minecraft:slime,tag=$(boss_id)] ~ -500 ~
$kill @e[tag=$(boss_id)]