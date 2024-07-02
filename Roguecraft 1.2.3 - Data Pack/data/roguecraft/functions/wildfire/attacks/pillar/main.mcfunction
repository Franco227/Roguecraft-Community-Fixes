scoreboard players set @s last_attack 3
scoreboard players set @s attack_cooldown 70

playsound minecraft:entity.blaze.shoot master @a ~ ~ ~

execute store result storage roguecraft:master random_rotation.x int 1 run random value -180..180
data merge storage roguecraft:master {random_rotation.z:0}
function roguecraft:wildfire/attacks/set_random_rotation with storage roguecraft:master random_rotation

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:80,Tags:["wildfire_pillar","untagged"]}
tp @e[tag=wildfire_pillar,tag=untagged] ~ ~ ~ ~ 0
tag @e[tag=wildfire_pillar,tag=untagged] remove untagged

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:80,Tags:["wildfire_pillar","untagged"]}
tp @e[tag=wildfire_pillar,tag=untagged] ~ ~ ~ ~72 0
tag @e[tag=wildfire_pillar,tag=untagged] remove untagged

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:80,Tags:["wildfire_pillar","untagged"]}
tp @e[tag=wildfire_pillar,tag=untagged] ~ ~ ~ ~144 0
tag @e[tag=wildfire_pillar,tag=untagged] remove untagged

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:80,Tags:["wildfire_pillar","untagged"]}
tp @e[tag=wildfire_pillar,tag=untagged] ~ ~ ~ ~216 0
tag @e[tag=wildfire_pillar,tag=untagged] remove untagged

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:80,Tags:["wildfire_pillar","untagged"]}
tp @e[tag=wildfire_pillar,tag=untagged] ~ ~ ~ ~288 0
tag @e[tag=wildfire_pillar,tag=untagged] remove untagged