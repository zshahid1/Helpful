*** Settings ***
Resource  ../../Resources/Keywords.robot
Resource  ../../Resources/Database.robot
Resource  ../../Resources/PO/TopNav.robot
#Resource  ../../Resources/PO/HomePage.robot
Resource  ../../Resources/PO/LDSearchforLicencesPage.robot
Resource  ../../Resources/PO/LDEditPublisherPage.robot
Suite Setup  LD Edit Publisher Test Suite Setup with PData
Test Setup  Legal Deposit Test Setup
Test Teardown  Publisher Portal Test Teardown
Suite Teardown  PLP Edit Publisher Suite Teardown

*** Test Cases ***
User should be able to Edit Existing LD Publishers Publisher Name With same Data already in as Purchased
    Click on 'Search for Licences'
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to 'Edit This Publisher' Page
    Verify 'Edit Publisher' Header is present
    Remove Text in 'Publisher Name' Box
    Input Text into 'Publisher Name' Box  ${EditPubName}
    Click Publisher 'Save' Button
    Verify Search for Licences Header is Present
    Find Publisher Id Using PublisherName/PublisherCode from PUBLISHERS Table  ${EditPubName}  ${PublisherCode}  ${AcqLegalDeposit}

User should be able to Edit Existing LD Publishers Publisher Code With same Data already in as Purchased
    Click on 'Search for Licences'
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectEditPublisher}
    Navigate to 'Edit This Publisher' Page
    Verify 'Edit Publisher' Header is present
    Remove Text in 'Publisher Code' Box
    Input Text into 'Publisher Code' Box  ${EditPubCode}
    Click Publisher 'Save' Button
    Verify Search for Licences Header is Present
    Find Publisher Id Using PublisherName/PublisherCode from PUBLISHERS Table  ${EditPubName}  ${EditPubCode}  ${AcqLegalDeposit}
