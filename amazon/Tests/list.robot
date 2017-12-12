*** Settings ***
Library  Selenium2Library

*** Variables ***
&{Browser1}  URL=http://www.google.co.uk  Browser=ie
&{Browser2}  URL=http://www.google.co.uk  Browser=chrome

*** Test Cases ***
user can access URL
    #@{url_and_browser}  set variable  http://www.google.co.uk  chrome
    Begin web test  ${url_and_browser}  #www.amazon.co.uk  ie

User can search for the word cats
    Open Browser  &{browser2}[URL]  &{browser2}[Browser]
    maximize browser window
    wait until page contains element  id=lst-ib
    Input text  id=lst-ib  cats
    click button  Google Search
    #close browser


*** Keywords ***
begin web test
    [Arguments]  ${url_and_browser}
    open browser  ${url_and_browser[0]}  ${url_and_browser[1]}
    close browser


#begin web test
 #   [Arguments]  ${url}  ${browser}
  #  open browser  ${url}  ${browser}
   # close browser
