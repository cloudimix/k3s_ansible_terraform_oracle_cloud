#!/usr/bin/env python3
import re
import json
import subprocess

pattern = r"\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}"
f = subprocess.run(['terraform', 'output'], stdout=subprocess.PIPE).stdout.decode('utf-8')
match_object = re.findall(pattern, f)
print(json.dumps({"hosts": match_object}))
