*** Settings ***
Documentation       Data-driven testing
Library             SeleniumLibrary
Resource            ../../Resources/login_resources.robot
Suite Setup         open wattzhub admin
Suite Teardown      Close Browsers
Test Template       Invalid login
*** Variables ***


*** Keywords ***
Invalid login
    [Arguments]         ${email_admin}          ${password_admin}
    Input email         ${email_admin}
    Input password      ${password_admin}
    Click I accept the End-user License Agreement
    Click loging button
    Sleep    2s
    Error message should be visible

*** Test Cases ***              email_admin                 password_admin
Right email empty password      ${email_admin}              ${EMPTY}
Right email wrong password      ${email_admin}              azerty
wrong email right password      sadok@continuousnet.com     ${password_admin}
wrong email empty password      sadok@continuousnet.com     ${EMPTY}
wrong email wrong password      sadok@continuousnet.com     azerty

