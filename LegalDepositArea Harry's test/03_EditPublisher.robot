*** Settings ***
Resource  ../../Resources/Keywords.robot
Resource  ../../Resources/Database.robot
Resource  ../../Resources/PO/TopNav.robot
#Resource  ../../Resources/PO/HomePage.robot
Resource  ../../Resources/PO/LDSearchforLicencesPage.robot
Resource  ../../Resources/PO/LDEditPublisherPage.robot
Suite Setup  LD Edit Publisher Test Suite Setup
Test Setup  Legal Deposit Test Setup
Test Teardown  Publisher Portal Test Teardown
Suite Teardown  PLP Edit Publisher Suite Teardown

*** Test Cases ***
User should be able to Edit Existing LD Publishers Publisher Name
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

User should be able to Edit Existing LD Publishers Publisher Code
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

User should be Unable to Edit LD Publisher to not have Publisher Code
    Click on 'Search for Licences'
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectEditPublisher}
    Navigate to 'Edit This Publisher' Page
    Verify 'Edit Publisher' Header is present
    Remove Text in 'Publisher Code' Box
    Click Publisher 'Save' Button
    wait until page contains  ${EDIT_PublisherCodeEmptyError}
    Find Publisher Id Using PublisherName/PublisherCode from PUBLISHERS Table  ${EditPubName}  ${EditPubCode}  ${AcqLegalDeposit}

User should be Unable to Edit LD Publisher to not have Publisher Name
    Click on 'Search for Licences'
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectEditPublisher}
    Navigate to 'Edit This Publisher' Page
    Verify 'Edit Publisher' Header is present
    Remove Text in 'Publisher Name' Box
    Click Publisher 'Save' Button
    wait until page contains  ${EDIT_PublisherNameEmptyError}
    Find Publisher Id Using PublisherName/PublisherCode from PUBLISHERS Table  ${EditPubName}  ${EditPubCode}  ${AcqLegalDeposit}

User should be able to Edit LD Publisher to have a Publisher Name with any Value
    Click on 'Search for Licences'
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectEditPublisher}
    Navigate to 'Edit This Publisher' Page
    Verify 'Edit Publisher' Header is present
    Remove Text in 'Publisher Name' Box
    Input Text into 'Publisher Name' Box  ${PublisherNameSpecialChar}
    Click Publisher 'Save' Button
    Verify Search for Licences Header is Present
    Find Publisher Id Using PublisherName/PublisherCode from PUBLISHERS Table  ${PublisherNameSpecialChar}  ${EditPubCode}  ${AcqLegalDeposit}

#User should be Unable to Edit LD Publisher to have a Publisher Name with Digit
#    Click on 'Search for Licences'
#    Verify Search for Licences Header is Present
#    Select Publisher from Drop Down  ${SelectEditPublisher}
#    Navigate to 'Edit This Publisher' Page
#    Verify 'Edit Publisher' Header is present
#    Remove Text in 'Publisher Name' Box
#    Input Text into 'Publisher Name' Box  ${InvalidPublisherNameDigit}
#    Click Publisher 'Save' Button
#    wait until page contains  ${EDIT_PublisherNameCharError}
#    Check Publisher has not been added to Publisher Table  ${InvalidPublisherNameDigit}  ${EditPubCode}  ${AcqLegalDeposit}

#User should be Unable to Edit LD Publisher to have a Publisher Name with SpecialCharacter
#    Click on 'Search for Licences'
#    Verify Search for Licences Header is Present
#    Select Publisher from Drop Down  ${SelectEditPublisher}
#    Navigate to 'Edit This Publisher' Page
#    Verify 'Edit Publisher' Header is present
#    Remove Text in 'Publisher Name' Box
#    Input Text into 'Publisher Name' Box  ${InvalidPublisherNameSpecialChar}
#    Click Publisher 'Save' Button
#    wait until page contains  ${EDIT_PublisherNameCharError}
#    Check Publisher has not been added to Publisher Table  ${InvalidPublisherNameSpecialChar}  ${EditPubCode}  ${AcqLegalDeposit}