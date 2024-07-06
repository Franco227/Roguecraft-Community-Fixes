origin_pos = -96
size = 12
init_offset = 12
start_char = ord('a')

structures = []

for x in range(size):
    for z in range(size):
        name = chr(start_char+z)+str(x+1)

        xpos = origin_pos+x*16
        zpos = origin_pos+z*16

        xpos += init_offset if x == 0 else 0
        zpos += init_offset if z == 0 else 0

        structures.append([name,xpos,zpos])

print(structures)

for i in structures:
    print(f'execute in roguecraft:infinite_garden run summon minecraft:marker {i[1]} 56 {i[2]} {{Tags:["hub_builder"],data:{{id:{i[0]}}}}}')