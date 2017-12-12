*** Settings ***
Resource  ../../Resources/Keywords.robot
#Resource  ../../Resource/Database.robot
#Resource  ../../Resources/PO/HomePage.robot
Resource  ../../Resources/PO/TopNav.robot
Resource  ../../Resources/PO/LDSearchforLicencesPage.robot
Suite Setup  LD Edit Licencing Test Suite Setup with PData
Test Setup  Legal Deposit Test Setup
Test Teardown  Publisher Portal Test Teardown
Suite Teardown  PLP Licence Suite Teardown

*** Test Cases ***
User should be able to see All Licences for Selected Legal Deposit Publisher Only With same Data in as Purchased
    [Tags]  S20/DCI-497  S25/DCI-563
    Click on 'Search for Licences'
    Verify Search for Licences Header is Present
    Click Title/TitleId Clear Button
    Click Bib/Issn/Eissn Clear Button
    Select Publisher from Drop Down  ${SelectPublisher1}
    Check Page Contains All Added Licences for Publisher
    Click on 'Publisher Licence Portal' Home Page Link

User should be able to Search For LD Licence using Title Name Only With same Data in as Purchased
    [Tags]  S20/DCI-497  S25/DCI-563
    Verify Search for Licences Header is Present
    Click Title/TitleId Clear Button
    Click Bib/Issn/Eissn Clear Button
    Select Publisher from Drop Down  ${SelectPublisher1}
    Input Text Into 'Title' Search Box  ${TitleName}
    Click Title/TitleId Search Button
    Check Page Contains Six Licences Only  ${TitleName}
    Click on 'Publisher Licence Portal' Home Page Link

User should be able to Search For LD Licence using Title Id Only With same Data in as Purchased
    [Tags]  S20/DCI-497  S25/DCI-563
    Verify Search for Licences Header is Present
    Click Title/TitleId Clear Button
    Click Bib/Issn/Eissn Clear Button
    Select Publisher from Drop Down  ${SelectPublisher1}
    Input Text Into 'TitleID' Search Box  ${TitleID}
    Click Title/TitleId Search Button
    check page contains one licence  ${TitleID}
    Click on 'Publisher Licence Portal' Home Page Link

User should be able to Search For LD Licence using Combination of Title Name And Title Id With same Data in as Purchased
    [Tags]  S20/DCI-497  S25/DCI-563
    Verify Search for Licences Header is Present
    Click Title/TitleId Clear Button
    Click Bib/Issn/Eissn Clear Button
    Select Publisher from Drop Down  ${SelectPublisher1}
    Input Text Into 'Title' Search Box  ${TitleName}
    Input Text Into 'TitleID' Search Box  ${TitleID}
    Click Title/TitleId Search Button
    check page contains one licence  ${TitleID}
    Click on 'Publisher Licence Portal' Home Page Link

User should be able to Search For LD Licence using Aleph Bib Only With same Data in as Purchased
    [Tags]  S20/DCI-497  S25/DCI-563
    Verify Search for Licences Header is Present
    Click Title/TitleId Clear Button
    Click Bib/Issn/Eissn Clear Button
    Select Publisher from Drop Down  ${SelectPublisher1}
    Input Text Into 'Aleph Bib' Search Box  ${AlephBib}
    Click Bib/Issn/Eissn Search Button
    check page contains one licence  ${AlephBib}
    Click on 'Publisher Licence Portal' Home Page Link

User should be able to Search For LD Licence using Combination of Title Name And Aleph Bib With same Data in as Purchased
    [Tags]  S20/DCI-497  S25/DCI-563
    Verify Search for Licences Header is Present
    Click Title/TitleId Clear Button
    Click Bib/Issn/Eissn Clear Button
    Select Publisher from Drop Down  ${SelectPublisher1}
    Input Text Into 'Title' Search Box  ${TitleName}
    Input Text Into 'Aleph Bib' Search Box  ${AlephBib}
    Click Bib/Issn/Eissn Search Button
    check page contains one licence  ${AlephBib}
    Click on 'Publisher Licence Portal' Home Page Link

User should be able to Search For LD Licence using Issn Only With same Data in as Purchased
    [Tags]  S20/DCI-497  S25/DCI-563
    Verify Search for Licences Header is Present
    Click Title/TitleId Clear Button
    Click Bib/Issn/Eissn Clear Button
    Select Publisher from Drop Down  ${SelectPublisher1}
    Input Text Into 'Issn' Search Box  ${IssnLeft}  ${IssnRight}
    Click Bib/Issn/Eissn Search Button
    Check Page Contains one Licence  ${Issn}
    Click on 'Publisher Licence Portal' Home Page Link

