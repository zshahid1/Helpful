*** Settings ***
Resource  ../../Resources/Keywords.robot
Resource  ../../Resources/Database.robot
#Resource  ../../Resources/PO/TopNav.robot
#Resource  ../../Resources/PO/HomePage.robot
Resource  ../../Resources/PO/LDSearchforLicencesPage.robot
Resource  ../../Resources/PO/LDAddaNewLicencePage.robot
#Resource  ../../Resources/PO/LDEditLicencePage.robot
Suite Setup  Licencing Test Suite Setup
Test Setup  Legal Deposit Test Setup
Test Teardown  Publisher Portal Test Teardown
Suite Teardown  PLP Licence Suite Teardown

*** Test Cases ***
User should be Unable to Add a Licence with TitleName only and Error Message Displayed
    [Tags]  S21/DCI-513  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Click Save Button
    Verify Add Licence - Missing Licence Details Message has displayed

User should be Unable to Add a Licence without TitleName and Error Message Displayed
    [Tags]  S21/DCI-513  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Aleph Bib Box  ${AlephBib}
    Click Save Button
    Verify Add Licence - Title Name Missing Error Message is Displayed

#User should be Unable to Add a Licence without TitleName and Error Message Displayed
#    Verify Search for Licences Header is Present
#    Select Publisher from Drop Down  ${SelectPublisher1}
#    Navigate to Add a New Licence Page
#    Verify Add Licence Header is Present
#    Input Data into Aleph Bib Box  ${AlephBib2}
#    Click Save Button
#    Verify Search for Licences Header is Present
#    Check Added Licence Exists in Table  ${PublisherName} ${Title_Name_Column} IS NULL AND ${AlephBib_Column} = '${AlephBib2}'  ${AcqLegalDeposit}

User should be Unable to Add a Licence with TitleName But Bib not 9 Digits and Error Message Displayed
    [Tags]  S21/DCI-513  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into Aleph Bib Box  ${InvalidNumberAlephBib}
    Click Save Button
    Verify Add Licence - Aleph Bib is too short Message has displayed

User should be Unable to Add a Licence with TitleName But Bib Contains Character and Error Message Displayed
    [Tags]  S21/DCI-513  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into Aleph Bib Box  ${InvalidCharAlephBib}
    Click Save Button
    Verify Add Licence - Aleph Bib must be all numbers Message has displayed

User should be Unable to Add a Licence with TitleName But Invalid Issn And Error Message Displayed
    [Tags]  S21/DCI-513  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into ISSN Box  ${InvalidIssn}
    Click Save Button
    Verify Add Licence - ISSN Incorrect Format Message has displayed

User should be Unable to Add a Licence with TitleName But Invalid Issn Z Char And Error Message Displayed
    [Tags]  S21/DCI-513  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into ISSN Box  ${InvalidIssnChar}
    Click Save Button
    Verify Add Licence - ISSN Incorrect Format Message has displayed

User should be Unable to Add a Licence with TitleName but Invalid eIssn And Error Message Displayed
    [Tags]  S21/DCI-513  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into EISSN Box  ${InvalideIssn}
    Click Save Button
    Verify Add Licence - EISSN Incorrect Format Message has displayed

User should be Unable to Add a Licence with TitleName but Invalid eIssn Z Char And Error Message Displayed
    [Tags]  S21/DCI-513  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into EISSN Box  ${InvalideIssnChar}
    Click Save Button
    Verify Add Licence - EISSN Incorrect Format Message has displayed

User should be able to add Licence with Valid TitleName and TitleID
    [Tags]  S21/DCI-513  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into Title Id Box  ${TitleID}
    Click Save Button
    Verify Search for Licences Header is Present
    Check Added Licence Exists in Table  ${PublisherName}  ${Title_Id_Column} = '${TitleID}' AND ${Title_Name_Column} = '${TitleName}'  ${AcqLegalDeposit}

User should be able to add Licence with Valid TitleName and Aleph Bib
    [Tags]  S21/DCI-513  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into Aleph Bib Box  ${AlephBib}
    Click Save Button
    Verify Search for Licences Header is Present
    Check Added Licence Exists in Table  ${PublisherName}  ${AlephBib_Column} = '${AlephBib}' AND ${Title_Name_Column} = '${TitleName}'  ${AcqLegalDeposit}

User should be able to add Licence with Valid TitleName and Issn
    [Tags]  S21/DCI-513  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into ISSN Box  ${Issn}
    Click Save Button
    Verify Search for Licences Header is Present
    Check Added Licence Exists in Table  ${PublisherName}  ${ISSN_Column} = '${Issn}' AND ${Title_Name_Column} = '${TitleName}'  ${AcqLegalDeposit}

