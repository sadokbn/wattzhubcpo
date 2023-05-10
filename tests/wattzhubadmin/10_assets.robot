*** Settings ***
Documentation   Testing Assets in admin
Library         SeleniumLibrary

*** Variables ***
${xpath_assets}                                     //*[contains(text(),'Assets')]
${xpath_assets home}                                //*[@id="mat-tab-label-13-0"]
${xpath_asset create}                               //*[@id="mat-tab-content-13-0"]/div/app-assets-list/app-table/div/div[1]/div[1]/button[1]
${xpath_asset name}                                 //*[@id="mat-input-97"]
${asset name}                                       asset 1
${xpath_site areas}                                 //*[@id="mat-input-98"]
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

Create asset
    Press Keys                      ${xpath_asset create}                    \\13
    Press Keys                      ${xpath_asset name}                 ${asset name}
    Click Element                   ${xpath_site areas}

*** Test Cases ***
testing assets
    Click Element                   ${xpath_assets}
    Click Element                   ${xpath_assets home}


