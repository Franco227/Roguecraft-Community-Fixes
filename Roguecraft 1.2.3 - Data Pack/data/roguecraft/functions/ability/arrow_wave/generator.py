#import math
import random

#multiplier = 1
#up_angle = "0.1"
#steps = 30

#for i in range(0,360,steps):
    #print(math.sin(math.radians(i)))
    #print(math.cos(math.radians(i)))
    #can't be fucked dealing with f strings lol
    #print("summon minecraft:arrow ~"+str(math.sin(math.radians(i))*1.5)+" ~1 ~"+str(math.cos(math.radians(i))*1.5)+" {Motion:["+str(math.sin(math.radians(i))*multiplier)+","+up_angle+","+str(math.cos(math.radians(i))*multiplier)+"]}")



a = 100

for i in range(100):
    if (random.randint(0,1) == 1):
        a *= 2
    else:
        a -= 100

    print(a)