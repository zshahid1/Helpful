*** Settings ***
Library  Selenium2Library
Documentation   Checking out the built in library

*** Variables ***
${GLOBAL} =  I AM GLOBAL VARIABLE 1
${SOME_GLOBAL_DATA}

*** Test Cases ***
Declare and set variables
    ${some_test_data} =  set variable   This is only available in the test
    set test variable   ${more_test_data}  This is also only avialable

    set suite variable   ${some_suite_data}  This is also only avialable

    set global variable   ${SOME_GLOBAL_DATA}  This is avialable everywhere

Logging stuff
    [Tags]  BuiltIn
    Comment  ${unset_variable}
    Comment  Anything?
    Log  I have something to say
    Log many  Text 1  Text 2  Text 3
    Log to console  this can only be seen in the console
    log  ${some_suite_data)
    Log  $(GLOBAL1}
    Log  ${SOME_GLOBAL_DATA}

IGNORE FAILURES IN THIS TEST
    [Tags]  BuiltIn
    open browser   Http://www.amazon.co.uk  chrome

    run keyword and continue on failure   wait until page contains  This text doesnt exist

    LOG  ${some_suite_data}
    LOG  ${GLOBAL}
    LOG  ${SOME_GLOBAL_DATA}
    close browser

Repeat things
    repeat keyword   3 times  Say nothing
    LOG  ${some_suite_data}
    LOG  ${GLOBAL}
    LOG  ${SOME_GLOBAL_DATA}


*** Keywords ***
Say nothing
    log  Nothing is said