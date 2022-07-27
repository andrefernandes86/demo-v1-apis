import requests
import json

#tokenid = input('What is your VisionOne API Key?\n')
#endpointname = input('What is the Endpoint Name?\n')
#description2 = input('What is the reason why you are restoring the connection of this endpoint?\n')
agentid = input('What is the Agent GUID?\n')
description1 = input('What is the reason why you are restoring the connection of this endpoint?\n')

url_base = 'https://api.xdr.trendmicro.com'
url_path = '/v3.0/response/endpoints/restore'
token = tokenid

query_params = {}
headers = {'Authorization': 'Bearer ' + token,
    'Content-Type': 'application/json;charset=utf-8'}

body = [{'agentGuid': agentid,
     'description': description1}]

#body = [{'description': description2,
#     'endpointName': endpointname}]

r = requests.post(url_base + url_path, params=query_params, headers=headers, json=body)

print(r.status_code)
if 'application/json' in r.headers.get('Content-Type', '') and len(r.content):
    print(json.dumps(r.json(), indent=4))
else:
    print(r.text)
