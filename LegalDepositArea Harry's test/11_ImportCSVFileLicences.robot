##THESE TESTS ARE NO LONGER VALID DUE TO THE PURCHASED SIDE DEVELOPMENT AND THE LD IMPORT DEEMED SURPLUS TO REQUIREMENTS

#*** Settings ***
#Resource  ../../Resources/Keywords.robot
#Resource  ../../Resources/Database.robot
#Resource  ../../Resources/PO/HomePage.robot
#Resource  ../../Resources/PO/LDImportPage.robot
#Resource  ../../Resources/PO/TopNav.robot
#Suite Setup  Import Licencing Test Suite Setup
#Test Setup  Legal Deposit Test Setup
#Suite Teardown  PLP Import Suite Teardown
#
#*** Test Cases ***
#User should be able to Import Licences from CSV file with Column Headers
#    [Tags]  S21/DCI-498
#    Click on 'Import Licences'
#    Verfiy Import Page Header is Present
#    Verify ignore header Checkbox is ticked
#    Click on Browse Button
#    Browse for and Select CSV File  ${CSVImportTest}
#    Verfiy Import Page Header is Present
#    Click on the 'Upload' Button
#    Verify Upload Results Header is Present
#    Verify all 10 licences successfully uploaded message displays
#    Click on 'Publisher Licence Portal' Home Page Link
#    Check Imported Licences appear in Database
#
#User should be able to Import Licences from CSV file without Column Headers
#    [Tags]  S21/DCI-498
#    Click on 'Import Licences'
#    Verfiy Import Page Header is Present
#    Click on ignore header row box
#    Verify ignore header Checkbox is not ticked
#    Click on Browse Button
#    Browse for and Select CSV File  ${CSVImportNoHeader}
#    Verfiy Import Page Header is Present
#    Click on the 'Upload' Button
#    Verify Upload Results Header is Present
#    Verify all 4 licences successfully uploaded message displays
#    Click on 'Publisher Licence Portal' Home Page Link
#    Check Imported Licences with no header appear in Database
#
#User should see an error when Importing CSV with Header and ignore header not selected, but valid licences should still be added
#    [Tags]  S21/DCI-498
#    Click on 'Import Licences'
#    Verfiy Import Page Header is Present
#    Click on ignore header row box
#    Verify ignore header Checkbox is not ticked
#    Click on Browse Button
#    Browse for and Select CSV File  ${CSVHeaderNoIgnore}
#    Verfiy Import Page Header is Present
#    Click on the 'Upload' Button
#    Verify Upload Results Header is Present
#    Verify all 4 licences successfully uploaded message displays
#    Verify Publisher not registered Header error message displays
#    Click on 'Publisher Licence Portal' Home Page Link
#    Check Imported Licences with header but ignore not selected appear in Database
#
#User should be able to Import CSV with duplicate Licences and only one of the duplicate licences is added
#    Click on 'Import Licences'
#    Verfiy Import Page Header is Present
#    Verify ignore header Checkbox is ticked
#    Click on Browse Button
#    Browse for and Select CSV File  ${CSVImportDupe}
#    Verfiy Import Page Header is Present
#    Click on the 'Upload' Button
#    Verify Upload Results Header is Present
#    Verify 1 licence successfully uploaded message displays
#    Click on 'Publisher Licence Portal' Home Page Link
#    Check only one Dupe Imported Licence appear in Database
#
#User should be Unable to Import Licence without a relevant publisher added
#    Click on 'Import Licences'
#    Verfiy Import Page Header is Present
#    Verify ignore header Checkbox is ticked
#    Click on Browse Button
#    Browse for and Select CSV File  ${CSVImportNoPub}
#    Verfiy Import Page Header is Present
#    Click on the 'Upload' Button
#    Verify Upload Results Header is Present
#    Verify 0 Licences uploaded message displays
#    Verify Publisher not registered error message displays
#    Click on 'Publisher Licence Portal' Home Page Link
#    Check Import Licences with No Publisher Registered do not appear in Database
#
#