*** Settings ***
Documentation   Testing rfid cards in admin
Library         SeleniumLibrary

*** Variables ***
${xpath_rfid cards}                                 //*[contains(text(),'RFID Cards')]
${xpath_rfid}                                       //*[@id="mat-tab-label-18-0"]
${xpath_rfid create}                                //*[@id="mat-tab-content-18-0"]/div/app-tags-list/app-table/div/div[1]/div[1]/button[1]
${xpath_rfid card rfid}                             //*[@id="mat-input-58"]
${rfid}                                             RFID1
${xpath_visual rfid}                                //*[@id="mat-input-59"]
${visual rfid}                                      rfid1
${xpath_rfid description}                           //*[@id="mat-input-60"]
${rfid description}                                 first rfid
${xpath_rfid create user}                           //*[@id="mat-input-61"]
${xpath_rfid create user search}                    //*[@id="mat-input-63"]
${rfid create user search}                          ADMIN
${xpath_rfid create select user admin}              //*[@id="mat-checkbox-10"]
${xpath_rfid create select user submit}             //*[@id="mat-dialog-2"]/ng-component/div/div/div/button[1]
${xpath_rfid card status}                           //*[@id="mat-select-44"]
${xpath_rfid card status inactive}                  //*[@id="mat-option-45"]
${xpath_rfid card status active}                    //*[@id="mat-option-44"]
${xpath_default rfid card}                          //*[@id="mat-checkbox-6"]/label/span[1]
${xpath_rfid card of eMsp}                          //*[@id="mat-checkbox-7"]/label/span[1]
${xpath_rfid create save}                           //button[@class='mat-focus-indicator mat-icon-button mat-button-base ng-star-inserted']
${xpath_rfid cards import}                          //*[@id="mat-tab-content-0-0"]/div/app-tags-list/app-table/div/div[1]/div[1]/button[3]
${xpath_rfid cards import exit}                     //*[@id="mat-dialog-4"]/ng-component/div/div/div/button[2]
${xpath_rfid cards export}                          //*[@id="mat-tab-content-0-0"]/div/app-tags-list/app-table/div/div[1]/div[1]/button[4]
${xpath_rfid cards export No}                       //*[contains(text(),'No')]
${xpath_rfid cards export Yes}                      //*[contains(text(),'Yes')]
${xpath_rfid owner}                                 //*[@id="mat-select-40"]
${xpath_rfid Status}                                //*[@id="mat-select-2"]

${xpath_rfid user}                                  //*[@id="mat-input-57"]
${xpath_rfid user search}                           //*[@id="mat-input-72"]
${rfid user search}                                 ADMIN
${xpath_rfid select user admin}                     //*[@id="mat-checkbox-27"]/label/span[1]
${xpath_rfid select user submit}                    //*[@id="mat-dialog-14"]/ng-component/div/div/div/button[1]

${xpath_rfid search}                                //*[@id="mat-input-56"]
${rfid search}                                      RFID1
${xpath_select RFID1}                               //*[@id="mat-checkbox-29"]/label/span[1]
${xpath_rfid delete}                                //*[@id="mat-tab-content-0-0"]/div/app-tags-list/app-table/div/div[1]/div[1]/button[5]
${xpath_rfid delete Yes}                            //*[contains(text(),'Yes')]
${xpath_}
${xpath_}
${xpath_}
${xpath_}
${xpath_}
${xpath_}
${xpath_}

*** Keywords ***

Create rfid
    Press Keys                      ${xpath_rfid create}                    \\13
    Press Keys                      ${xpath_rfid card rfid}                 ${rfid}
    Press Keys                      ${xpath_visual rfid}                    ${visual rfid}
    Press Keys                      ${xpath_rfid description}               ${rfid description}
    Click Element                   ${xpath_rfid create user}
    Press Keys                      ${xpath_rfid create user search}        ${rfid create user search}
    Press Keys                      ${xpath_rfid create select user admin}              \\13
    Click Element                   ${xpath_rfid create select user submit}
    Click Element                   ${xpath_rfid card status}
    Click Element                   ${xpath_rfid card status inactive}
    Click Element                   ${xpath_rfid card status}
    Click Element                   ${xpath_rfid card status active}
    Press Keys                      ${xpath_default rfid card}             \\13
    Press Keys                      ${xpath_rfid card of eMsp}             \\13
    Press Keys                      ${xpath_rfid card of eMsp}             \\13
    Click Element                   ${xpath_rfid create save}

Testing Owner
    [Arguments]                     ${xpath_rfid owner}                  ${xpath_rfid}
    Press Keys                      ${xpath_rfid owner}                  \\13
    ${RO}=  Get Element Attribute   ${xpath_rfid owner}                  aria-expanded
    Should Be Equal As Strings      ${RO}                           true
    Select From List By Label       ${xpath_rfid owner}                  Current Organization
    Double Click Element            ${xpath_rfid}
    page should contain             Current Organization
    Press Keys                      ${xpath_rfid owner}                  \\13
    Select From List By Label       ${xpath_rfid owner}                  External Organization
    Double Click Element            ${xpath_rfid}
    Page Should Contain             External Organization
    Press Keys                      ${xpath_rfid owner}                  \\13
    Select From List By Label       ${xpath_rfid owner}                  Current Organization
    Select From List By Label       ${xpath_rfid owner}                  External Organization
    Double Click Element            ${xpath_rfid}
    Page Should Contain             Current Organization (+1)

Testing Status
    [Arguments]                     ${xpath_rfid Status}                  ${xpath_rfid}
    Press Keys                      ${xpath_rfid Status}                      \\13
    Select From List By Label       ${xpath_rfid Status}                 Active
    ${RS}=  Get Element Attribute   ${xpath_rfid Status}                      aria-activedescendant
    Should Be Equal As Strings      ${RS}         mat-option-42
    Double Click Element            ${xpath_rfid}
    Press Keys                      ${xpath_rfid Status}                      \\13
    Select From List By Label       ${xpath_rfid Status}                 Active
    Select From List By Label       ${xpath_rfid Status}                 Inactive
    Double Click Element            ${xpath_rfid}
    Page Should Contain             Active (+1)

*** Test Cases ***
testing rfid cards
    Click Element                   ${xpath_rfid cards}
    Click Element                   ${xpath_rfid}
    Create rfid
    Click Element                   ${xpath_rfid cards import}
    Click Element                   ${xpath_rfid cards import exit}
    Click Element                   ${xpath_rfid cards export}
    Click Element                   ${xpath_rfid cards export No}
    Click Element                   ${xpath_rfid cards export}
    Click Element                   ${xpath_rfid cards export yes}
    Testing Owner                   ${xpath_rfid owner}                     ${xpath_rfid}
    Testing Status                  ${xpath_rfid Status}                    ${xpath_rfid}

    Click Element                   ${xpath_rfid user}
    Press Keys                      ${xpath_rfid user search}               ${rfid user search}
    Press Keys                      ${xpath_rfid select user admin}              \\13
    Click Element                   ${xpath_rfid select user submit}
    Press Keys                      ${xpath_rfid search}                    ${rfid search}
    Press Keys                      ${xpath_select RFID1}                      \\13
    Click Element                   ${xpath_rfid delete}
    Click Element                   ${xpath_rfid delete Yes}
    Sleep       2s

