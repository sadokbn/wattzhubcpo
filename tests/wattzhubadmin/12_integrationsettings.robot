*** Settings ***
Documentation   Testing integration settings in admin
Library         SeleniumLibrary

*** Variables ***
${xpath_integration settings}                       //*[contains(text(),'Integration Settings')]
${xpath_roaming}                                    //*[@id="mat-tab-label-0-0"]
${xpath_roaming hubject}                            //*[@id="mat-tab-label-0-1"]
${xpath_pricing}                            //*[@id="mat-tab-label-0-2"]
${xpath_pricing currency}                   //*[@id="inputPriceUnit"]
${xpath_pricing currency australian}        //*[@id="mat-option-95"]
${xpath_pricing currency brazilian}         //*[@id="mat-option-96"]
${xpath_pricing currency canadian}          //*[@id="mat-option-97"]
${xpath_pricing currency czech}             //*[@id="mat-option-98"]
${xpath_pricing currency danish}            //*[@id="mat-option-99"]
${xpath_pricing currency euro}              //*[@id="mat-option-100"]
${xpath_pricing currency hong kong}         //*[@id="mat-option-101"]
${xpath_pricing currency hongarian}         //*[@id="mat-option-102"]
${xpath_pricing save}                       //*[@id="mat-tab-content-0-2"]/div/app-settings-pricing/div/div/button
${xpath_pricing save No}                    //*[contains(text(),'No')]

${xpath_billing}                            //*[@id="mat-tab-label-0-3"]
${xpath_stripe url}                         //*[@id="mat-input-78"]
${stripe url}                               https://www.google.com/
${xpath_stripe api key}                     //*[@id="mat-input-79"]
${stripe api key}                           0imfnc8mVLWwsAawjYr4Rx-Af50DDqtlx
${xpath_stripe secret api}                  //*[@id="mat-input-80"]
${stripe secret api}                        zaCELgL
${xpath_Immediate Billing}                  //*[@id="mat-checkbox-6"]
${xpath_Periodic Billing}                   //*[@id="mat-checkbox-7"]


${xpath_analytics}                          //*[@id="mat-tab-label-0-4"]
${xpath_smart charging}                     //*[@id="mat-tab-label-0-5"]

${xpath_asset}                              //*[@id="mat-tab-label-0-6"]
${xpath_asset add}                          //*[@id="mat-tab-content-0-6"]/div/app-settings-asset/div/form/div[2]/div[2]/app-table/div/div[1]/div/button
${xpath_asset name}                         //*[@id="mat-input-45"]
${asset name}                               asset 1
${xpath_asset description}                  //*[@id="mat-input-46"]
${asset description}                        premier asset
${xpath_asset url}                          //*[@id="mat-input-47"]
${asset url}                                https://www.google.com/
${xpath_asset type}                         //*[@id="mat-select-38"]
${xpath_asset type Schneider}               //*[@id="mat-option-135"]
${xpath_asset type Schneider user}          //*[@id="mat-input-66"]
${asset type Schneider user}                user 1
${xpath_asset type Schneider min}           //*[@id="mat-input-48"]
${asset type Schneider min}                 2
${xpath_asset type Schneider pw}            //*[@id="mat-input-71"]
${asset type Schneider pw}                  1234
${xpath_asset add save}                     //*[@id="mat-dialog-4"]/ng-component/app-settings-asset-connection/div/div/div/button[1]
${xpath_asset add exit}                     //*[@id="mat-dialog-4"]/ng-component/app-settings-asset-connection/div/div/div/button[2]
${xpath_asset save}                         //*[@id="mat-tab-content-0-6"]/div/app-settings-asset/div/form/div[1]/button

${xpath_car connector}                      //*[@id="mat-tab-label-0-7"]
${xpath_car add}                            //*[@id="mat-tab-content-0-7"]/div/app-settings-car-connector/div/form/div[2]/div[2]/app-table/div/div[1]/div/button
${xpath_car name}                           //*[@id="mat-input-72"]
${car name}                                 car 1
${xpath_car description}                    //*[@id="mat-input-73"]
${car description}                          new car
${xpath_car type}                           //*[@id="mat-select-40"]
${xpath_car type mercedes}                  //*[@id="mat-option-140"]
${xpath_car type mercedes auth}             //*[@id="mat-input-74"]
${car type mercedes auth}                   https://www.google.com/
${xpath_car type mercedes api}              //*[@id="mat-input-75"]
${car type mercedes api}                    https://www.google.com/
${xpath_car type mercedes client id}        //*[@id="mat-input-76"]
${car type mercedes client id}              12345
${xpath_car type mercedes secret}           //*[@id="mat-input-77"]
${car type mercedes secret}                 1234
${xpath_car add save}                       //*[@id="mat-dialog-5"]/ng-component/app-settings-car-connector-connection/div/div/div/button[1]
${xpath_car 1 delete}                       //*[@id="1683479701106"]/td[1]/div[2]/button
${xpath_car 1 delete Yes}                   //*[contains(text(),'Yes')]
${xpath_car save}                           //*[@id="mat-tab-content-0-7"]/div/app-settings-car-connector/div/form/div[1]/button

