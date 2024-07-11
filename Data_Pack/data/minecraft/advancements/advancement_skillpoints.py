import json
import glob
import os

dir_path = os.path.dirname(os.path.realpath(__file__))

if os.name == 'posix':
    path = dir_path + "/*/*.json"
else:
    path = dir_path + "\*\*.json"

for advancement in glob.glob(path):

    with open(advancement, 'r') as file:
        data = json.load(file)
        if "display" in data and "announce_to_chat" in data["display"] and data["display"]["announce_to_chat"] is False:
            continue
        elif "rewards" not in data:
            data["rewards"] = {"function": "roguecraft:skillpoints/advancement"}
        else:
            data["rewards"]["function"] = "roguecraft:skillpoints/advancement"

    with open(advancement, 'w') as file:
        json.dump(data, file, indent=2)