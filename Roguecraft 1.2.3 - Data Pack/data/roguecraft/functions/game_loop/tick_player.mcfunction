execute as @a[tag=run_start_non_ticked,limit=1] run function roguecraft:game_loop/run_start_singular with storage roguecraft:master Region
execute if entity @a[tag=run_start_non_ticked] run schedule function roguecraft:game_loop/tick_player 1t