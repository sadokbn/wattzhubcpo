*** Settings ***
Documentation   Testing Charging Stations in admin
Library         SeleniumLibrary

*** Variables ***
${xpath_Sessions}                                   //*[contains(text(),'Sessions')]
${xpath_sessions in progress}                       //*[@id="mat-tab-label-39-0"]
${xpath_History Export}                             //*[@id="mat-tab-content-0-1"]/div/app-transactions-history/app-table/div/div[1]/div[1]/button[2]
${xpath_History Export Data}                        //*[@id="cdk-overlay-8"]
${xpath_Export History Data Yes}                    //*[@id="mat-dialog-7"]/ng-component/mat-dialog-actions/button[1]
${xpath_Export History Data No}                     //*[@id="mat-dialog-7"]/ng-component/mat-dialog-actions/button[2]
${xpath_in progress owner}                          //*[@id="mat-select-110"]
${xpath_in progress sites}                          //*[@id="mat-input-207"]
${xpath_in progress sites table}                    //*[@id="cdk-overlay-37"]
${xpath_in progress sites table exit}               //*[@id="mat-dialog-30"]/ng-component/div/div/div/button[2]
${xpath_in progress site areas}                     //*[@id="mat-input-208"]
${xpath_in progress site areas table}               //*[@id="cdk-overlay-38"]
${xpath_in progress site areas table exit}          //*[@id="mat-dialog-31"]/ng-component/div/div/div/button[2]
${xpath_in progress charging stations}              //*[@id="mat-input-209"]
${xpath_in progress charging stations table}        //*[@id="cdk-overlay-42"]
${xpath_in progress charging stations table exit}   //*[@id="mat-dialog-35"]/ng-component/div/div/div/button[2]
${xpath_in progress connector}                                  //*[@id="mat-select-112"]
${xpath_users}                                      //*[@id="mat-input-255"]
${xpath_users table}                                //*[@id="cdk-overlay-52"]
${xpath_users table exit}                           //*[@id="mat-dialog-43"]/ng-component/div/div/div/button[2]
${xpath_RFID}                                       //*[@id="mat-input-5"]
${xpath_RFID table}                                 //*[@id="cdk-overlay-2"]
${xpath_RFID table exit}                            //*[@id="mat-dialog-2"]/ng-component/div/div/div/button[2]
${xpath_sessions search}                            //*[@id="mat-input-0"]
${sessions_search}                                  sessions 1
${xpath_sessions History}                           //*[@id="mat-tab-label-0-1"]
${xpath_History owner}                              //*[@id="mat-select-18"]
${xpath_History Date}                               //*[@id="mat-input-240"]
${History Date}                                     Jan 1, 2023 12:00 AM - Apr 18, 2023 11:59 PM
${xpath_Inactivity}                                 //*[@id="mat-select-168"]
${xpath_History sites}                              //*[@id="mat-input-241"]
${xpath_History sites table}                        //*[@id="cdk-overlay-15"]
${xpath_History sites table exit}                   //*[@id="mat-dialog-9"]/ng-component/div/div/div/button[2]
${xpath_History site areas}                         //*[@id="mat-input-242"]
${xpath_History site areas table}                   //*[@id="cdk-overlay-16"]
${xpath_History site areas table exit}              //*[@id="mat-dialog-10"]/ng-component/div/div/div/button[2]
${xpath_History charging stations}                  //*[@id="mat-input-243"]
${xpath_History charging stations table}            //*[@id="cdk-overlay-19"]
${xpath_History charging stations table exit}       //*[@id="mat-dialog-13"]/ng-component/div/div/div/button[2]
${xpath_History connector}                          //*[@id="mat-select-170"]
${xpath_History users}                              //*[@id="mat-input-5"]
${xpath_History users table}                        //*[@id="cdk-overlay-4"]
${xpath_History users table exit}                   //*[@id="mat-dialog-3"]/ng-component/div/div/div/button[2]
${xpath_History RFID}                               //*[@id="mat-input-6"]
${xpath_History RFID table}                         //*[@id="cdk-overlay-5"]
${xpath_History RFID table exit}                    //*[@id="mat-dialog-4"]/ng-component/div/div/div/button[2]
${xpath_History eMsp}                               //*[@id="mat-input-7"]
${xpath_History eMsp table}                         //*[@id="cdk-overlay-7"]
${xpath_History eMsp table exit}                    //*[@id="mat-dialog-6"]/ng-component/div/div/div/button[2]
${xpath_History search}                             //*[@id="mat-input-0"]
${History search}                                   History 1
${xpath_sessions in error}                          //*[@id="mat-tab-label-0-2"]
${xpath_in error Date}                              //*[@id="mat-input-16"]
${in error Date}                                    Jan 1, 2023 12:00 AM - Apr 24, 2023 11:59 PM
${xpath_in error error}                             //*[@id="mat-select-24"]
${xpath_in error sites}                             //*[@id="mat-input-35"]
${xpath_in error sites table}                       //*[@id="cdk-overlay-3"]
${xpath_in error sites table exit}                  //*[@id="mat-dialog-1"]/ng-component/div/div/div/button[2]
${xpath_in error site areas}                        //*[@id="mat-input-36"]
${xpath_in error site areas table}                  //*[@id="cdk-overlay-4"]
${xpath_in error site areas table exit}             //*[@id="mat-dialog-2"]/ng-component/div/div/div/button[2]
${xpath_in error charging stations}                 //*[@id="mat-input-37"]
${xpath_in error charging stations table}           //*[@id="cdk-overlay-5"]
${xpath_in error charging stations table exit}      //*[@id="mat-dialog-3"]/ng-component/div/div/div/button[2]
${xpath_in error connector}                         //*[@id="mat-select-26"]
${xpath_in error users}                             //*[@id="mat-input-38"]
${xpath_in error users table}                       //*[@id="cdk-overlay-7"]
${xpath_in error users table exit}                  //*[@id="mat-dialog-5"]/ng-component/div/div/div/button[2]
${xpath_in error search}                            //*[@id="mat-input-33"]
${in error_search}                                  in error 1
${xpath_sessions refunding}                         //*[@id="mat-tab-label-0-3"]
${xpath_refunding Export}                           //*[@id="mat-tab-content-0-3"]/div/app-transactions-refund/app-table/div/div[1]/div[1]/button[4]
${xpath_refunding Export Data}                      //*[@id="cdk-overlay-13"]
${xpath_Export refunding Data Yes}                  //*[@id="mat-dialog-10"]/ng-component/mat-dialog-actions/button[1]
${xpath_Export refunding Data No}                   //*[@id="mat-dialog-10"]/ng-component/mat-dialog-actions/button[2]
${xpath_refunding Synchronize}                      //*[@id="mat-tab-content-0-3"]/div/app-transactions-refund/app-table/div/div[1]/div[1]/button[1]
${xpath_refunding Synchronize Data}                 //*[@id="cdk-overlay-14"]
${xpath_Synchronize refunding Data Yes}             //*[@id="mat-dialog-11"]/ng-component/mat-dialog-actions/button[1]
${xpath_Synchronize refunding Data No}              //*[@id="mat-dialog-11"]/ng-component/mat-dialog-actions/button[2]
${xpath_refunding Date}                             //*[@id="mat-input-46"]
${refunding Date}                                   Jan 1, 2023 12:00 AM - Apr 23, 2023 11:59 PM
${xpath_refunding Status}                           //*[@id="mat-select-28"]
${xpath_refunding sites}                            //*[@id="mat-input-101"]
${xpath_refunding sites table}                      //*[@id="cdk-overlay-19"]
${xpath_refunding sites table exit}                 //*[@id="mat-dialog-12"]/ng-component/div/div/div/button[2]
${xpath_refunding site areas}                       //*[@id="mat-input-102"]
${xpath_refunding site areas table}                 //*[@id="cdk-overlay-20"]
${xpath_refunding site areas table exit}            //*[@id="mat-dialog-13"]/ng-component/div/div/div/button[2]
${xpath_refunding charging stations}                //*[@id="mat-input-103"]
${xpath_refunding charging stations table}          //*[@id="cdk-overlay-21"]
${xpath_refunding charging stations table exit}     //*[@id="mat-dialog-14"]/ng-component/div/div/div/button[2]
${xpath_refunding connector}                        //*[@id="mat-select-64"]
${xpath_refunding users}                            //*[@id="mat-input-104"]
${xpath_refunding users table}                      //*[@id="cdk-overlay-23"]
${xpath_refunding users table exit}                 //*[@id="mat-dialog-16"]/ng-component/div/div/div/button[2]
${xpath_refunding RFID}                             //*[@id="mat-input-105"]
${xpath_refunding RFID table}                       //*[@id="cdk-overlay-24"]
${xpath_refunding RFID table exit}                  //*[@id="mat-dialog-17"]/ng-component/div/div/div/button[2]
${xpath_refunding report}                           //*[@id="mat-input-106"]
${xpath_refunding report table}                     //*[@id="cdk-overlay-25"]
${xpath_refunding report table exit}                //*[@id="mat-dialog-18"]/ng-component/div/div/div/button[2]
${xpath_refunding search}                           //*[@id="mat-input-99"]
${refunding_search}                                 refunding 1

