import requests
import json

tokenid = input('What is your VisionOne API Key?\n')
eventid = input('What is the Workbench ID you expect to get additional details?\n')

url_base = 'https://api.xdr.trendmicro.com'
url_path = '/v3.0/workbench/alerts'
token = tokenid

import requests
import json

url_base = 'https://api.xdr.trendmicro.com'
url_path = '/v3.0/workbench/alerts/{id}'
url_path = url_path.format(**{'id': eventid})
token = tokenid

query_params = {}
headers = {'Authorization': 'Bearer ' + token}

r = requests.get(url_base + url_path, params=query_params, headers=headers)

print(r.status_code)
if 'application/json' in r.headers.get('Content-Type', '') and len(r.content):
    print(json.dumps(r.json(), indent=4))
else:
    print(r.text)