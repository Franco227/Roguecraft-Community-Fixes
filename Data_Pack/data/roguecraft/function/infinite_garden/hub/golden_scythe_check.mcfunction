playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
tellraw @s {"translate":"roguecraft.chat_messages.golden_scythe_no_requirements","italic":true,"color":"red"}

data remove entity @n[distance=..1,type=minecraft:interaction] attack
data remove entity @n[distance=..1,type=minecraft:interaction] interaction