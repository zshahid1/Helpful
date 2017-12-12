*** Settings ***
Resource  ../../Resources/Keywords.robot
Resource  ../../Resources/Database.robot
Resource  ../../Resources/PO/TopNav.robot
Resource  ../../Resources/PO/LDAddaNewLicencePage.robot
Resource  ../../Resources/PO/LDSearchforLicencesPage.robot
Resource  ../../Resources/PO/LDEditLicencePage.robot
Suite Setup  LD Edit Licencing Test Suite Setup
Test Setup  Legal Deposit Test Setup
Test Teardown  Publisher Portal Test Teardown
Suite Teardown  PLP Licence Suite Teardown

*** Test Cases ***
User should be able to Edit Active Licence and make Inactive
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

User should be able to Edit Inactive Licence and make Active
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

User should be able to Edit Existing Licence Title Name
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

User should be able to Edit Existing Licence Title Id
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

User should be able to Edit Existing Licence Aleph Bib
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

User should be able to Edit Existing Licence Issn
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

User should be able to Edit Existing Licence eIssn
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

User should be Unable to Edit a Licence to not have a Title Name and Error Message Displayed
    [Tags]  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Search for Licence in Database and go to EDIT  ${Title_Id_Column} = '${FullRecordLicence[1]}' AND ${Title_Name_Column} = '${FullRecordLicence[0]}' AND ${AlephBib_Column} = '${FullRecordLicence[2]}' AND ${ISSN_Column} = '${FullRecordLicence[3]}' AND ${EISSN_Column} = '${FullRecordLicence[4]}' AND ${Active_Column} = 'False'  ${WebSite}${LDMode}  ${AcqLegalDeposit}
    Verify 'Edit Licence' Header Is Present
    Remove Text in Title Name Box
    Click Update Licence Button
    Verify Edit Licence - Missing Title Name Message has displayed
    Click on 'Publisher Licence Portal' Home Page Link
    Check Edited Licence Doesnt Exist in Table  ${PublisherName}  ${Title_Id_Column} = '${FullRecordLicence[1]}' AND ${Title_Name_Column} = 'NULL' AND ${AlephBib_Column} = '${FullRecordLicence[2]}' AND ${ISSN_Column} = '${FullRecordLicence[3]}' AND ${EISSN_Column} = '${FullRecordLicence[4]}' AND ${Active_Column} = 'False'   ${AcqLegalDeposit}

User should be Unable to Edit a Licence to not have a TitleId/AlephBib/Issn/Eissn and Error Message Displayed
    [Tags]  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Search for Licence in Database and go to EDIT  ${Title_Id_Column} = '${FullRecordLicence[1]}' AND ${Title_Name_Column} = '${FullRecordLicence[0]}' AND ${AlephBib_Column} = '${FullRecordLicence[2]}' AND ${ISSN_Column} = '${FullRecordLicence[3]}' AND ${EISSN_Column} = '${FullRecordLicence[4]}' AND ${Active_Column} = 'False'  ${WebSite}${LDMode}  ${AcqLegalDeposit}
    Verify 'Edit Licence' Header Is Present
    Remove Text in Title Id Box
    Remove Text in Aleph Bib Box
    Remove Text in ISSN Box
    Remove Text in EISSN Box
    Click Update Licence Button
    Verify Edit Licence - Missing Licence Details Message has displayed
    Click on 'Publisher Licence Portal' Home Page Link
    Check Edited Licence Doesnt Exist in Table  ${PublisherName}  ${Title_Id_Column} = 'NULL' AND ${Title_Name_Column} = '${FullRecordLicence[0]}' AND ${AlephBib_Column} = 'NULL' AND ${ISSN_Column} = 'NULL' AND ${EISSN_Column} = 'NULL' AND ${Active_Column} = 'False'  ${AcqLegalDeposit}

User should be Unable to Edit a Licence when set to InUse and Error Message Displayed
    [Tags]  S20/DCI-501  S25/DCI-563
    Verify Search for Licences Header is Present
    Select Publisher from Drop Down  ${SelectPublisher1}
    Licence Set to 'InUse', Search for Licence in Database and go to EDIT  ${Title_Id_Column} = '${TitleId2}' AND ${Title_Name_Column} = '${TitleName5}'  ${WebSite}${LDMode}  ${AcqLegalDeposit}
    Verify 'Edit Licence' Header Is Present
    Verify Edit Licence is Disabled Message has displayed
    Verify Click 'Update Licence' Button is Disabled
