*** Settings ***
Resource  ../../Resources/Keywords.robot
Resource  ../../Resources/Database.robot
#Resource  ../../Resources/PO/TopNav.robot
#Resource  ../../Resources/PO/HomePage.robot
Resource  ../../Resources/PO/LDSearchforLicencesPage.robot
Resource  ../../Resources/PO/LDAddaNewLicencePage.robot
#Resource  ../../Resources/PO/LDEditLicencePage.robot
Suite Setup  LD Licencing Test Suite Setup with PData
Test Setup  Legal Deposit Test Setup
Test Teardown  Publisher Portal Test Teardown
Suite Teardown  PLP Licence Suite Teardown

*** Test Cases ***
User should be able to add Licence with Valid TitleName and TitleID With same Data already in as Purchased
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

User should be able to add Licence with Valid TitleName and Aleph Bib With same Data already in as Purchased
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

User should be able to add Licence with Valid TitleName and Issn With same Data already in as Purchased
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

User should be able to add Licence with Valid TitleName and Issn ending with X With same Data already in as Purchased
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

User should be able to add Licence with Valid TitleName and eIssn With same Data already in as Purchased
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

User should be able to add Licence with Valid TitleName and eIssn ending with X With same Data already in as Purchased
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

User should be able to add Licence with Valid TitleName, All Fields Completed and set to Deactivated With same Data already in as Purchased
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
    Check Added Licence Exists in Table  ${PublisherName}  ${Title_Id_Column} = '${FullRecordLicence[1]}' AND ${Title_Name_Column} = '${FullRecordLicence[0]}' AND ${AlephBib_Column} = '${FullRecordLicence[2]}' AND ${ISSN_Column} = '${FullRecordLicence[3]}' AND ${EISSN_Column} = '${FullRecordLicence[4]}' AND ${Active_Column} = 'False'   ${AcqLegalDeposit}

User should be able to add Duplicate TitleID For Different Publisher With same Data already in as Purchased
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

User should be able to add Duplicate Bib For Different Publisher With same Data already in as Purchased
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

User should be able to add Duplicate Issn For Different Publisher With same Data already in as Purchased
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

User should be able to add Duplicate eIssn For Different Publisher With same Data already in as Purchased
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