${xpath_double access}                      //*[@id="mat-tab-label-0-8"]







${xpath_Immediate Billing}
${xpath_Periodic Billing}
${xpath_}
${xpath_}
${xpath_}

*** Keywords ***
Select pricing currency
    FOR    ${i}    IN RANGE    1    9
        Click Element               ${xpath_pricing currency}
        IF    ${i} == 1
            Click Element           ${xpath_pricing currency australian}
        END
        IF    ${i} == 2
            Click Element           ${xpath_pricing currency brazilian}
        END
        IF    ${i} == 3
            Click Element           ${xpath_pricing currency canadian}
        END
        IF    ${i} == 4
            Click Element           ${xpath_pricing currency czech}
        END
        IF    ${i} == 5
            Click Element           ${xpath_pricing currency danish}
        END
        IF    ${i} == 6
            Click Element           ${xpath_pricing currency hongarian}
        END
        IF    ${i} == 7
            Click Element           ${xpath_pricing currency hong kong}
        END
        IF    ${i} == 8
            Click Element           ${xpath_pricing currency euro}
            Click Element           ${xpath_pricing save}
            Click Element           ${xpath_pricing save No}
        END
    END

Add Asset
    Click Element                   ${xpath_asset add}
    Press Keys                      ${xpath_asset name}                     ${asset name}
    Press Keys                      ${xpath_asset description}              ${asset description}
    Press Keys                      ${xpath_asset url}                      ${asset url}
    Click Element                   ${xpath_asset type}
    Click Element                   ${xpath_asset type Schneider}
    Press Keys                      ${xpath_asset type Schneider user}      ${asset type Schneider user}
    Press Keys                      ${xpath_asset type Schneider min}       ${asset type Schneider min}
    Press Keys                      ${xpath_asset type Schneider pw}        ${asset type Schneider pw}
#    Click Element                   ${xpath_asset add save}
    Click Element                   ${xpath_asset add exit}

Add Car
    Click Element                   ${xpath_car add}
    Press Keys                      ${xpath_car name}                           ${car name}
    Press Keys                      ${xpath_car description}                    ${car description}
    Click Element                   ${xpath_car type}
    Click Element                   ${xpath_car type mercedes}
    Press Keys                      ${xpath_car type mercedes auth}             ${car type mercedes auth}
    Press Keys                      ${xpath_car type mercedes api}              ${car type mercedes api}
    Press Keys                      ${xpath_car type mercedes client id}        ${car type mercedes client id}
    Press Keys                      ${xpath_car type mercedes secret}           ${car type mercedes secret}
    Click Element                   ${xpath_car add save}

Billing Stripe
    Press Keys                      ${xpath_stripe url}                         ${stripe url}
    Press Keys                      ${xpath_stripe api key}                     ${stripe api key}
    Press Keys                      ${xpath_stripe secret api}                  ${stripe secret api}
    Press Keys                      ${xpath_Immediate Billing}                  \\13
    Press Keys                      ${xpath_Periodic Billing}                   \\13


*** Test Cases ***
testing integration settings
    Click Element                   ${xpath_integration settings}
    Page should contain             Information
    Click Element                   ${xpath_roaming}
    Page should contain             Information
    Click Element                   ${xpath_roaming hubject}
    Page should contain             Information
    Click Element                   ${xpath_pricing}
    Select pricing currency
    Click Element                   ${xpath_billing}
    Billing Stripe
    Click Element                   ${xpath_analytics}
    Page should contain             Information
    Click Element                   ${xpath_smart charging}
    Page should contain             Information
    Click Element                   ${xpath_asset}
    Add Asset
    Click Element                   ${xpath_asset save}
    Click Element                   ${xpath_car connector}
    Add Car
    Click Element                   ${xpath_car 1 delete}
    Click Element                   ${xpath_car 1 delete Yes}
    Click Element                   ${xpath_car save}
    Sleep    2s
    Page Should Contain             Car connector settings have been updated successfully
    Click Element                   ${xpath_double access}
    Page should contain             Information