${xpath_}
${xpath_}
${xpath_}

*** Keywords ***

Testing Owner
    [Arguments]                     ${xpath_owner}                  ${xpath_sessions in progress}
    Press Keys                      ${xpath_owner}                  \\13
    ${OW}=  Get Element Attribute   ${xpath_owner}                  aria-expanded
    Should Be Equal As Strings      ${OW}                           true
    Select From List By Label       ${xpath_owner}                  Current Organization
    Double Click Element            ${xpath_sessions in progress}
    page should contain             Current Organization
    Press Keys                      ${xpath_owner}                  \\13
    Select From List By Label       ${xpath_owner}                  External Organization
    Double Click Element            ${xpath_sessions in progress}
    Page Should Contain             External Organization
    Press Keys                      ${xpath_owner}                  \\13
    Select From List By Label       ${xpath_owner}                  Current Organization
    Select From List By Label       ${xpath_owner}                  External Organization
    Double Click Element            ${xpath_sessions in progress}
    Page Should Contain             Current Organization (+1)

Testing Inactivity
    [Arguments]                     ${xpath_Inactivity}                  ${xpath_sessions History}
    Press Keys                      ${xpath_Inactivity}                  \\13
    ${IN}=  Get Element Attribute   ${xpath_Inactivity}                  aria-expanded
    Should Be Equal As Strings      ${IN}                           true
    Select From List By Label       ${xpath_Inactivity}                  Medium Inactivities
    Double Click Element            ${xpath_sessions History}
    page should contain             Medium Inactivities
    Press Keys                      ${xpath_Inactivity}                  \\13
    Select From List By Label       ${xpath_Inactivity}                  High Inactivities
    Double Click Element            ${xpath_sessions in progress}
    Page Should Contain             High Inactivities
    Press Keys                      ${xpath_Inactivity}                  \\13
    Select From List By Label       ${xpath_Inactivity}                  Medium Inactivities
    Select From List By Label       ${xpath_Inactivity}                  High Inactivities
    Double Click Element            ${xpath_sessions in progress}
    Page Should Contain             Medium Inactivities (+1)

