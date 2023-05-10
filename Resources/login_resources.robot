*** Settings ***
Documentation   login resources
Library         SeleniumLibrary

*** Variables ***
${browser1}                 Chrome
${urlwattzhub_admin}        https://sadok.cpo.beta.wattzhub.com/auth/login?returnUrl=%2Fstatistics
${id_email}                 id:email-field
${id_password}              id:password-field
${id_LicenseAgreement}      id:mat-checkbox-1-input
${xpath_signin}             //*[@id="sign-in-button"]
${xpath_admin admin}        //a[@class='collapsed']
${email_admin}              sadok.bennahia@internship.continuousnet.com
${password_admin}           WwwBbb003.
${xpath_Sign out}           //*[@id="collapseDetails"]/ul/li[2]/a
${xpath_}

*** Keywords ***
# open l'application wattzhub cpo
open wattzhub admin
    open browser    ${urlwattzhub_admin}    ${browser1}
    maximize browser window

Close Browsers
    Close All Browsers

Open login page
    Go To           ${urlwattzhub_admin}

Input email
    [Arguments]     ${email_admin}
    Input Text      ${id_email}             ${email_admin}

Input password
    [Arguments]     ${password_admin}
    Input Text      ${id_password}          ${password_admin}

Click I accept the End-user License Agreement
    Press Keys      ${id_LicenseAgreement}       \\13

Click loging button
    click button                    ${xpath_signin}

Click logout
    Click Element                   ${xpath_admin admin}
    Sleep    2s
    Click Element                   ${xpath_Sign out}

Dashboard page should be visible
    Page Should Contain    Dashboard

Error message should be visible
    Page Should Contain             Mauvais email ou mot de passe       Champs obligatoire
    Page Should Contain Element     id:mat-error-5                      message=Champs obligatoire
#    Run Keyword If     Page Should Contain  Mauvais email ou mot de passe
#    ...  AND
#    ...  Run Keyword If
#    ...  Page Should Contain Element  id:mat-error-5
#    ...  message=Champs obligatoire
