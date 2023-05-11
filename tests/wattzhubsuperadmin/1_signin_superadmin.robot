*** Settings ***
Documentation   Testing Sign in in super admin
Library    SeleniumLibrary
Documentation
*** Variables ***
${browser1}                 Chrome
${urlwattzhub_superadmin}   https://cpo.beta.wattzhub.com/auth/login?returnUrl=%2Fstatistics
${username_superadmin}      sadok.bennahia@internship.continuousnet.com
${password_superadmin}      Sadok.bennahia123
${id_email}                 id:email-field
${id_password}              id:password-field
${id_LicenseAgreement}      id:mat-checkbox-1-input
${xpath_signin}             //*[@id="sign-in-button"]

*** Keywords ***
# open l'application wattzhub cpo
open wattzhub super admin
    open browser    ${urlwattzhub_super admin}    ${browser1}
    maximize browser window
# écrire l'émail el le mot de passe
Pass username_superadmin and password_superadmin
    [Arguments]    ${username_superadmin}       ${password_superadmin}
    press keys     ${id_email}       ${username_superadmin}
    press keys     ${id_password}    ${password_superadmin}

*** Test Cases ***
sign in super admin
    [Tags]    sign
    Set Selenium Timeout    10s
    open wattzhub super admin
    wait until page contains element    ${id_email}
    # Entering Email and password_superadmin
    Pass username_superadmin and password_superadmin    ${username_superadmin}     ${password_superadmin}
    # Selecting I accept the End-user License Agreement
    Press Keys     ${id_LicenseAgreement}       \\13
    checkbox should be selected    ${id_LicenseAgreement}
    # Click on Sign in
    click button    ${xpath_signin}
    sleep    7s
    # check if sign in succeeds
    wait until page contains    Organisations
    Title Should Be             WattzHub CPO