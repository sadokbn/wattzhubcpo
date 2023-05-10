*** Settings ***
Documentation   Testing Organization in admin
Library         SeleniumLibrary
Library         OperatingSystem


*** Variables ***
${xpath_organization}                               //*[contains(text(),'Organization')]
${xpath_companies}                                  //*[@id="mat-tab-label-26-0"]
${xpath_companie create}                            //*[@id="mat-tab-content-26-0"]/div/app-companies-list/app-table/div/div[1]/div[1]/button[1]
${xpath_companie name}                              //*[@id="mat-input-165"]
${companie name}                                    companie 1
${xpath_address 1}                                  //*[@id="mat-input-166"]
${address 1}                                        Sousse
${xpath_address 2}                                  //*[@id="mat-input-167"]
${address 2}                                        sahloul
${xpath_postal code}                                //*[@id="mat-input-168"]
${postal code}                                      4000
${xpath_city}                                       //*[@id="mat-input-169"]
${city}                                             Sousse
${xpath_department}                                 //*[@id="mat-input-170"]
${department}                                       Sousse Medina
${xpath_region}                                     //*[@id="mat-input-171"]
${region}                                           Sousse
${xpath_country}                                    //*[@id="mat-input-172"]
${country}                                          Tunisia
${xpath_latitude}                                   //*[@id="mat-input-173"]
${latitude}                                         35.8245029
${xpath_longitude}                                  //*[@id="mat-input-174"]
${longitude}                                        10.634584
${xpath_view place}                                 //*[@id="mat-tab-content-28-0"]/div/div/app-company-main/form/div[2]/div/app-address/div/div[10]/button
${xpath_company save}                               //*[@id="mat-dialog-27"]/ng-component/app-company/div/div/div/button[1]
${xpath_companies owner}                            //*[@id="mat-select-98"]
${xpath_companies search}                           //*[@id="mat-input-154"]
${companies search}                                 companie 1
${xpath_sites}                                      //*[@id="mat-tab-label-26-1"]
${xpath_sites create}                               //*[@id="mat-tab-content-26-1"]/div/app-sites-list/app-table/div/div[1]/div[1]/button[1]
${xpath_site name}                                  //*[@id="mat-input-211"]
${site name}                                        site 1
${xpath_site address 1}                             //*[@id="mat-input-212"]
${site address 1}                                   Sousse
${xpath_site address 2}                             //*[@id="mat-input-213"]
${site address 2}                                   Sahloul
${xpath_site postal code}                           //*[@id="mat-input-214"]
${site postal code}                                 4000
${xpath_site city}                                  //*[@id="mat-input-215"]
${site city}                                        Sousse
${xpath_site department}                            //*[@id="mat-input-216"]
${site department}                                  Sousse Medina
${xpath_site region}                                //*[@id="mat-input-217"]
${site region}                                      Sousse
${xpath_site country}                               //*[@id="mat-input-218"]
${site country}                                     Tunisia
${xpath_site latitude}                              //*[@id="mat-input-220"]
${site latitude}                                    35.8245029
${xpath_site longitude}                             //*[@id="mat-input-221"]
${site longitude}                                   10.634584
${xpath_site company}                               //*[@id="mat-input-219"]
${xpath_site company search}                        //*[@id="mat-input-222"]
${site company search}                              companie 1
${xpath_site select companie 1}                     //*[@id="mat-checkbox-60"]/label/span[1]
${xpath_site assign company submit}                 //*[@id="mat-dialog-36"]/ng-component/div/div/div/button[1]
${xpath_automatic user}                             //*[@id="mat-checkbox-58"]/label/span[1]
${xpath_site is public}                             //*[@id="mat-checkbox-59"]/label/span[1]
${xpath_site save}                                  //*[@id="mat-dialog-37"]/ng-component/app-site/div/div/div/button[1]
${xpath_sites owner}                                //*[@id="mat-select-108"]
${xpath_sites company}                              //*[@id="mat-input-34"]
${xpath_sites company search}                       //*[@id="mat-input-38"]
${sites company search}                             companie 1
${xpath_sites company select companie 1}            //*[@id="mat-checkbox-13"]/label/span[1]
${xpath_sites company submit}                       //*[@id="mat-dialog-6"]/ng-component/div/div/div/button[1]
${xpath_sites search}                               //*[@id="mat-input-33"]
${sites search}                                     site 1
${xpath_site 1 action pricing}                      //*[@id="0"]/td[1]/div[3]/button
${xpath_site 1 pricing create}                      //*[@id="mat-tab-content-14-0"]/div/div/div/app-table/div/div[1]/div/button
${xpath_pricing site 1}                             //*[@id="mat-tab-label-16-0"]
${xpath_site 1 pricing definition}                  //*[@id="mat-input-57"]
${site 1 pricing definition}                        pricing site 1
${xpath_site 1 pricing description}                 //*[@id="mat-input-58"]
${site 1 pricing description}                       site 1 pricing
${xpath_site 1 pricing valid from}                  //*[@id="mat-input-59"]
${site 1 pricing valid from}                        05/01/2023
${xpath_site 1 pricing valid to}                    //*[@id="mat-input-60"]
${site 1 pricing valid to}                          07/01/2023
${xpath_site 1 pricing connector type}              //*[@id="mat-select-36"]
${xpath_site 1 pricing connector type 2}            //*[@id="mat-option-44"]
${xpath_site 1 pricing connector type 2 CCS}        //*[@id="mat-option-45"]
${xpath_site 1 pricing connector CHAdeMO}           //*[@id="mat-option-46"]
${xpath_site 1 pricing connector type 1}            //*[@id="mat-option-47"]
${xpath_site 1 pricing connector type 1 CCS}        //*[@id="mat-option-48"]
${xpath_site 1 pricing connector Domestic}          //*[@id="mat-option-49"]
${xpath_site 1 pricing connector all connectors}    //*[@id="mat-option-43"]
${xpath_site 1 pricing roaming}                     //*[@id="mat-checkbox-18"]
${xpath_site 1 pricing connector power}             //*[@id="connectorPower"]/label/div/div/div[1]
${xpath_site 1 pricing kW}                          //*[@id="mat-input-61"]
${site 1 pricing kW}                                2000
${xpath_pricing dimensions}                         //*[@id="mat-tab-label-16-1"]
${xpath_pricing dimensions Flat Fee}                //*[@id="flatFee"]/label/div/div/div[1]
${xpath_pricing dimensions session}                 //*[@id="mat-input-62"]
${pricing dimensions session}                       1
${xpath_pricing dimensions Energy}                  //*[@id="energy"]/label/div/div/div[1]
${xpath_pricing dimensions kWh}                     //*[@id="mat-input-63"]
${pricing dimensions kWh}                           500
${xpath_pricing dimensions Energy step}             //*[@id="energyStep"]
${xpath_pricing dimensions Energy step Wh}          //*[@id="mat-input-64"]
${pricing dimensions Energy step Wh}                800
${xpath_pricing dimensions Charging Time}           //*[@id="energy"]/label/div/div/div[1]
${xpath_pricing dimensions charging hour}           //*[@id="chargingTime"]
${pricing dimensions Charging hour}                 20
${xpath_pricing dimensions charging step}           //*[@id="chargingTimeStep"]
${xpath_pricing dimensions charging step min}        //*[@id="mat-input-66"]
${pricing dimensions charging step min}              15
${xpath_pricing dimensions Parking Time}            //*[@id="parkingTime"]/label/div
${xpath_pricing dimensions parking hour}            //*[@id="parkingTime"]
${pricing dimensions Parking hour}                  5
${xpath_pricing dimensions parking step}            //*[@id="parkingTimeStep"]
${xpath_pricing dimensions parking step min}        //*[@id="mat-input-68"]
${pricing dimensions parking step min}              17
${xpath_pricing restrictions}                       //*[@id="mat-tab-label-16-2"]
${xpath_pricing restrictions min duration}          //*[@id="minDuration"]
${xpath_pricing restrictions min duration min}      //*[@id="mat-input-69"]
${pricing restrictions min duration min}            8
${xpath_pricing restrictions max duration}          //*[@id="maxDuration"]
${xpath_pricing restrictions max duration min}      //*[@id="mat-input-70"]
${pricing restrictions max duration min}            50
${xpath_pricing restrictions min energy}            //*[@id="minEnergyKWh"]
${xpath_pricing restrictions min energy kWh}        //*[@id="mat-input-71"]
${pricing restrictions min energy kWh}              150
${xpath_pricing restrictions max energy}            //*[@id="maxEnergyKWh"]
${xpath_pricing restrictions max energy kWh}        //*[@id="mat-input-72"]
${pricing restrictions max energy kWh}              2500
${xpath_pricing restrictions time range}            //*[@id="timeFrom"]/label/div/div/div[1]
${xpath_pricing restrictions start time}            //*[@id="timeFrom"]
${pricing restrictions start time}                  0815
${xpath_pricing restrictions end time}              //*[@id="timeTo"]
${pricing restrictions end time}                    1830
${xpath_pricing restrictions days of week}          //*[@id="daysOfWeek"]
${xpath_pricing restrictions day Mon}               //*[@id="mat-button-toggle-9-button"]
${xpath_pricing restrictions day Tue}               //*[@id="mat-button-toggle-10-button"]
${xpath_pricing restrictions day Wed}               //*[@id="mat-button-toggle-11-button"]
${xpath_pricing restrictions day Thu}               //*[@id="mat-button-toggle-12-button"]
${xpath_pricing restrictions day Fri}               //*[@id="mat-button-toggle-13-button"]
${xpath_pricing restrictions day Sat}               //*[@id="mat-button-toggle-14-button"]
${xpath_pricing restrictions day Sun}               //button[@id='mat-button-toggle-15-button']
${xpath_pricing create save}                        //*[@id="mat-dialog-10"]/ng-component/app-pricing-definition/div/div/form/div/button[1]
${xpath_pricing create close}                       //*[@id="mat-dialog-10"]/ng-component/app-pricing-definition/div/div/form/div/button[2]
${xpath_pricing create do not save and close}       //*[@id="mat-dialog-12"]/ng-component/mat-dialog-actions/button[1]
${xpath_site 1 action pricing close}                //*[@id="mat-dialog-14"]/ng-component/app-pricing-definitions/div/div/div/button
${xpath_site 1 action edit user}                    //*[@id="0"]/td[1]/div[2]/button
${xpath_site 1 user add}                            //*[@id="mat-tab-content-25-0"]/div/div/div/app-table/div/div[1]/div[1]/button[1]
${xpath_site 1 user add search}                     //*[@id="mat-input-117"]
${site 1 user add search}                           ADMIN
${xpath_site 1 user add ADMIN}                      //*[@id="mat-checkbox-41"]/label/span[1]
${xpath_site 1 user add submit}                     //*[@id="mat-dialog-22"]/ng-component/div/div/div/button[1]
${xpath_site 1 edit user search}                    //*[@id="mat-input-116"]
${site 1 edit user search}                          ADMIN
${xpath_site 1 user edit ADMIN}                     //*[@id="mat-checkbox-53"]/label/span[1]
${xpath_site 1 user ADMIN remove}                   //*[@id="mat-tab-content-25-0"]/div/div/div/app-table/div/div[1]/div[1]/button[2]
${xpath_site 1 user ADMIN remove Yes}               //*[contains(text(),'Yes')]
${xpath_site 1 action edit user exit}               //*[@id="mat-dialog-21"]/ng-component/div/div/div/button
${xpath_site 1 more actions}                        //*[@id="0"]/td[1]/button
${xpath_site 1 more actions delete}                 //*[@id="mat-menu-panel-11"]/div/div/button[4]
${xpath_site 1 more actions delete Yes}             //*[contains(text(),'Yes')]

