$execute as @a[nbt={UUID:$(owner)},limit=1] at @s run function roguecraft:give_soul_charge {soul_charge_amount:$(soul_charge)}

kill @s
particle soul_fire_flame ~ ~1 ~ 0.05 0.05 0.05 0.25 300 force
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 2 0.8
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2