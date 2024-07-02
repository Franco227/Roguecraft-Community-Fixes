playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
tellraw @s {"translate":"roguecraft.chat_messages.golden_scythe_no_requirements","italic":true,"color":"red"}

data remove entity @e[distance=..1,type=interaction,sort=nearest,limit=1] attack
data remove entity @e[distance=..1,type=interaction,sort=nearest,limit=1] interaction