${xpath_organization site areas}                    //*[@id="mat-tab-label-8-2"]
${xpath_site areas create}                          //*[@id="mat-tab-content-8-2"]/div/app-site-areas-list/app-table/div/div[1]/div[1]/button[1]
${xpath_}
${xpath_}

*** Keywords ***
Create companie
    Press Keys                      ${xpath_companie create}                    \\13
    Press Keys                      ${xpath_companie name}                  ${companie name}
    Press Keys                      ${xpath_address 1}                      ${address 1}
    Press Keys                      ${xpath_address 2}                      ${address 2}
    Press Keys                      ${xpath_postal code}                    ${postal code}
    Press Keys                      ${xpath_city}                           ${city}
    Press Keys                      ${xpath_department}                     ${department}
    Press Keys                      ${xpath_region}                         ${region}
    Press Keys                      ${xpath_country}                        ${country}
    Press Keys                      ${xpath_latitude}                       ${latitude}
    Press Keys                      ${xpath_longitude}                      ${longitude}
#    Click Element                   ${xpath_view place}
    Click Element                   ${xpath_company save}
    Sleep    4s


Create site
    Press Keys                      ${xpath_sites create}                   \\13
    Press Keys                      ${xpath_site name}                          ${site name}
    Press Keys                      ${xpath_site address 1}                     ${site address 1}
    Press Keys                      ${xpath_site address 2}                     ${site address 2}
    Press Keys                      ${xpath_site postal code}                   ${site postal code}
    Press Keys                      ${xpath_site city}                          ${site city}
    Press Keys                      ${xpath_site department}                    ${site department}
    Press Keys                      ${xpath_site region}                        ${site region}
    Press Keys                      ${xpath_site country}                       ${site country}
    Press Keys                      ${xpath_site latitude}                      ${site latitude}
    Press Keys                      ${xpath_site longitude}                     ${site longitude}
    Click Element                   ${xpath_site company}
    Press Keys                      ${xpath_site company search}                ${site company search}
    Press Keys                      ${xpath_site select companie 1}         \\13
    Click Element                   ${xpath_site assign company submit}
    Press Keys                      ${xpath_automatic user}                 \\13
    Press Keys                      ${xpath_site is public}                 \\13
    Click Element                   ${xpath_site save}
    Sleep           3s


