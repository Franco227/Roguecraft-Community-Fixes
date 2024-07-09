playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
tellraw @s {"translate":"roguecraft.chat_messages.golden_scythe_no_requirements","italic":true,"color":"red"}

data remove entity @e[type=minecraft:interaction,distance=..1,sort=nearest,limit=1] attack
data remove entity @e[type=minecraft:interaction,distance=..1,sort=nearest,limit=1] interaction