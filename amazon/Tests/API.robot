*** Settings ***
Documentation   These are some API Tests
Resource  amazon/Resources/API/Github.robot

*** Variables ***

*** Test Cases ***
Make a simple REST API call
    [Tags]  API
    Check Github Username

Display emoji from Github
    [Tags]  API
    Display emoji