User should be able to add Licence with Valid TitleName and Issn ending with X
    [Tags]  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into ISSN Box  ${IssnX}
    Click Save Button
    Verify Search for Licences Header is Present
    Check Added Licence Exists in Table  ${PublisherName}  ${ISSN_Column} = '${IssnX}' AND ${Title_Name_Column} = '${TitleName}'  ${AcqLegalDeposit}

User should be able to add Licence with Valid TitleName and eIssn
    [Tags]  S21/DCI-513  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into EISSN Box  ${eIssn}
    Click Save Button
    Verify Search for Licences Header is Present
    Check Added Licence Exists in Table  ${PublisherName}  ${EISSN_Column} = '${eIssn}' AND ${Title_Name_Column} = '${TitleName}'  ${AcqLegalDeposit}

User should be able to add Licence with Valid TitleName and eIssn ending with X
    [Tags]  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into EISSN Box  ${eIssnX}
    Click Save Button
    Verify Search for Licences Header is Present
    Check Added Licence Exists in Table  ${PublisherName}  ${EISSN_Column} = '${eIssnX}' AND ${Title_Name_Column} = '${TitleName}'  ${AcqLegalDeposit}

User should be able to add Licence with Valid TitleName, All Fields Completed and set to Deactivated
    [Tags]  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${FullRecordLicence[0]}
    Input Data into Title Id Box  ${FullRecordLicence[1]}
    Input Data into Aleph Bib Box  ${FullRecordLicence[2]}
    Input Data into ISSN Box  ${FullRecordLicence[3]}
    Input Data into EISSN Box  ${FullRecordLicence[4]}
    Click Active Tick Box
    Click Save Button
    Verify Search for Licences Header is Present
    Check Added Licence Exists in Table  ${PublisherName}  ${Title_Id_Column} = '${FullRecordLicence[1]}' AND ${Title_Name_Column} = '${FullRecordLicence[0]}' AND ${AlephBib_Column} = '${FullRecordLicence[2]}' AND ${ISSN_Column} = '${FullRecordLicence[3]}' AND ${EISSN_Column} = '${FullRecordLicence[4]}' AND ${Active_Column} = 'False'  ${AcqLegalDeposit}

User should be Unable to Add Duplicate TitleID For Same Publisher And Error Message Displayed
    [Tags]  S20/DCI-501  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into Title Id Box  ${TitleID}
    Click Save Button
    Verify Add Licence - Duplicate Title Id for Publisher Message has displayed

User should be Unable to Add Duplicate Bib For Same Publisher And Error Message Displayed
    [Tags]  S20/DCI-501  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into Aleph Bib Box  ${AlephBib}
    Click Save Button
    Verify Add Licence - Duplicate Aleph Bib for Publisher Message has displayed

User should be Unable to Add Duplicate Issn For Same Publisher And Error Message Displayed
    [Tags]  S20/DCI-501  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into ISSN Box  ${Issn}
    Click Save Button
    Verify Add Licence - Duplicate Issn for Publisher Message has displayed

User should be Unable to Add Duplicate eIssn For Same Publisher And Error Message Displayed
    [Tags]  S20/DCI-501  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into EISSN Box  ${eIssn}
    Click Save Button
    Verify Add Licence - Duplicate Eissn for Publisher Message has displayed

User should be able to add Duplicate TitleID For Different Publisher
    [Tags]  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher2}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into Title Id Box  ${TitleID}
    Click Save Button
    Verify Search for Licences Header is Present
    Check Added Licence Exists in Table  ${PublisherName2}  ${Title_Id_Column} = '${TitleID}' AND ${Title_Name_Column} = '${TitleName}'  ${AcqLegalDeposit}

User should be able to add Duplicate Bib For Different Publisher
    [Tags]  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher2}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into Aleph Bib Box  ${AlephBib}
    Click Save Button
    Verify Search for Licences Header is Present
    Check Added Licence Exists in Table  ${PublisherName2}  ${AlephBib_Column} = '${AlephBib}' AND ${Title_Name_Column} = '${TitleName}'  ${AcqLegalDeposit}

User should be able to add Duplicate Issn For Different Publisher
    [Tags]  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher2}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into ISSN Box  ${Issn}
    Click Save Button
    Verify Search for Licences Header is Present
    Check Added Licence Exists in Table  ${PublisherName2}  ${ISSN_Column} = '${Issn}' AND ${Title_Name_Column} = '${TitleName}'  ${AcqLegalDeposit}

User should be able to add Duplicate eIssn For Different Publisher
    [Tags]  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher2}
    Navigate to Add a New Licence Page
    Verify Add Licence Header is Present
    Input Data into Title Name Box  ${TitleName}
    Input Data into EISSN Box  ${eIssn}
    Click Save Button
    Verify Search for Licences Header is Present
    Check Added Licence Exists in Table  ${PublisherName2}  ${EISSN_Column} = '${eIssn}' AND ${Title_Name_Column} = '${TitleName}'  ${AcqLegalDeposit}
