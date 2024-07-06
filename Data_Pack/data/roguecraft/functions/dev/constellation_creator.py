import math

thickness = 0.1

main_list = []
current_list = []
return_str = ""

'''
connections = [
    [(1,2),(2,3),(2,4),(3,6),(4,5),(5,6),(6,7),(7,8),(8,9),(9,10),(10,11),(11,12),(12,13),(13,14),(14,15),(15,16),(16,17)],
    [(1,2),(2,3),(3,4),(4,5),(4,7),(5,6)],
    [(1,2),(2,3),(3,4),(3,5),(5,6)],
    [(1,2),(2,3),(3,4),(4,5),(5,6),(6,7),(7,8),(7,9),(7,10)],
    [(1,2),(2,3),(3,4),(4,5),(4,9),(5,6),(6,7),(7,8),(9,10)],
    [(1,2),(2,3),(3,4),(3,7),(4,5),(5,6),(6,7)],
    [(1,2),(2,3),(3,4),(4,5),(5,6),(5,9),(6,7),(7,8),(8,9)],
    [(1,2),(2,3),(3,4),(3,5),(3,6)],
    [(1,2),(2,3),(3,4),(3,5),(5,6),(5,9),(6,7),(7,8)],
    [(1,2),(2,3),(2,4),(4,5)],
    [(1,2),(1,7),(2,3),(3,4),(4,5),(5,6),(6,7)],
    [(1,2),(2,3),(2,10),(3,4),(4,5),(5,6),(6,7),(7,8),(8,9),(9,10)],
    [(1,2),(2,3),(2,9),(3,4),(4,5),(5,6),(5,8),(6,7),(8,9),(9,10),(9,12),(10,11),(11,12)],
    [(1,2),(2,3),(2,4),(4,5),(5,6),(6,7),(6,8),(6,10),(8,9),(10,11),(10,13),(11,12),(13,14),(14,15),(15,16)],
    [(1,2),(2,3),(3,4),(4,5)],
    [(1,2),(2,3),(3,4),(4,5),(5,6),(6,7),(7,8),(7,9),(7,11),(7,14),(9,10),(11,12),(12,13),(14,15),(15,16),(16,17),(17,18)],
    [(1,2),(2,3),(3,4),(4,5),(4,7),(5,6),(6,7)],
    [(1,2),(2,3),(3,4),(4,5),(4,6),(4,8),(6,7),(8,9)],
    [(1,2),(1,3),(2,3)]
]
'''
connections = [
    [(0, 1), (1, 2), (1, 3), (2, 5), (3, 4), (4, 5), (5, 6), (6, 7), (7, 8), (8, 9), (9, 10), (10, 11), (11, 12), (12, 13), (13, 14), (14, 15), (15, 16)],
    [(0, 1), (1, 2), (2, 3), (3, 4), (3, 6), (4, 5)],
    [(0, 1), (1, 2), (2, 3), (2, 4), (4, 5)],
    [(0, 1), (1, 2), (2, 3), (3, 4), (4, 5), (5, 6), (6, 7), (6, 8), (6, 9)],
    [(0, 1), (1, 2), (2, 3), (3, 4), (3, 8), (4, 5), (5, 6), (6, 7), (8, 9)],
    [(0, 1), (1, 2), (2, 3), (2, 6), (3, 4), (4, 5), (5, 6)],
    [(0, 1), (1, 2), (2, 3), (3, 4), (4, 5), (4, 8), (5, 6), (6, 7), (7, 8)],
    [(0, 1), (1, 2), (2, 3), (2, 4), (2, 5)],
    [(0, 1), (1, 2), (2, 3), (2, 4), (4, 5), (4, 8), (5, 6), (6, 7)],
    [(0, 1), (1, 2), (1, 3), (3, 4)],
    [(0, 1), (0, 6), (1, 2), (2, 3), (3, 4), (4, 5), (5, 6)],
    [(0, 1), (1, 2), (1, 9), (2, 3), (3, 4), (4, 5), (5, 6), (6, 7), (7, 8), (8, 9)],
    [(0, 1), (1, 2), (1, 8), (2, 3), (3, 4), (4, 5), (4, 7), (5, 6), (7, 8), (8, 9), (8, 11), (9, 10), (10, 11)],
    [(0, 1), (1, 2), (1, 3), (3, 4), (4, 5), (5, 6), (5, 7), (5, 9), (7, 8), (9, 10), (9, 12), (10, 11), (12, 13), (13, 14), (14, 15)],
    [(0, 1), (1, 2), (2, 3), (3, 4)],
    [(0, 1), (1, 2), (2, 3), (3, 4), (4, 5), (5, 6), (6, 7), (6, 8), (6, 10), (6, 13), (8, 9), (10, 11), (11, 12), (13, 14), (14, 15), (15, 16), (16, 17)],
    [(0, 1), (1, 2), (2, 3), (3, 4), (3, 6), (4, 5), (5, 6)],
    [(0, 1), (1, 2), (2, 3), (3, 4), (3, 5), (3, 7), (5, 6), (7, 8)],
    [(0, 1), (0, 2), (1, 2)]
]

with open("input.txt","r") as file:
    for i in file.readlines():
        if (i[0].isnumeric()):
            if (current_list != []):
                main_list.append(current_list)
                current_list = []

        if (i[0] == "["):
            i = i[41:].replace("]","").replace("d","").replace("\n","").split(",")
            for n in enumerate(i):
                i[n[0]] = float(n[1])
            current_list.append(i)

main_list.append(current_list)

'''
for i in enumerate(connections):
    for j in enumerate(i[1]):
        a = connections[i[0]][j[0]][0]-1
        b = connections[i[0]][j[0]][1]-1

        connections[i[0]][j[0]] = (a,b)
'''

#print(main_list)
#print(connections)

for s in enumerate(main_list):
    for c in connections[s[0]]:
        spawn_coordinates = s[1][c[0]]
        point_coordinates = s[1][c[1]]

        distance = math.sqrt(pow(spawn_coordinates[0]-point_coordinates[0],2)+pow(spawn_coordinates[1]-point_coordinates[1],2)+pow(spawn_coordinates[2]-point_coordinates[2],2))
        return_str += f"execute positioned {spawn_coordinates[0]} {spawn_coordinates[1]} {spawn_coordinates[2]} at @e[type=minecraft:armor_stand,sort=nearest,limit=1] run summon minecraft:block_display ~ ~ ~ {{transformation:{{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[{thickness}f,{thickness}f,{distance}f],translation:[-{thickness/2}f,-{thickness/2}f,-{thickness/2}f]}},block_state:{{Name:white_concrete}},Tags:['current_main_line']}}\nexecute as @e[tag=current_main_line] at @s run tp @e[type=minecraft:armor_stand,sort=nearest,limit=1]\nexecute positioned {point_coordinates[0]} {point_coordinates[1]} {point_coordinates[2]} run tag @e[type=minecraft:armor_stand,sort=nearest,limit=1] add current_main_armor_stand\nexecute as @e[type=minecraft:block_display,tag=current_main_line,limit=1] at @s facing entity @e[tag=current_main_armor_stand,limit=1] feet run tp @s ~ ~ ~ ~ ~\ntag @e[tag=current_main_line] remove current_main_line\ntag @e[tag=current_main_armor_stand] remove current_main_armor_stand\n\n"

print(return_str)

with open("generate_constellation_lines.mcfunction","w") as file:
    file.write(return_str)
