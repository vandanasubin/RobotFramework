import os
import json
import jsonpath
import openpyxl

def createFolder(foldername):
    os.mkdir("E:\\"+foldername)


def createSubFolder(subfoldername):
    os.mkdir("E:\\Testingworld\\"+subfoldername)


def StringConcatination(string1, string2):
    return string1+string2


def Read_locators_from_json(locatorname):
    file = open("../jsonFiles/Elements.json","r")   # We have to open the .json file in to a fileobject and then read from the file in utf format before fetching the attributes, else decode error will happen
    jsonObj = json.loads(file.read())
    #jsonObj = json.loads("../jsonFiles/Elements.json")
    locator = jsonpath.jsonpath(jsonObj, locatorname) # read the data from json using jsonpath
    return locator[0]


















