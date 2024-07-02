tag @a[tag=ready_final] add run_start_non_ticked
schedule function roguecraft:game_loop/tick_player 1t
function roguecraft:game_loop/run_init with storage roguecraft:master Region

schedule clear roguecraft:countdown/countdown_1
schedule clear roguecraft:countdown/countdown_2
schedule clear roguecraft:countdown/countdown_3
schedule clear roguecraft:countdown/countdown_4
schedule clear roguecraft:countdown/countdown_5
schedule clear roguecraft:game_loop/run_start_2