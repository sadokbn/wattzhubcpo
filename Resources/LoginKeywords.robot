*** Settings ***
Library         SeleniumLibrary
Variables       ../PageObjects/Locators.py


*** Keywords ***

# open l'application wattzhub cpo
open wattzhub admin
    [Arguments]     ${urlwattzhub_admin}        ${browser1}
    open browser    ${urlwattzhub_admin}        ${browser1}
    maximize browser window

Enter email
    [Arguments]     ${email_admin}
    Input Text      ${loginemail}             ${email_admin}

Enter password
    [Arguments]     ${password_admin}
    Input Text      ${loginpassword}          ${password_admin}

Click I accept the End-user License Agreement
    Press Keys      ${cxLicenseAgreement}       \\13

Click SignIn
    click button                    ${btnsignIn}

Verify successful login
    Title Should Be                 Admin by WattzHub CPO

Close my browsers
    Close All Browsers