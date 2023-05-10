*** Settings ***
Documentation   Testing Charging Stations in admin
Library         SeleniumLibrary

*** Variables ***
${xpath_Charging Stations}          //*[contains(text(),'Charging Stations')]
${xpath_Charging Stations in}       //*[@id="mat-tab-label-4-0"]
${xpath_Charging Export}            //*[@id="mat-tab-content-5-0"]/div/app-charging-stations-list/app-table/div/div[1]/div[1]/button[1]
${xpath_Charging Export Data}       //*[@id="cdk-overlay-6"]
${xpath_Export Charging Data Yes}       //*[@id="mat-dialog-4"]/ng-component/mat-dialog-actions/button[1]
${xpath_Export Charging Data No}        //*[@id="mat-dialog-4"]/ng-component/mat-dialog-actions/button[2]
${xpath_owner}                           //*[@id="mat-select-78"]
${xpath_companies}                      //*[@id="mat-input-49"]
${xpath_companies table}                //*[@id="cdk-overlay-4"]
${xpath_companies table exit}             //*[@id="mat-dialog-1"]/ng-component/div/div/div/button[2]
${xpath_sites}                              //*[@id="mat-input-50"]
${xpath_sites table}                    //*[@id="cdk-overlay-9"]
${xpath_sites table exit}               //*[@id="mat-dialog-6"]/ng-component/div/div/div/button[2]
${xpath_site areas}                         //*[@id="mat-input-51"]
${xpath_site areas table}                   //*[@id="cdk-overlay-10"]
${xpath_site areas table exit}              //*[@id="mat-dialog-7"]/ng-component/div/div/div/button[2]
${xpath_search}                             //*[@id="mat-input-48"]
${charging station_search}                  charging station tunisie
${xpath_maps}                               //*[@id="mat-tab-label-2-1"]
${xpath_charging plans}                     //*[@id="mat-tab-label-2-2"]
${xpath_charging station in plans}                       //*[@id="mat-input-61"]
${xpath_plans table}                        //*[@id="cdk-overlay-12"]
${xpath_plans table exit}                              //*[@id="mat-dialog-9"]/ng-component/div/div/div/button[2]
${xpath_in error}                           //*[@id="mat-tab-label-2-3"]
${xpath_in error sites}                     //*[@id="mat-input-117"]
${xpath_in error sites table}                   //*[@id="cdk-overlay-26"]
${xpath_in error table exit}                //*[@id="mat-dialog-22"]/ng-component/div/div/div/button[2]
${xpath_in error site areas}                //*[@id="mat-input-118"]
${xpath_in error site areas table}          //*[@id="cdk-overlay-27"]
${xpath_in error site areas table exit}     //*[@id="mat-dialog-23"]/ng-component/div/div/div/button[2]
${xpath_in error search}                    //*[@id="mat-input-116"]
${in error_search}                          in error 1
${xpath_onboard new station}                //*[@id="mat-tab-label-2-4"]
${xpath_onboard site areas}                 //*[@id="mat-input-122"]
${xpath_onboard site areas table}           //*[@id="cdk-overlay-28"]
${xpath_onboard site areas table exit}      //*[@id="mat-dialog-24"]/ng-component/div/div/div/button[2]
${xpath_onboard search}                     //*[@id="mat-input-121"]
${onboard_search}                           onboard 1
${xpath_create token}                           //*[@id="mat-tab-content-2-4"]/div/app-charging-stations-registration-tokens/div/div[2]/app-table/div/div[1]/div[1]/button[1]
${xpath_token description}                  //*[@id="mat-input-106"]
${token description}                            un token
${xpath_token expired on}                   //*[@id="mat-input-110"]
${token expired on}                         06/30/2023 5:30 PM
${xpath_token site area}                    //*[@id="mat-input-111"]
${xpath_token site area table}              //*[@id="cdk-overlay-24"]
${xpath_token site area table exit}         //*[@id="mat-dialog-20"]/ng-component/div/div/div/button[2]
${xpath_token save}                         //*[@id="mat-dialog-16"]/ng-component/app-charging-stations-registration-token/div/div/div/button[1]
${xpath_}

*** Keywords ***
Charging Export Yes
    page should contain element     ${xpath_Export Charging Data Yes}
    click element                   ${xpath_Export Charging Data Yes}
Charging Export No
    page should contain element     ${xpath_Export Charging Data No}
    click element                   ${xpath_Export Charging Data No}

*** Test Cases ***
tester Charging Stations
    Press Keys                      ${xpath_Charging Stations}       \\13
    Double Click Element            ${xpath_Charging Stations}
    Click Element                   ${xpath_Charging Stations}
    Click Element                   ${xpath_Charging Stations in}
    FOR    ${i}    IN RANGE    1    2
        click element                    ${xpath_Charging Export}
        page should contain element     ${xpath_Charging Export Data}
        Run Keyword If    ${i} == 1    Charging Export Yes
        Run Keyword If    ${i} == 2    Charging Export No
    END
    Press Keys                      ${xpath_owner}                  \\13
    ${OW}=  Get Element Attribute   ${xpath_owner}                  aria-expanded
    Should Be Equal As Strings      ${OW}         true
    Select From List By Label       ${xpath_owner}                  Current Organization
    page should contain             Current Organization
    Press Keys                      ${xpath_owner}                  \\13
    Select From List By Label       ${xpath_owner}                  External Organization
    Page Should Contain             External Organization
    Press Keys                      ${xpath_companies}              \\13
    Page Should Contain Element     ${xpath_companies table}
    Press Keys                      ${xpath_companies table exit}   \\13
    Press Keys                      ${xpath_sites}                  \\13
    Page Should Contain Element     ${xpath_sites table}
    Press Keys                      ${xpath_sites table exit}       \\13
    Press Keys                      ${xpath_site areas}             \\13
    Page Should Contain Element     ${xpath_site areas table}
    Press Keys                      ${xpath_site areas table exit}  \\13
    press keys                      ${xpath_search}                 ${charging station_search}


    Press Keys                      ${xpath_maps}                   \\13
    Press Keys                      ${xpath_charging plans}         \\13
    Press Keys                      ${xpath_charging station in plans}    \\13
    Page Should Contain Element     ${xpath_plans table}
    Press Keys                      ${xpath_plans table exit}       \\13


    Press Keys                      ${xpath_in error}                   \\13
    Press Keys                      ${xpath_in error sites}                  \\13
    Page Should Contain Element     ${xpath_in error sites table}
    Press Keys                      ${xpath_in error table exit}       \\13
    Press Keys                      ${xpath_in error site areas}             \\13
    Page Should Contain Element     ${xpath_in error site areas table}
    Press Keys                      ${xpath_in error site areas table exit}  \\13
    press keys                      ${xpath_in error search}                 ${in error_search}

    Press Keys                      ${xpath_onboard new station}                   \\13
    Press Keys                      ${xpath_onboard site areas}             \\13
    Page Should Contain Element     ${xpath_onboard site areas table}
    Press Keys                      ${xpath_onboard site areas table exit}  \\13
    press keys                      ${xpath_onboard search}                 ${onboard_search}
    Press Keys                      ${xpath_create token}                   \\13
    press keys                      ${xpath_token description}                 ${token description}
    press keys                      ${xpath_token expired on}                 ${token expired on}
    Press Keys                      ${xpath_token site area}                   \\13
    Page Should Contain Element     ${xpath_token site area table }
    Press Keys                      ${xpath_token site area table exit}  \\13

