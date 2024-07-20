tag @s add current_main
scoreboard players reset @s start_run

execute as @s[tag=!ready_tagged,tag=tutorial_done,tag=!ready] run function roguecraft:infinite_garden/hub/ready/ready
execute as @s[tag=!ready_tagged,tag=tutorial_done,tag=ready] if data storage roguecraft:master {start:1} run function roguecraft:infinite_garden/hub/ready/ready_error
execute as @s[tag=!ready_tagged,tag=tutorial_done,tag=ready] unless data storage roguecraft:master {start:1} run function roguecraft:infinite_garden/hub/ready/unready
execute as @s[tag=!ready_tagged,tag=!tutorial_done] run function roguecraft:infinite_garden/hub/ready/tutorial_error

tag @s remove ready_tagged
tag @s remove current_main

function roguecraft:infinite_garden/hub/set_inventory