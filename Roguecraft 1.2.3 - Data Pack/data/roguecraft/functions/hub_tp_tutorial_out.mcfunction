tp @s 0.00 99 -6 ~180 ~
execute as @s[tag=!tutorial_done] run title @s subtitle ""
execute as @s[tag=!tutorial_done] run title @s title {"translate":"roguecraft.bossbar.hub"}
advancement grant @s only roguecraft:roguecraft/root
tag @s add tutorial_done
playsound minecraft:entity.enderman.teleport master @a 0.00 99 -11 0.5 1.25
particle minecraft:reverse_portal 0.00 99 -11 0 0 0 10 300 force