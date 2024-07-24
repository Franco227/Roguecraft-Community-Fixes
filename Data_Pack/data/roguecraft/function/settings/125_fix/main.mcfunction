execute unless data storage roguecraft:master {run_active:0} run tellraw @a {"text":"[ERROR] Do not execute this function if a run is currently active","color":"red"}

execute unless data storage roguecraft:master {run_active:1} run execute in roguecraft:infinite_garden run tp @a 100 63 0
execute unless data storage roguecraft:master {run_active:1} run schedule function roguecraft:settings/125_fix/kill_hub 1s