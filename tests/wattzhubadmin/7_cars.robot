*** Settings ***
Documentation   Testing Cars in admin
Library         SeleniumLibrary

*** Variables ***
${xpath_cars}                               //*[contains(text(),'Cars')]
${xpath_car management}                     //*[@id="mat-tab-label-19-0"]
${xpath_create}                             //*[@id="mat-tab-content-19-0"]/div/app-cars-list/app-table/div/div[1]/div[1]/button[1]
${xpath_car-}                               //*[@id="mat-tab-label-22-0"]
${xpath_car catalogs}                       //*[@id="mat-input-157"]
${xpath_create car search}                  //*[@id="mat-input-168"]
${create car_search}                        audi
${xpath_audi A7}                            id:mat-checkbox-286
${xpath_car submit}                         //*[@id="mat-dialog-28"]/ng-component/div/div/div/button[1]
${xpath_converter}                          //*[@id="converterType"]
${xpath_converter 7.4kW}                    id:mat-option-377
${xpath_vin}                                //*[@id="mat-input-165"]
${vin}                                      1HGBH41JXMN109186
${xpath_license plate}                      //*[@id="mat-input-166"]
${license plate}                            236 TN 4213
${default car}                              //*[@id="mat-checkbox-5"]
${company car}                              //*[@id="mat-radio-2"]
${private car}                              //*[@id="mat-radio-3"]
${pool car}                                 //*[@id="mat-radio-4"]
${xpath_car connector}                      //*[@id="mat-tab-label-5-1"]
${xpath_connection name}                    //*[@id="carConnectorName"]
${xpath_connection meter id}                //*[@id="mat-input-64"]
${connection meter id}                      ID1
${xpath_create car save}                    //*[@id="mat-dialog-6"]/ng-component/app-car/div/div/div/button[1]
${xpath_car users}                          //*[@id="mat-input-76"]
${xpath_car users Table}                    id:mat-dialog-11
${xpath_car users Table Exit}               //*[@id="mat-dialog-11"]/ng-component/div/div/div/button[2]
${xpath_select user}                        id:mat-checkbox-163
${xpath_user submit}                        //*[@id="mat-dialog-11"]/ng-component/div/div/div/button[1]
${xpath_car makers}                         //*[@id="mat-input-77"]
${xpath_car makers Table}                   id:mat-dialog-17
${xpath_car makers Table Exit}              //*[@id="mat-dialog-17"]/ng-component/div/div/div/button[2]

${xpath_car reset filters}                  //*[@id="mat-tab-content-11-0"]/div/app-cars-list/app-table/div/div[1]/div[1]/button[2]
${xpath_car maker audi}                     id:mat-checkbox-264
${xpath_car maker submit}                   //*[@id="mat-dialog-17"]/ng-component/div/div/div/button[1]
${xpath_car management search}              //*[@id="mat-input-75"]
${car management_search}                    audi

