import requests
import json

url_base = 'https://api.xdr.trendmicro.com'
url_path = '/v2.0/xdr/threatintel/suspiciousObjects'


tokenid = input('Please provide the VisionOne API Key?\n')
typeid = input('What kind of IOC do you want to add to the SO list? (ip, url, sha1)\n')
valueid = input('What is the IOC do you want to add to the SO list?\n')
scanActionid = input('What action do you want to define as a reponse anytime this IOC is detected by the Trend Micro solutions (block or log)?\n')
riskLevelid = input('How do you classify this IOC? If High-Risk, plase use "high", if Medium-Risk, use "medium", and for Low-Risk, use "low".\n')

query_params = {}
headers = {'Authorization': 'Bearer ' + tokenid,
    'Content-Type': 'application/json;charset=utf-8'}
body = {'data': [{'riskLevel': riskLevelid,
              'scanAction': scanActionid,
              'type': typeid,
              'value': valueid}]}

r = requests.post(url_base + url_path, params=query_params, headers=headers, json=body)

print(r.status_code)
if 'application/json' in r.headers.get('Content-Type', '') and len(r.content):
    print(json.dumps(r.json(), indent=4))
else:
    print(r.text)
