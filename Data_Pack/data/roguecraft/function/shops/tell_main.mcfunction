tag @s add current_player

# Summon a ray at the caster
summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 1, Tags: [ray]}

# Position the ray at the caster's eyes and copy their facing
execute anchored eyes rotated as @s run tp @n[tag=ray] ^ ^ ^ ~ ~

# Process the ray
execute as @n[tag=ray] run function roguecraft:shops/tell_raycast_process

tag @s remove current_player