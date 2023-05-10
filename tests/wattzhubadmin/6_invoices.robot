*** Settings ***
Documentation   Testing Invoices in admin
Library         SeleniumLibrary

*** Variables ***
${xpath_invoices}                       //*[contains(text(),'Invoices')]
${xpath_invoices Date}                  //*[@id="mat-input-115"]
${invoices Date}                        Jan 1, 2023 12:00 AM - Apr 23, 2023 11:59 PM
${xpath_invoices Status}                //*[@id="mat-select-66"]
${xpath_invoices users}                 //*[@id="mat-input-146"]
${xpath_invoices users table}           //*[@id="cdk-overlay-29"]
${xpath_invoices users table exit}      //*[@id="mat-dialog-20"]/ng-component/div/div/div/button[2]
${xpath_invoices search}                //*[@id="mat-input-144"]
${invoices_search}                      invoices 1
${xpath_}
${xpath_}
${xpath_}
${xpath_}
${xpath_}
${xpath_}
${xpath_}
${xpath_}
${xpath_}
${xpath_}
${xpath_}
${xpath_}

*** Keywords ***

Testing Status
    [Arguments]                     ${xpath_invoices Status}                  ${xpath_invoices}
    Press Keys                      ${xpath_invoices Status}                      \\13
    Select From List By Label       ${xpath_invoices Status}                 Paid
    ${RS}=  Get Element Attribute   ${xpath_invoices Status}                      aria-activedescendant
    Should Be Equal As Strings      ${RS}         mat-option-371
    Double Click Element            ${xpath_invoices}
    Press Keys                      ${xpath_invoices Status}                      \\13
    Select From List By Label       ${xpath_invoices Status}                 Paid
    Select From List By Label       ${xpath_invoices Status}                 Unpaid
    Double Click Element            ${xpath_invoices}
    Page Should Contain             Paid (+1)

*** Test Cases ***
tester invoices
    Press Keys                      ${xpath_invoices}       \\13
    Press Keys                      ${xpath_invoices Date}                   ${invoices Date}
    Testing Status                  ${xpath_invoices Status}                       ${xpath_invoices}
    Press Keys                      ${xpath_invoices users}                          \\13
    Page Should Contain Element     ${xpath_invoices users table}
    Press Keys                      ${xpath_invoices users table exit}               \\13
    press keys                      ${xpath_invoices search}                 ${invoices_search}