Testing Owner
    [Arguments]                     ${xpath_companies owner}                  ${xpath_companies}
    Press Keys                      ${xpath_companies owner}                  \\13
    ${CO}=  Get Element Attribute   ${xpath_companies owner}                  aria-expanded
    Should Be Equal As Strings      ${CO}                           true
    Select From List By Label       ${xpath_companies owner}                  Current Organization
    Double Click Element            ${xpath_companies}
    page should contain             Current Organization
    Press Keys                      ${xpath_companies owner}                  \\13
    Select From List By Label       ${xpath_companies owner}                  External Organization
    Double Click Element            ${xpath_companies}
    Page Should Contain             External Organization
    Press Keys                      ${xpath_companies owner}                  \\13
    Select From List By Label       ${xpath_companies owner}                  Current Organization
    Select From List By Label       ${xpath_companies owner}                  External Organization
    Double Click Element            ${xpath_companies}
    Page Should Contain             Current Organization (+1)

Select Connector type
        FOR    ${i}    IN RANGE    1    8
        click element               ${xpath_site 1 pricing connector type}
        IF    ${i} == 1
            click element           ${xpath_site 1 pricing connector type 2}
            Page Should Contain     Type 2
        END
        IF    ${i} == 2
            click element           ${xpath_site 1 pricing connector type 2 CCS}
            Page Should Contain     Type 2 - Combo CCS
        END
        IF    ${i} == 3
            click element           ${xpath_site 1 pricing connector CHAdeMO}
            Page Should Contain     CHAdeMO
        END
        IF    ${i} == 4
            click element           ${xpath_site 1 pricing connector type 1}
            Page Should Contain     Type 1
        END
        IF    ${i} == 5
            click element           ${xpath_site 1 pricing connector type 1 CCS}
            Page Should Contain     Type 1 - Combo CCS
        END
        IF    ${i} == 6
            click element           ${xpath_site 1 pricing connector Domestic}
            Page Should Contain     Domestic
        END
        IF    ${i} == 7
            click element           ${xpath_site 1 pricing connector all connectors}
            Page Should Contain     All Connectors
        END
    END