User should be able to Search For LD Licence using Combination of Title Name And Issn With same Data in as Purchased
    [Tags]  S20/DCI-497  S25/DCI-563
    Verify Search for Licences Header is Present
    Click Title/TitleId Clear Button
    Click Bib/Issn/Eissn Clear Button
    Select Publisher from Drop Down  ${SelectPublisher1}
    Input Text Into 'Title' Search Box  ${TitleName}
    Input Text Into 'Issn' Search Box  ${IssnLeft}  ${IssnRight}
    Click Bib/Issn/Eissn Search Button
    check page contains one licence  ${Issn}
    Click on 'Publisher Licence Portal' Home Page Link

User should be able to Search For LD Licence using Eissn Only With same Data in as Purchased
    [Tags]  S20/DCI-497  S25/DCI-563
    Verify Search for Licences Header is Present
    Click Title/TitleId Clear Button
    Click Bib/Issn/Eissn Clear Button
    Select Publisher from Drop Down  ${SelectPublisher1}
    Input Text Into 'Eissn' Search Box  ${eIssnLeft}  ${eIssnRight}
    Click Bib/Issn/Eissn Search Button
    Check Page Contains one Licence  ${eIssn}
    Click on 'Publisher Licence Portal' Home Page Link

User should be able to Search For LD Licence using Combination of Title Name And Eissn With same Data in as Purchased
    [Tags]  S20/DCI-497  S25/DCI-563
    Verify Search for Licences Header is Present
    Click Title/TitleId Clear Button
    Click Bib/Issn/Eissn Clear Button
    Select Publisher from Drop Down  ${SelectPublisher1}
    Input Text Into 'Title' Search Box  ${TitleName}
    Input Text Into 'Eissn' Search Box  ${eIssnLeft}  ${eIssnRight}
    Click Bib/Issn/Eissn Search Button
    check page contains one licence  ${eIssn}
    Click on 'Publisher Licence Portal' Home Page Link

User should be able to Search For LD Licence using Data in all Search Fields With same Data in as Purchased
    [Tags]  S20/DCI-497  S25/DCI-563
    Verify Search for Licences Header is Present
    Click Title/TitleId Clear Button
    Click Bib/Issn/Eissn Clear Button
    Select Publisher from Drop Down  ${SelectPublisher1}
    Input Text Into 'Title' Search Box  ${FullRecordLicence[0]}
    Input Text Into 'TitleID' Search Box  ${FullRecordLicence[1]}
    Input Text Into 'Aleph Bib' Search Box  ${FullRecordLicence[2]}
    Input Text Into 'Issn' Search Box  ${FullTitleLIssn}  ${FullTitleRIssn}
    Input Text Into 'Eissn' Search Box  ${FullTitleLeIssn}  ${FullTitleReIssn}
    Click Bib/Issn/Eissn Search Button
    check page contains one licence  ${FullRecordLicence[2]}
    Click on 'Publisher Licence Portal' Home Page Link

User Searching for LD Licence that is not in Database should return no results With same Data in as Purchased
    [Tags]  S20/DCI-497  S25/DCI-563
    Verify Search for Licences Header is Present
    Click Title/TitleId Clear Button
    Click Bib/Issn/Eissn Clear Button
    Select Publisher from Drop Down  ${SelectPublisher1}
    Input Text Into 'Title' Search Box  This is not a real title
    Click Title/TitleId Search Button
    Verify page contains no rows and no results message is displayed
    Click on 'Publisher Licence Portal' Home Page Link

User Searching for LD Licence Should see all column headers and an Edit Link With same Data in as Purchased
    Verify Search for Licences Header is Present
    Click Title/TitleId Clear Button
    Click Bib/Issn/Eissn Clear Button
    Select Publisher from Drop Down  ${SelectPublisher1}
    Input Text Into 'Aleph Bib' Search Box  ${AlephBib}
    Click Bib/Issn/Eissn Search Button
    check page contains one licence  ${AlephBib}
    Check Page Contains All Column Headers
    Check Page Contains Licence Edit Link  ${AlephBib_Column}='${AlephBib}'  ${WebSite}${LDMode}  ${AcqLegalDeposit}
    Click on 'Publisher Licence Portal' Home Page Link