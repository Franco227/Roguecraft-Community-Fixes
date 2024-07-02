# Move forward according to step size
execute if block ~ ~ ~ #roguecraft:raycast_obstructed run return 0
tp @s ^ ^ ^0.25

# Check for collisions
execute if entity @e[type=marker,distance=..0.5,tag=shop] as @a[tag=current_player] run function roguecraft:shops/tell_result
execute if entity @e[type=marker,distance=..0.5,tag=shop] run tag @s add hit


# Decrease the number of steps remaining
scoreboard players remove @s steps 1

# Recurse until we hit something or run out of steps
kill @s[tag=hit]
execute as @s[tag=!hit,scores={steps=1..}] at @s run function roguecraft:shops/tell_raycast_move