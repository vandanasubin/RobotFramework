import json
import requests
import jsonpath

api_url = "https://cat-fact.herokuapp.com/facts/"

response = requests.get(api_url)
print(response.text)
json_response = response.json() # parse in to json response
print(json.loads(response.text)) # this also parse in to json response
# Apply jsonpath
y= jsonpath.jsonpath(response.json(), '[0].status')
print(y)

# we can use jsonpath evaluator to retrieve the values from json attributes
# we can use json formatter to get the data in json format


