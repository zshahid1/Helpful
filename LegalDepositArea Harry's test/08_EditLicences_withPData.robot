*** Settings ***
Resource  ../../Resources/Keywords.robot
Resource  ../../Resources/Database.robot
Resource  ../../Resources/PO/TopNav.robot
Resource  ../../Resources/PO/LDAddaNewLicencePage.robot
Resource  ../../Resources/PO/LDSearchforLicencesPage.robot
Resource  ../../Resources/PO/LDEditLicencePage.robot
Suite Setup  LD Edit Licencing Test Suite Setup with PData
Test Setup  Legal Deposit Test Setup
Test Teardown  Publisher Portal Test Teardown
Suite Teardown  PLP Licence Suite Teardown

*** Test Cases ***
User should be able to Edit Active Licence and make Inactive With same Data already in as Purchased
    [Tags]  S20/DCI-496  S20/DCI-501  S21/DCI-513  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Search for Licence in Database and go to EDIT  ${Title_Id_Column} = '${TitleID}' AND ${Title_Name_Column} = '${TitleName}'  ${WebSite}${LDMode}  ${AcqLegalDeposit}
    Verify 'Edit Licence' Header Is Present
    Click Active Tick Box
    Click Update Licence Button
    Verify Search for Licences Header is Present
    Click on 'Publisher Licence Portal' Home Page Link
    Check Edited Licence Exists in Table  ${PublisherName}  ${Title_Id_Column} = '${TitleID}' AND ${Title_Name_Column} = '${TitleName}' AND ${Active_Column} ='False'  ${AcqLegalDeposit}

User should be able to Edit Inactive Licence and make Active With same Data already in as Purchased
    [Tags]  S20/DCI-496  S20/DCI-501  S21/DCI-513  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Search for Licence in Database and go to EDIT  ${Title_Id_Column} = '${TitleID}' AND ${Title_Name_Column} = '${TitleName}'  ${WebSite}${LDMode}  ${AcqLegalDeposit}
    Verify 'Edit Licence' Header Is Present
    Click Active Tick Box
    Click Update Licence Button
    Verify Search for Licences Header is Present
    Click on 'Publisher Licence Portal' Home Page Link
    Check Edited Licence Exists in Table  ${PublisherName}  ${Title_Id_Column} = '${TitleID}' AND ${Title_Name_Column} = '${TitleName}' AND ${Active_Column} ='True'  ${AcqLegalDeposit}

User should be able to Edit Existing Licence Title Name With same Data already in as Purchased
    [Tags]  S20/DCI-501  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Search for Licence in Database and go to EDIT  ${Title_Name_Column} = '${TitleName}' AND ${Title_Id_Column} = '${TitleID}'  ${WebSite}${LDMode}  ${AcqLegalDeposit}
    Verify 'Edit Licence' Header Is Present
    Remove Text in Title Name Box
    Input Data into Title Name Box  ${ChangeTitleName}
    Click Update Licence Button
    Verify Search for Licences Header is Present
    Click on 'Publisher Licence Portal' Home Page Link
    Check Edited Licence Exists in Table  ${PublisherName}  ${Title_Name_Column} = '${ChangeTitleName}' AND ${Title_Id_Column} = '${TitleID}'  ${AcqLegalDeposit}

User should be able to Edit Existing Licence Title Id With same Data already in as Purchased
    [Tags]  S20/DCI-501  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Search for Licence in Database and go to EDIT  ${Title_Name_Column} = '${ChangeTitleName}' AND ${Title_Id_Column} = '${TitleID}'  ${WebSite}${LDMode}  ${AcqLegalDeposit}
    Verify 'Edit Licence' Header Is Present
    Remove Text in Title Id Box
    Input Data into Title Id Box  ${ChangeTitleId}
    Click Update Licence Button
    Verify Search for Licences Header is Present
    Click on 'Publisher Licence Portal' Home Page Link
    Check Edited Licence Exists in Table  ${PublisherName}  ${Title_Name_Column} = '${ChangeTitleName}' AND ${Title_Id_Column} = '${ChangeTitleId}'  ${AcqLegalDeposit}

User should be able to Edit Existing Licence Aleph Bib With same Data already in as Purchased
    [Tags]  S20/DCI-501  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Search for Licence in Database and go to EDIT  ${Title_Name_Column} = '${TitleName}' AND ${AlephBib_Column} = '${AlephBib}'  ${WebSite}${LDMode}  ${AcqLegalDeposit}
    Verify 'Edit Licence' Header Is Present
    Remove Text in Aleph Bib Box
    Input Data into Aleph Bib Box  ${ChangeAlephBib}
    Click Update Licence Button
    Verify Search for Licences Header is Present
    Click on 'Publisher Licence Portal' Home Page Link
    Check Edited Licence Exists in Table  ${PublisherName}  ${Title_Name_Column} = '${TitleName}' AND ${AlephBib_Column} = '${ChangeAlephBib}'  ${AcqLegalDeposit}

User should be able to Edit Existing Licence Issn With same Data already in as Purchased
    [Tags]  S20/DCI-501  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Search for Licence in Database and go to EDIT  ${Title_Name_Column} = '${TitleName}' AND ${ISSN_Column} = '${Issn}'  ${WebSite}${LDMode}  ${AcqLegalDeposit}
    Verify 'Edit Licence' Header Is Present
    Remove Text in ISSN Box
    Input Data into ISSN Box  ${ChangeIssn}
    Click Update Licence Button
    Verify Search for Licences Header is Present
    Click on 'Publisher Licence Portal' Home Page Link
    Check Edited Licence Exists in Table  ${PublisherName}  ${Title_Name_Column} = '${TitleName}' AND ${ISSN_Column} = '${ChangeIssn}'  ${AcqLegalDeposit}

User should be able to Edit Existing Licence eIssn With same Data already in as Purchased
    [Tags]  S20/DCI-501  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Search for Licence in Database and go to EDIT  ${Title_Name_Column} = '${TitleName}' AND ${EISSN_Column} = '${eIssn}'  ${WebSite}${LDMode}  ${AcqLegalDeposit}
    Verify 'Edit Licence' Header Is Present
    Remove Text in EISSN Box
    Input Data into EISSN Box  ${ChangeEissn}
    Click Update Licence Button
    Verify Search for Licences Header is Present
    Click on 'Publisher Licence Portal' Home Page Link
    Check Edited Licence Exists in Table  ${PublisherName}  ${Title_Name_Column} = '${TitleName}' AND ${EISSN_Column} = '${ChangeEissn}'  ${AcqLegalDeposit}
