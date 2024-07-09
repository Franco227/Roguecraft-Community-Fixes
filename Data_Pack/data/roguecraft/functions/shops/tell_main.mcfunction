tag @s add current_player

# Summon a ray at the caster
summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 1, Tags: [ray]}

# Position the ray at the caster's eyes and copy their facing
execute anchored eyes rotated as @s run tp @e[type=minecraft:area_effect_cloud,tag=ray,limit=1,sort=nearest] ^ ^ ^ ~ ~

# Process the ray
execute as @e[type=minecraft:area_effect_cloud,tag=ray,limit=1,sort=nearest] run function roguecraft:shops/tell_raycast_process

tag @s remove current_player