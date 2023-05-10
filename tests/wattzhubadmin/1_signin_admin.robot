*** Settings ***
Documentation   Testing Sign in in admin
Library         SeleniumLibrary

*** Variables ***
${browser1}                 Chrome
${urlwattzhub_admin}        https://sadok.cpo.beta.wattzhub.com/auth/login?returnUrl=%2Fstatistics
${email_admin}              sadok.bennahia@internship.continuousnet.com
${password_admin}           WwwBbb003.
${id_email}                 id:email-field
${id_password}              id:password-field
${id_LicenseAgreement}      id:mat-checkbox-1-input
${xpath_signin}             //*[@id="sign-in-button"]

*** Keywords ***
# open l'application wattzhub cpo
open wattzhub admin
    open browser    ${urlwattzhub_admin}    ${browser1}
    maximize browser window
# écrire l'émail el le mot de passe
Pass email_admin and password_admin
    [Arguments]    ${email_admin}           ${password_admin}
    press keys     ${id_email}              ${email_admin}
    press keys     ${id_password}           ${password_admin}

*** Test Cases ***
sign in admin
    [Tags]    sign
    Set Selenium Timeout    10s
    open wattzhub admin
    wait until page contains element            ${id_email}
    # Entering Email and password_admin
    Pass email_admin and password_admin      ${email_admin}     ${password_admin}
    # Selecting I accept the End-user License Agreement
    Press Keys                      ${id_LicenseAgreement}       \\13
    checkbox should be selected     ${id_LicenseAgreement}
    # Click on Sign in
    click button                    ${xpath_signin}
    sleep   7s
    # check if sign in succeeds
    Wait Until Page Contains        Dashboard
#    Wait Until Element Is Visible  //*[contains(text(),'Dashboard')]  timeout=5
    Title Should Be                 Admin by WattzHub CPO


