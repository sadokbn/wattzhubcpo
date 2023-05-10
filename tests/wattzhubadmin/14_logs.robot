*** Settings ***
Documentation   Testing Logs in admin
Library         SeleniumLibrary

*** Variables ***
${xpath_logs}                                       //*[contains(text(),'Logs')]

${xpath_}
${xpath_}
${xpath_}
${xpath_}
${xpath_}

*** Keywords ***


*** Test Cases ***
testing logs
    Click Element                   ${xpath_logs}

