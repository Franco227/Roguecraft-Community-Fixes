import json
import glob
import os

dir_path = os.path.dirname(os.path.realpath(__file__))

for i in glob.glob(dir_path+"\*\*.json"):

    with open(i,"r") as file:
        data = json.load(file)
        if ("display" in data) and ("announce_to_chat" in data["display"]) and (data["display"]["announce_to_chat"] == False):
            data["rewards"] = {}
            print(data)
        else:
            data["rewards"] = {'function': 'roguecraft:skillpoints/advancement'}

    with open(i,"w") as file:
        file.write(json.dumps(data))