Testing Pricing Dimensions
    Click Element                   ${xpath_pricing dimensions}
    Press Keys                      ${xpath_pricing dimensions Flat Fee}            \\13
    Press Keys                      ${xpath_pricing dimensions session}             ${pricing dimensions session}
    Press Keys                      ${xpath_pricing dimensions Energy}              \\13
    Press Keys                      ${xpath_pricing dimensions kWh}                 ${pricing dimensions kWh}
    Press Keys                      ${xpath_pricing dimensions Energy step}         \\13
    Press Keys                      ${xpath_pricing dimensions Energy step Wh}      ${pricing dimensions Energy step Wh}
    Press Keys                      ${xpath_pricing dimensions Charging Time}       \\13
    Press Keys                      ${xpath_pricing dimensions charging hour}       ${pricing dimensions Charging hour}
    Press Keys                      ${xpath_pricing dimensions charging step}       \\13
    Press Keys                      ${xpath_pricing dimensions charging step min}    ${pricing dimensions charging step min}
    Press Keys                      ${xpath_pricing dimensions Parking Time}        \\13
    Press Keys                      ${xpath_pricing dimensions parking hour}        ${pricing dimensions Parking hour}
    Press Keys                      ${xpath_pricing dimensions parking step}        \\13
    Press Keys                      ${xpath_pricing dimensions parking step min}    ${pricing dimensions parking step min}

