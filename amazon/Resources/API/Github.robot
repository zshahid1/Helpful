*** Settings ***
Library  RequestsLibrary
Library  Selenium2Library

*** Variables ***


*** Keywords ***
Check Github username

    Create Session  my_github_session  https://api.github.com

    ${response] = Get request  my_github_session  Users/robotframeworktutorial

    should be equal as strings   ${response.status.code}  200

    ${json} =  set variable   ${response.json()}
    should be equal as strings  ${json['login']}  Robotframeworktutorial
    Log  ${json}

Display Emoji