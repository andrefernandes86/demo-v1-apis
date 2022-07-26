import requests
import json

tokenid = input('What is your VisionOne API Key?\n')
urlid = input('URL of the file to be analyzed?\n')


url_base = 'https://api.xdr.trendmicro.com'
url_path = '/v3.0/sandbox/urls/analyze'
token = tokenid

query_params = {}
headers = {'Authorization': 'Bearer ' + token,
    'Content-Type': 'application/json;charset=utf-8'}
body = [{'url': urlid}]

r = requests.post(url_base + url_path, params=query_params, headers=headers, json=body)

print(r.status_code)
if 'application/json' in r.headers.get('Content-Type', '') and len(r.content):
    print(json.dumps(r.json(), indent=4))
else:
    print(r.text)