Testing Pricing Restrictions
    Click Element                   ${xpath_pricing restrictions}
    Press Keys                      ${xpath_pricing restrictions min duration}              \\13
    Press Keys                      ${xpath_pricing restrictions min duration min}          ${pricing restrictions min duration min}
    Press Keys                      ${xpath_pricing restrictions max duration}              \\13
    Press Keys                      ${xpath_pricing restrictions max duration min}          ${pricing restrictions max duration min}
    Press Keys                      ${xpath_pricing restrictions min energy}                \\13
    Press Keys                      ${xpath_pricing restrictions min energy kWh}            ${pricing restrictions min energy kWh}
    Press Keys                      ${xpath_pricing restrictions max energy}                \\13
    Press Keys                      ${xpath_pricing restrictions max energy kWh}            ${pricing restrictions max energy kWh}
    Press Keys                      ${xpath_pricing restrictions time range}                \\13
    Press Keys                      ${xpath_pricing restrictions start time}                ${pricing restrictions start time}
    Press Keys                      ${xpath_pricing restrictions end time}                  ${pricing restrictions end time}
    Press Keys                      ${xpath_pricing restrictions days of week}              \\13
    Click Element                   ${xpath_pricing restrictions day Mon}
    Click Element                   ${xpath_pricing restrictions day Tue}
    Click Element                   ${xpath_pricing restrictions day Wed}
    Click Element                   ${xpath_pricing restrictions day Thu}
    Click Element                   ${xpath_pricing restrictions day Fri}
    Click Element                   ${xpath_pricing restrictions day Sat}
    Click Element                   ${xpath_pricing restrictions day Sun}

