*** Settings ***
Documentation
#Library  Dialogs  #Selenium2Library
Library  Selenium2Library
Library  DatabaseLibrary
#Resource   Resources/web/Common.robot
#Resource   Resources/web/Amazon.robot
#Test Setup  Common.Begin Web Test
#Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER} =  Chrome
${START_URL} =  HTTPS://WWW.AMAZON.COM
${SEARCH_TERM} =  Silly String

${DATABASE}         192.168.245.60
@{DB_LOGIN}         sa  Pa55word
${DATABASE_TITLE}   SheetMusicDirectCatalogue
*** Test Cases ***
user should be able to login
    #[Documentation]  basic info about test login
Logged out user can search for products
    [Tags]  smoke  web
    ${new_browser} =  Get Selection From User  Which browser?  Chrome  ie  firefox
    set global variable  ${BROWSER}  ${new_browser}
    Amazon.search for products
    open browser  http://www.amazon.co.uk  chrome
    click link  Hello. Sign in
    #input text  id=ap_email

Logged out user can add product to cart
    Amazon.Search for Products
    Execute manual step  do something manually!  It failed
    Amazon.select Product from search results
    Pause execution
    Amazon.Add Product to Cart

Connect to Licencing Database
    Connect To Database Using Custom Params    adodbapi    ('DRIVER={SQL Server};SERVER=${DATABASE},9433;DATABASE=${DATABASE_TITLE};UID=@{DB_LOGIN}[0];PWD=@{DB_LOGIN}[1]; APP=RIDE')
    #close all connections

*** Keywords ***
    login with valid credentials

Load
    go to  http:www.amazon.co.uk

Verify Page loaded
    wait until page contains  your amazon.com