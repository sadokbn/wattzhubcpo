*** Settings ***
Library         SeleniumLibrary
Resource        ../../Resources/LoginKeywords.robot

*** Variables ***
${browser1}                 Chrome
${urlwattzhub_admin}        https://sadok.cpo.beta.wattzhub.com/auth/login?returnUrl=%2Fstatistics
${email_admin}              sadok.bennahia@internship.continuousnet.com
${password_admin}           WwwBbb003.

*** Test Cases ***
LoginTest
    open wattzhub admin     ${urlwattzhub_admin}        ${browser1}
    Enter email             ${email_admin}
    Enter password          ${password_admin}
    Click I accept the End-user License Agreement
    Click SignIn
    Sleep    7s
    Verify successful login
    Close my browsers