Verify File Download
    [Documentation]      This test case verifies that a user can successfully download a file
    ${chrome options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    ${prefs}  Create Dictionary
    ...  download.default_directory=/Users/alapan/PycharmProjects/Robot-Framework/Resources/Download
    Call Method  ${chrome options}  add_experimental_option  prefs  ${prefs}
    Create Webdriver  Chrome  chrome_options=${chrome options}
    Go To  https://the-internet.herokuapp.com/download
    Click Link  css:[href="download/sunset.jpg"]
    Sleep  5s
    ${files}  List Files In Directory  /Users/alapan/PycharmProjects/Robot-Framework/Resources/Download
    Length Should Be  ${files}  1
    Close Browser

DownloadDirectoryChangeForSession
    ${prefs} =    Create Dictionary    download.default_directory=C:\\Balaji
    Open Browser    url=https://www.selenium.dev/downloads/    browser=chrome    options=add_experimental_option("prefs",${prefs})
    Maximize Browser Window
    Click Element    partial link=32 bit
    File Should Exist    C:\\Components\\chromedriver_win32.zip

Create site areas
    Press Keys                      ${xpath_site areas create}                   \\13

*** Test Cases ***
testing organization
    Click Element                   ${xpath_organization}
    Click Element                   ${xpath_companies}
    Create companie
    Testing Owner                   ${xpath_companies owner}                    ${xpath_companies}
    Press Keys                      ${xpath_companies search}                   ${companies search}
    Click Element                   ${xpath_sites}
    Create site
    Testing Owner                   ${xpath_sites owner}                        ${xpath_sites}
    Click Element                   ${xpath_sites company}
    Press Keys                      ${xpath_sites company search}               ${sites company search}
    Press Keys                      ${xpath_sites company select companie 1}    \\13
    Click Element                   ${xpath_sites company submit}
    Press Keys                      ${xpath_sites search}                       ${sites search}
    Click Element                   ${xpath_site 1 action pricing}
    Click Element                   ${xpath_site 1 pricing create}
    Click Element                   ${xpath_pricing site 1}
    Press Keys                      ${xpath_site 1 pricing definition}          ${site 1 pricing definition}
    Press Keys                      ${xpath_site 1 pricing description}         ${site 1 pricing description}
    Press Keys                      ${xpath_site 1 pricing valid from}          ${site 1 pricing valid from}
    Press Keys                      ${xpath_site 1 pricing valid to}            ${site 1 pricing valid to}
    Select Connector type
    Press Keys                      ${xpath_site 1 pricing roaming}             \\13
    Press Keys                      ${xpath_site 1 pricing connector power}     \\13
    Press Keys                      ${xpath_site 1 pricing kW}                  ${site 1 pricing kW}
    Testing Pricing Dimensions
    Testing Pricing Restrictions
#    Click Element                   ${xpath_pricing create save}
    Click Element                   ${xpath_pricing create close}
    Click Element                   ${xpath_pricing create do not save and close}
    Click Element                   ${xpath_site 1 action pricing close}
    Click Element                   ${xpath_site 1 action edit user}
    Click Element                   ${xpath_site 1 user add}
    Press Keys                      ${xpath_site 1 user add search}               ${site 1 user add search}
    Press Keys                      ${xpath_site 1 user add ADMIN}             \\13
    Click Element                   ${xpath_site 1 user add submit}
    Page Should Contain             The user(s) have been added successfully
    Press Keys                      ${xpath_site 1 edit user search}               ${site 1 edit user search}
    Press Keys                      ${xpath_site 1 user edit ADMIN}             \\13
    Click Element                   ${xpath_site 1 user ADMIN remove}
    Click Element                   ${xpath_site 1 user ADMIN remove Yes}
    Page Should Contain             The user(s) have been removed successfully
    Click Element                   ${xpath_site 1 action edit user exit}
    Click Element                   ${xpath_site 1 more actions}
    Click Element                   ${xpath_site 1 more actions delete}
    Click Element                   ${xpath_site 1 more actions delete Yes}

    Click Element                   ${xpath_organization site areas}










