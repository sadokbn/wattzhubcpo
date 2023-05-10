*** Settings ***
Documentation       Data-driven testing
Library             SeleniumLibrary
Library             DataDriver      ../TestData/LoginData.csv
Resource            ../Resources/login_resources.robot
Suite Setup         open wattzhub admin
Suite Teardown      Close Browsers
Test Template       Invalid login

*** Keywords ***

Invalid login
    [Arguments]         ${email_admin}          ${password_admin}
    Input email         ${email_admin}
    Input password      ${password_admin}
    Click I accept the End-user License Agreement
    Click loging button
    Error message should be visible

*** Test Cases ***
LoginTestwithCsv using    ${email_admin}  and     ${password_admin}