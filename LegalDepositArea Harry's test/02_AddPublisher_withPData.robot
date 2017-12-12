*** Settings ***
Resource  ../../Resources/Keywords.robot
Resource  ../../Resources/Database.robot
Resource  ../../Resources/PO/TopNav.robot
#Resource  ../../Resources/PO/HomePage.robot
Resource  ../../Resources/PO/LDAddaPublisherPage.robot
Resource  ../../Resources/PO/LDSearchforLicencesPage.robot
Suite Setup  LD Add Publisher Test Suite Setup
Test Setup  Legal Deposit Test Setup
Test Teardown  Publisher Portal Test Teardown
Suite Teardown  PLP Publisher Suite Teardown

*** Test Cases ***
User should be able to Add a New LD Publisher using Valid Data With same Data already in as Purchased
    [Tags]  S20/DCI-510  S25/DCI-562
    Click on 'Add a Publisher'
    Verify Add Publisher Heading is present
    Input Data into Publisher Name Box  ${PublisherName}
    Input Data into Publisher Code Box  ${PublisherCode}
    Click 'Save' Button
    Verify Search for Licences Header is Present
    Find Publisher Id Using PublisherName/PublisherCode from PUBLISHERS Table  ${PublisherName}  ${PublisherCode}  ${AcqLegalDeposit}

User should be able to Add a New LD Publisher using Second Valid Data With same Data already in as Purchased
    [Tags]  S20/DCI-510  S25/DCI-562
    Click on 'Add a Publisher'
    Verify Add Publisher Heading is present
    Input Data into Publisher Name Box  ${PublisherName2}
    Input Data into Publisher Code Box  ${PublisherCode2}
    Click 'Save' Button
    Verify Search for Licences Header is Present
    Find Publisher Id Using PublisherName/PublisherCode from PUBLISHERS Table  ${PublisherName2}  ${PublisherCode2}  ${AcqLegalDeposit}

User should be Unable to Add a Duplicate LD Publisher Name and Error Message Displayed With same Data already in as Purchased
    [Tags]  S20/DCI-510  S25/DCI-562
    Click on 'Add a Publisher'
    Verify Add Publisher Heading is present
    Input Data into Publisher Name Box  ${PublisherName}
    Input Data into Publisher Code Box  ${PublisherCode}
    Click 'Save' Button
    wait until page contains  ${PublisherExistsError}

User should be Unable to Add a Duplicate LD Publisher Code and Error Message Displayed With same Data already in as Purchased
    [Tags]  S20/DCI-510  S25/DCI-562
    Click on 'Add a Publisher'
    Verify Add Publisher Heading is present
    Input Data into Publisher Name Box  ${NewPublisherName}
    Input Data into Publisher Code Box  ${PublisherCode}
    Click 'Save' Button
    wait until page contains  ${PublisherCodeExistsError}
    Check Publisher has not been added to Publisher Table  ${NewPublisherName}  ${PublisherCode}  ${AcqLegalDeposit}