${xpath_car action edit}                    //*[@id="0"]/td[1]/div/button
${xpath_car edit exit}                      //*[@id="mat-dialog-22"]/ng-component/app-car/div/div/div/button[2]
${xpath_car action more action}             //*[@id="0"]/td[1]/button
${xpath_car more action delete}             //*[@id="mat-menu-panel-13"]/div/div/button
${xpath_car auto refresh}                   //*[@id="mat-slide-toggle-6"]/label/div/div/div[1]
${xpath_car refresh}                        //*[@id="mat-tab-content-25-0"]/div/app-cars-list/app-table/div/div[1]/div[1]/div/button
${xpath_car catalogs}                       //*[@id="mat-tab-label-0-1"]
${xpath_car catalogs makers}                //*[@id="mat-input-14"]
${xpath_car catalogs makers table}          mat-dialog-0
${xpath_car catalogs makers search}         //*[@id="mat-input-15"]
${car catalogs makers search}               audi
${xpath_catalogs car maker audi}            id:mat-checkbox-3
${xpath_catalogs car maker sumbit}          //*[@id="mat-dialog-0"]/ng-component/div/div/div/button[1]
${xpath_catalogs action view car 1}         //*[@id="0"]/td[1]/div/button
${xpath_car 1 battery}                      //*[@id="mat-tab-label-6-1"]
${xpath_car 1 pictures}                     //*[@id="mat-tab-label-6-2"]
${xpath_car 1 miscellaneous}                //*[@id="mat-tab-label-6-3"]
${xpath_car 1 exit}                         //*[@id="mat-dialog-5"]/ng-component/app-car-catalog/div/div/div/button
${xpath_catalogs action view car 2}         //*[@id="1"]/td[1]/div/button
${xpath_car 2 battery}                      //*[@id="mat-tab-label-7-1"]
${xpath_car 2 pictures}                     //*[@id="mat-tab-label-7-2"]
${xpath_car 2 miscellaneous}                //*[@id="mat-tab-label-7-3"]
${xpath_car 2 exit}                         //*[@id="mat-dialog-6"]/ng-component/app-car-catalog/div/div/div/button
${xpath_car catalogs auto refresh}          //*[@id="mat-slide-toggle-4"]/label/div/div/div[1]
${xpath_}
${xpath_}
*** Keywords ***
create car
    Press Keys                      ${xpath_create}             \\13
    Click Element                   ${xpath_car-}
    Click Element                   ${xpath_car catalogs}
    Sleep       3s
    press keys                      ${xpath_create car search}              ${create car_search}
    Press Keys                      ${xpath_audi A7}            \\13
    Press Keys                      ${xpath_car submit}         \\13
    Click Element                   ${xpath_converter}
    Press Keys                      ${xpath_converter 7.4kW}    \\13
    press keys                      ${xpath_vin}                            ${vin}
    press keys                      ${xpath_license plate}                            ${license plate}
    Press Keys                      ${default car}              \\13
    Press Keys                      ${company car}              \\13
    Press Keys                      ${private car}              \\13
    Press Keys                      ${pool car}              \\13
    Click Element                   ${xpath_car connector}
    Click Element                   ${xpath_connection name}
    Press Keys                      ${xpath_connection meter id}
    Click Element                   ${xpath_create car save}

*** Test Cases ***
tester cars
    Press Keys                      ${xpath_cars}               \\13
    Click Element                   ${xpath_car management}
    Create Car
    Click element                   ${xpath_car users}
    Page should contain element     ${xpath_car users Table}
    click element                   ${xpath_car users Table Exit}
    click element                   ${xpath_car users}
    Press Keys                      ${xpath_select user}              \\13
    Click Element                   ${xpath_user submit}

    Click Element                   ${xpath_car reset filters}
    Sleep    2s

    Press Keys                      ${xpath_car makers}              \\13
    Sleep    2s
    Page should contain element     ${xpath_car makers Table}
    Press Keys                      ${xpath_car makers Table Exit}              \\13

    Press Keys                      ${xpath_car makers}              \\13
    Sleep    2s
    Press Keys                      ${xpath_car maker audi}              \\13
    Click Element                   ${xpath_car maker submit}
    press keys                      ${xpath_car management search}                ${car management_search}
    Press Keys                      ${xpath_car management search}       CTRL+a      BACKSPACE
    Click Element                   ${xpath_car edit exit}
    Click Element                   ${xpath_car action more action}
    Click Element                   ${xpath_car more action delete}
    Press Keys                      ${xpath_car auto refresh}              \\13

    Click Element                   ${xpath_car refresh}
    Sleep    2s
    Click Element                   ${xpath_car catalogs}
    Click Element                   ${xpath_car catalogs makers}
    Page Should Contain Element     ${xpath_car catalogs makers table}
    press keys                      ${xpath_car catalogs makers search}                ${car catalogs makers search}
    Press Keys                      ${xpath_catalogs car maker audi}              \\13
    Click Element                   ${xpath_catalogs car maker sumbit}
    Sleep    3s
    Click Element                   ${xpath_catalogs action view car 1}
    Click Element                   ${xpath_car 1 battery}
    Click Element                   ${xpath_car 1 pictures}
    Click Element                   ${xpath_car 1 miscellaneous}
    Click Element                   ${xpath_car 1 exit}

    Click Element                   ${xpath_catalogs action view car 2}
    Click Element                   ${xpath_car 2 battery}
    Click Element                   ${xpath_car 2 pictures}
    Click Element                   ${xpath_car 2 miscellaneous}
    Click Element                   ${xpath_car 2 exit}

    Press Keys                      ${xpath_car catalogs auto refresh}              \\13







