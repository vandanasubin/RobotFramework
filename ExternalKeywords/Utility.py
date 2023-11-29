import os
import json
import jsonpath
from robot.api.deco import keyword
import openpyxl

# this is a module based library

ROBOT_AUTO_KEYWORD = False

@keyword
def createFolder(foldername):
    os.mkdir("E:\\"+foldername)

@keyword
def createSubFolder(subfoldername):
    os.mkdir("E:\\Testingworld\\"+subfoldername)

@keyword
def StringConcatination(string1, string2):
    return string1+string2

@keyword
def Read_locators_from_json(locatorname):
    file = open("../jsonFiles/Elements.json","r")   # We have to open the .json file in to a fileobject and then read from the file in utf format before fetching the attributes, else decode error will happen
    jsonObj = json.loads(file.read())  # converts json to python object
    #jsonObj = json.loads("../jsonFiles/Elements.json")
    locator = jsonpath.jsonpath(jsonObj, locatorname) # read the data from json using jsonpath
    return locator[0]
    # result will be wrapped in an array.So get the item out of the array

@keyword
def read_req_body():
    file = open("../jsonFiles/RequestBody.json","r")
    # open the file in read mode
    jsonStringFile = file.read()  # file contents will be read in string format
    json_content = json.load(jsonStringFile)
    return json_content  # this is of type dict






















