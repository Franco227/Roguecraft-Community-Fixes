effect give @s minecraft:resistance 1 4 true
summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:3,CustomName:' "Explosion" '}
#tellraw @s[scores={toggle_ability_feedback=0}] {"text":"You cast Explosion","italic":true,"color":"blue"}
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 2 1.5