Testing Connecter
    [Arguments]                     ${xpath_in progress connector}    ${mat-option}   ${xpath_sessions in progress}
    Press Keys                      ${xpath_in progress connector}                      \\13
    Select From List By Label       ${xpath_in progress connector}                 A
    ${CP}=  Get Element Attribute   ${xpath_in progress connector}                      aria-activedescendant
    Should Be Equal As Strings      ${CP}         ${mat-option}
    Double Click Element            ${xpath_sessions in progress}
    Press Keys                      ${xpath_in progress connector}                      \\13
    Select From List By Label       ${xpath_in progress connector}                 A
    Select From List By Label       ${xpath_in progress connector}                 B
    Double Click Element            ${xpath_sessions in progress}
    Page Should Contain             A (+1)

Testing Status
    [Arguments]                     ${xpath_refunding Status}                  ${xpath_sessions refunding}
    Press Keys                      ${xpath_refunding Status}                      \\13
    Select From List By Label       ${xpath_refunding Status}                 Not Submitted
    ${RS}=  Get Element Attribute   ${xpath_refunding Status}                      aria-activedescendant
    Should Be Equal As Strings      ${RS}         mat-option-83
    Double Click Element            ${xpath_sessions refunding}
    Press Keys                      ${xpath_refunding Status}                      \\13
    Select From List By Label       ${xpath_refunding Status}                 Not Submitted
    Select From List By Label       ${xpath_refunding Status}                 Submitted
    Double Click Element            ${xpath_sessions refunding}
    Page Should Contain             Not Submitted (+1)
