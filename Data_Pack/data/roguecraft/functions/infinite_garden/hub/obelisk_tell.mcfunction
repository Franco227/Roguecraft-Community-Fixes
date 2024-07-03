$execute if data entity @e[type=marker,distance=..6,sort=nearest,limit=1] {data:{status:0b}} if data entity @s attack on attacker run tellraw @s {"translate":"$(text)inactive","color":"red","italic":true}
$execute if data entity @e[type=marker,distance=..6,sort=nearest,limit=1] {data:{status:0b}} if data entity @s interaction on target run tellraw @s {"translate":"$(text)inactive","color":"red","italic":true}

$execute if data entity @e[type=marker,distance=..6,sort=nearest,limit=1] {data:{status:1b}} if data entity @s attack on attacker run tellraw @s {"translate":"$(text)main","color":"green","italic":true}
$execute if data entity @e[type=marker,distance=..6,sort=nearest,limit=1] {data:{status:1b}} if data entity @s interaction on target run tellraw @s {"translate":"$(text)main","color":"green","italic":true}

$execute if data entity @e[type=marker,distance=..6,sort=nearest,limit=1] {data:{status:3b}} if data entity @s attack on attacker run tellraw @s {"translate":"$(text)defeat","color":"aqua","italic":true}
$execute if data entity @e[type=marker,distance=..6,sort=nearest,limit=1] {data:{status:3b}} if data entity @s interaction on target run tellraw @s {"translate":"$(text)defeat","color":"aqua","italic":true}

execute if entity @e[type=marker,distance=..6,sort=nearest,limit=1,tag=divus] if data entity @s attack on attacker run particle minecraft:soul_fire_flame ~ ~4 ~ 0 0 0 0.1 20 normal @s
execute if entity @e[type=marker,distance=..6,sort=nearest,limit=1,tag=divus] if data entity @s interaction on target run particle minecraft:soul_fire_flame ~ ~4 ~ 0 0 0 0.1 20 normal @s
execute if entity @e[type=marker,distance=..6,sort=nearest,limit=1,tag=!divus] if data entity @s attack on attacker run particle minecraft:soul_fire_flame ~ ~2 ~ 0 0 0 0.1 20 normal @s
execute if entity @e[type=marker,distance=..6,sort=nearest,limit=1,tag=!divus] if data entity @s interaction on target run particle minecraft:soul_fire_flame ~ ~2 ~ 0 0 0 0.1 20 normal @s

execute if data entity @s attack on attacker run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 2 0.5
execute if data entity @s attack on attacker run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 2 0.5
execute if data entity @s attack on attacker run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 2 0.5
execute if data entity @s attack on attacker run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 2 0.5
execute if data entity @s interaction on target run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 2 0.5
execute if data entity @s interaction on target run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 2 0.5
execute if data entity @s interaction on target run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 2 0.5
execute if data entity @s interaction on target run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 2 0.5

data remove entity @s interaction
data remove entity @s attack