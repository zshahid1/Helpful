*** Settings ***
Resource  ../../Resources/Keywords.robot
Resource  ../../Resources/Database.robot
Resource  ../../Resources/PO/TopNav.robot
#Resource  ../../Resources/PO/HomePage.robot
Resource  ../../Resources/PO/LDAddaPublisherPage.robot
Resource  ../../Resources/PO/LDSearchforLicencesPage.robot
Suite Setup  Open Publisher Licence Portal
Test Setup  Legal Deposit Test Setup
Test Teardown  Publisher Portal Test Teardown
Suite Teardown  PLP Publisher Suite Teardown

*** Test Cases ***
User should be able to Add a New LD Publisher using Valid Data
    [Tags]  S20/DCI-510  S25/DCI-562
    Click on 'Add a Publisher'
    Verify Add Publisher Heading is present
    Input Data into Publisher Name Box  ${PublisherName}
    Input Data into Publisher Code Box  ${PublisherCode}
    Click 'Save' Button
    Verify Search for Licences Header is Present
    Find Publisher Id Using PublisherName/PublisherCode from PUBLISHERS Table  ${PublisherName}  ${PublisherCode}  ${AcqLegalDeposit}

User should be able to Add a New LD Publisher using Second Valid Data
    [Tags]  S20/DCI-510  S25/DCI-562
    Click on 'Add a Publisher'
    Verify Add Publisher Heading is present
    Input Data into Publisher Name Box  ${PublisherName2}
    Input Data into Publisher Code Box  ${PublisherCode2}
    Click 'Save' Button
    Verify Search for Licences Header is Present
    Find Publisher Id Using PublisherName/PublisherCode from PUBLISHERS Table  ${PublisherName2}  ${PublisherCode2}  ${AcqLegalDeposit}

User should be Unable to Add a Duplicate LD Publisher Name and Error Message Displayed
    [Tags]  S20/DCI-510  S25/DCI-562
    Click on 'Add a Publisher'
    Verify Add Publisher Heading is present
    Input Data into Publisher Name Box  ${PublisherName}
    Input Data into Publisher Code Box  ${PublisherCode}
    Click 'Save' Button
    wait until page contains  ${PublisherExistsError}

User should be Unable to Add a Duplicate LD Publisher Code and Error Message Displayed
    [Tags]  S20/DCI-510  S25/DCI-562
    Click on 'Add a Publisher'
    Verify Add Publisher Heading is present
    Input Data into Publisher Name Box  ${NewPublisherName}
    Input Data into Publisher Code Box  ${PublisherCode}
    Click 'Save' Button
    wait until page contains  ${PublisherCodeExistsError}
    Check Publisher has not been added to Publisher Table  ${NewPublisherName}  ${PublisherCode}  ${AcqLegalDeposit}

User should be Unable to Add a New LD Publisher without a Publisher Code and Error Message Displayed
    [Tags]  S20/DCI-510  S25/DCI-562
    Click on 'Add a Publisher'
    Verify Add Publisher Heading is present
    Input Data into Publisher Name Box  ${PublisherName}
    Click 'Save' Button
    wait until page contains  ${PublisherCodeEmptyError}
    Check Publisher has not been added to Publisher Table  ${PublisherName}  NULL  ${AcqLegalDeposit}

User should be Unable to Add a New LD Publisher without a Publisher Name and Error Message Displayed
    [Tags]  S20/DCI-510  S25/DCI-562
    Click on 'Add a Publisher'
    Verify Add Publisher Heading is present
    Input Data into Publisher Code Box  ${PublisherCode}
    Click 'Save' Button
    wait until page contains  ${PublisherNameEmptyError}
    Check Publisher has not been added to Publisher Table  NULL  ${PublisherCode}  ${AcqLegalDeposit}

User should be able to Add A New LD Publisher with any Value in PublisherName
    Click on 'Add a Publisher'
    Verify Add Publisher Heading is present
    Input Data into Publisher Name Box  ${PublisherNameSpecialChar}
    Input Data into Publisher Code Box  ${PublisherCode3}
    Click 'Save' Button
    Verify Search for Licences Header is Present
    Find Publisher Id Using PublisherName/PublisherCode from PUBLISHERS Table  ${PublisherNameSpecialChar}  ${PublisherCode3}  ${AcqLegalDeposit}

#User should be Unable to Add a New LD Publisher with Digit in PublisherName and Error Message Displayed
#    [Tags]  S20/DCI-510  S25/DCI-562
#    Click on 'Add a Publisher'
#    Verify Add Publisher Heading is present
#    Input Data into Publisher Name Box  ${InvalidPublisherNameDigit}
#    Input Data into Publisher Code Box  ${PublisherCode}
#    Click 'Save' Button
#    wait until page contains  ${PublisherNameCharError}
#    Check Publisher has not been added to Publisher Table  ${InvalidPublisherNameDigit}  ${PublisherCode}  ${AcqLegalDeposit}

#User should be Unable to Add a New LD Publisher with SpecialChar in PublisherName and Error Message Displayed
#    [Tags]  S20/DCI-510  S25/DCI-562
#    Click on 'Add a Publisher'
#    Verify Add Publisher Heading is present
#    Input Data into Publisher Name Box  ${InvalidPublisherNameSpecialChar}
#    Input Data into Publisher Code Box  ${PublisherCode}
#    Click 'Save' Button
#    wait until page contains  ${PublisherNameCharError}
#    Check Publisher has not been added to Publisher Table  ${InvalidPublisherNameSpecialChar}  ${PublisherCode}  ${AcqLegalDeposit}