History Export Yes
    page should contain element     ${xpath_Export History Data Yes}
    click element                   ${xpath_Export History Data Yes}
History Export No
    page should contain element     ${xpath_Export History Data No}
    click element                   ${xpath_Export History Data No}
refunding Export Yes
    page should contain element     ${xpath_Export refunding Data Yes}
    click element                   ${xpath_Export refunding Data Yes}
refunding Export No
    page should contain element     ${xpath_Export refunding Data No}
    click element                   ${xpath_Export refunding Data No}
refunding Synchronize Yes
    page should contain element     ${xpath_Synchronize refunding Data Yes}
    click element                   ${xpath_Synchronize refunding Data Yes}
refunding Synchronize No
    page should contain element     ${xpath_Synchronize refunding Data No}
    click element                   ${xpath_Synchronize refunding Data No}
*** Test Cases ***
tester Sessions in progress
    Press Keys                      ${xpath_Sessions}                       \\13
    Double Click Element            ${xpath_Sessions}
    Click Element                   ${xpath_Sessions}
    Click Element                   ${xpath_sessions in progress}
    Testing Owner                   ${xpath_in progress owner}              ${xpath_sessions in progress}
    Press Keys                      ${xpath_in progress sites}                          \\13
    Page Should Contain Element     ${xpath_in progress sites table}
    Press Keys                      ${xpath_in progress sites table exit}               \\13
    Press Keys                      ${xpath_in progress site areas}                     \\13
    Page Should Contain Element     ${xpath_in progress site areas table}
    Press Keys                      ${xpath_in progress site areas table exit}          \\13
    Press Keys                      ${xpath_in progress charging stations}              \\13
    Page Should Contain Element     ${xpath_in progress charging stations table}
    Press Keys                      ${xpath_in progress charging stations table exit}   \\13
    Testing Connecter               ${xpath_in progress connector}     mat-option-325     ${xpath_sessions in progress}
    Press Keys                      ${xpath_users}                          \\13
    Page Should Contain Element     ${xpath_users table}
    Press Keys                      ${xpath_users table exit}               \\13
    Press Keys                      ${xpath_RFID}                           \\13
    Page Should Contain Element     ${xpath_RFID table}
    Press Keys                      ${xpath_RFID table exit}                \\13
    press keys                      ${xpath_sessions search}                ${sessions_search}

tester Sessions History
    Click Element                   ${xpath_sessions History}
    FOR    ${i}    IN RANGE    1    2
        click element                    ${xpath_History Export}
        page should contain element     ${xpath_History Export Data}
        Run Keyword If    ${i} == 1    History Export Yes
        Run Keyword If    ${i} == 2    History Export No
    END
    Testing Owner                   ${xpath_History owner}                  ${xpath_sessions History}
    Press Keys                      ${xpath_History Date}                   ${History Date}
    Testing Inactivity              ${xpath_Inactivity}                     ${xpath_sessions History}
    Press Keys                      ${xpath_History sites}                          \\13
    Page Should Contain Element     ${xpath_History sites table}
    Press Keys                      ${xpath_History sites table exit}               \\13
    Press Keys                      ${xpath_History site areas}                     \\13
    Page Should Contain Element     ${xpath_History site areas table}
    Press Keys                      ${xpath_History site areas table exit}          \\13
    Press Keys                      ${xpath_History charging stations}              \\13
    Page Should Contain Element     ${xpath_History charging stations table}
    Press Keys                      ${xpath_History charging stations table exit}   \\13
    Testing Connecter               ${xpath_in progress connector}       mat-option-5   ${xpath_sessions in progress}
    Press Keys                      ${xpath_History users}                          \\13
    Page Should Contain Element     ${xpath_History users table}
    Press Keys                      ${xpath_History users table exit}               \\13
    Press Keys                      ${xpath_History RFID}                           \\13
    Page Should Contain Element     ${xpath_History RFID table}
    Press Keys                      ${xpath_History RFID table exit}                \\13
    Press Keys                      ${xpath_History eMsp}                           \\13
    Page Should Contain Element     ${xpath_History eMsp table}
    Press Keys                      ${xpath_History eMsp table exit}                \\13
    press keys                      ${xpath_History search}                 ${History_search}

tester Sessions in error
    Click Element                   ${xpath_sessions in error}
    Press Keys                      ${xpath_in error Date}                   ${in error Date}
    Press Keys                      ${xpath_in error error}                      \\13
    Select From List By Label       ${xpath_in error error}                 Consumption Too High
    ${CH}=  Get Element Attribute   ${xpath_in error error}                      aria-activedescendant
    Should Be Equal As Strings      ${CH}         mat-option-47
    Double Click Element            ${xpath_sessions in error}
    Press Keys                      ${xpath_in error error}                      \\13
    Select From List By Label       ${xpath_in error error}                 Consumption Too High
    Select From List By Label       ${xpath_in error error}                 High Inactivity
    Double Click Element            ${xpath_sessions in error}
    Page Should Contain             Consumption Too High (+1)
    Press Keys                      ${xpath_in error sites}                          \\13
    Page Should Contain Element     ${xpath_in error sites table}
    Press Keys                      ${xpath_in error sites table exit}               \\13
    Press Keys                      ${xpath_in error site areas}                     \\13
    Page Should Contain Element     ${xpath_in error site areas table}
    Press Keys                      ${xpath_in error site areas table exit}          \\13
    Press Keys                      ${xpath_in error charging stations}              \\13
    Page Should Contain Element     ${xpath_in error charging stations table}
    Press Keys                      ${xpath_in error charging stations table exit}   \\13
    Testing Connecter               ${xpath_in error connector}        mat-option-290       ${xpath_sessions in error}
    Press Keys                      ${xpath_in error users}                          \\13
    Page Should Contain Element     ${xpath_in error users table}
    Press Keys                      ${xpath_in error users table exit}               \\13
    press keys                      ${xpath_in error search}                 ${in error_search}

tester Sessions refunding
    Click Element                   ${xpath_sessions refunding}
    FOR    ${i}    IN RANGE    1    2
        click element                    ${xpath_refunding Export}
        page should contain element     ${xpath_refunding Export Data}
        Run Keyword If    ${i} == 1    refunding Export Yes
        Run Keyword If    ${i} == 2    refunding Export No
    END
    FOR    ${i}    IN RANGE    1    2
        click element                    ${xpath_refunding Synchronize}
        page should contain element     ${xpath_refunding Synchronize Data}
        Run Keyword If    ${i} == 1    refunding Synchronize Yes
        Run Keyword If    ${i} == 2    refunding Synchronize No
    END
    Press Keys                      ${xpath_refunding Date}                         ${refunding Date}
    Testing Status                  ${xpath_refunding Status}                       ${xpath_sessions refunding}
    Press Keys                      ${xpath_refunding sites}                          \\13
    Page Should Contain Element     ${xpath_refunding sites table}
    Press Keys                      ${xpath_refunding sites table exit}               \\13
    Press Keys                      ${xpath_refunding site areas}                     \\13
    Page Should Contain Element     ${xpath_refunding site areas table}
    Press Keys                      ${xpath_refunding site areas table exit}          \\13
    Press Keys                      ${xpath_refunding charging stations}              \\13
    Page Should Contain Element     ${xpath_refunding charging stations table}
    Press Keys                      ${xpath_refunding charging stations table exit}   \\13
    Testing Connecter               ${xpath_refunding connector}       mat-option-320     ${xpath_sessions refunding}
    Press Keys                      ${xpath_refunding users}                          \\13
    Page Should Contain Element     ${xpath_refunding users table}
    Press Keys                      ${xpath_refunding users table exit}               \\13
    Press Keys                      ${xpath_refunding RFID}                           \\13
    Page Should Contain Element     ${xpath_refunding RFID table}
    Press Keys                      ${xpath_refunding RFID table exit}                \\13
    Press Keys                      ${xpath_refunding report}                         \\13
    Page Should Contain Element     ${xpath_refunding report table}
    Press Keys                      ${xpath_refunding report table exit}              \\13
    press keys                      ${xpath_refunding search}                       ${refunding_search}