*** Settings ***
Documentation   Testing Sign in in admin
Library         SeleniumLibrary

*** Variables ***
${xpath_dashboard}                                               //*[contains(text(),'Dashboard')]
${xpath_users}                                                   //*[contains(text(),'Users')]
${xpath_RFID Cards}                                              //*[contains(text(),'RFID Cards')]
${xpath_Charging Stations}                                       //*[contains(text(),'Charging Stations')]
${xpath_Sessions}                                                //*[contains(text(),'Sessions')]
${xpath_users charts}                                            id:pieChartUsers
${xpath_Charging Stations charts}                                id:pieChartChargingStations

${xpath_Consumption}                                             //*[contains(text(),'Consumption')]
${xpath_Consumption Export}                                      //*[contains(text(),'Export')]
${xpath_Export Consumption Data Yes}                             //*[contains(text(),'Yes')]
${xpath_Export Consumption Data No}                              //*[contains(text(),'No')]
${xpath_Consumption Reset Filters}                               //*[contains(text(),'Reset Filters')]
${xpath_Consumption Months}                                      //*[contains(text(),'Months')]
${xpath_Consumption Total}                                       //*[contains(text(),'Total')]
${xpath_Consumption Category}                                    //*[@id="mat-select-10"]
${xpath_Consumption Category Charging Stations}                  id:mat-option-0
${xpath_Consumption Category User}                               id:mat-option-1
${xpath_Consumption Year}                                        //*[@id="mat-select-0"]
${xpath_Consumption Year 2023}                                   id:mat-option-10
${xpath_Consumption Year <All>}                                  id:mat-option-11

${xpath_Consumption Date}                                        //*[@id="mat-input-2"]
${Consumption Date}                                              Feb 1, 2023 12:00 AM - Apr 18, 2023 11:59 PM
${xpath_Consumption Date Button Apply}                           //*[contains(text(),'Apply')]
${xpath_Consumption Sites}                                       //*[@id="mat-input-3"]
${xpath_Consumption Sites Table}                                 id:mat-dialog-2
${xpath_Consumption Sites Table Exit}                            //*[@id="mat-dialog-2"]/ng-component/div/div/div/button[2]

${xpath_Consumption Site Areas}                                  //*[@id="mat-input-4"]
${xpath_Consumption Site Areas Table}                            id:mat-dialog-3
${xpath_Consumption Site Areas Table Exit}                       //*[@id="mat-dialog-3"]/ng-component/div/div/div/button[2]
${xpath_Consumption SELECT CHARGING STATION}                     //*[@id="mat-input-5"]
${xpath_Consumption SELECT CHARGING STATION Table}               //*[@id="mat-dialog-4"]
${xpath_Consumption SELECT CHARGING STATION Table Exit}          //*[@id="mat-dialog-4"]/ng-component/div/div/div/button[2]
${xpath_Consumption SELECT USER}                                 //*[@id="mat-input-6"]
${xpath_Consumption SELECT USER Table}                           //*[@id="mat-dialog-5"]
${xpath_Consumption SELECT USER Table Exit}                      //*[@id="mat-dialog-5"]/ng-component/div/div/div/button[2]

${xpath_Usage}                                                   //*[contains(text(),'Usage')]
${xpath_Usage Export}                                            //*[contains(text(),'Export')]
${xpath_Export Usage Data Yes}                                   //*[contains(text(),'Yes')]
${xpath_Export Usage Data No}                                    //*[contains(text(),'No')]
${xpath_Usage Reset Filters}                                     //*[contains(text(),'Reset Filters')]
${xpath_Usage Total}                                             //*[contains(text(),'Total')]
${xpath_Usage Months}                                            //*[contains(text(),'Months')]
${xpath_Usage Category}                                          //*[@id="mat-select-12"]
${xpath_Usage Category Charging Stations}                        id:mat-option-2
${xpath_Usage Category User}                                     id:mat-option-3
${xpath_Usage Year}                                              //*[@id="mat-select-2"]
${xpath_Usage Year 2023}                                         id:mat-option-12
${xpath_Usage Year <All>}                                        id:mat-option-13

${xpath_Usage Date}                                              //*[@id="mat-input-11"]
${Usage Date}                                                    Jan 1, 2023 12:00 AM - Jan 1, 2024 12:00 AM
${xpath_Usage Date Button Apply}                                 //*[contains(text(),'Apply')]
${xpath_Usage Sites}                                             //*[@id="mat-input-12"]
${xpath_Usage Sites Table}                                       //*[@id="mat-dialog-8"]
${xpath_Usage Sites Table Exit}                                  //*[@id="mat-dialog-8"]/ng-component/div/div/div/button[2]/span[1]/mat-icon
${xpath_Usage Site Areas}                                        //*[@id="mat-input-13"]
${xpath_Usage Site Areas Table}                                  //*[@id="mat-dialog-9"]
${xpath_Usage Site Areas Table Exit}                             //*[@id="mat-dialog-9"]/ng-component/div/div/div/button[2]/span[1]/mat-icon
${xpath_Usage SELECT CHARGING STATION}                           //*[@id="mat-input-14"]
${xpath_Usage SELECT CHARGING STATION Table}                     //*[@id="mat-dialog-10"]
${xpath_Usage SELECT CHARGING STATION Table Exit}                //*[@id="mat-dialog-10"]/ng-component/div/div/div/button[2]/span[1]/mat-icon
${xpath_Usage SELECT USER}                                       //*[@id="mat-input-15"]
${xpath_Usage SELECT USER Table}                                 //*[@id="mat-dialog-11"]
${xpath_Usage SELECT USER Table Exit}                            //*[@id="mat-dialog-11"]/ng-component/div/div/div/button[2]/span[1]/mat-icon

${xpath_Inactivity}                                              //*[contains(text(),'Inactivity')]
${xpath_Inactivity Export}                                       //*[contains(text(),'Export')]
${xpath_Inactivity Usage Data Yes}                               //*[contains(text(),'Yes')]
${xpath_Inactivity Usage Data No}                                //*[contains(text(),'No')]
${xpath_Inactivity Reset Filters}                                //*[contains(text(),'Reset Filters')]
${xpath_Inactivity Total}                                        //*[contains(text(),'Total')]
${xpath_Inactivity Months}                                       //*[contains(text(),'Months')]
${xpath_Inactivity Category}                                     //*[@id="mat-select-14"]
${xpath_Inactivity Category Charging Stations}                   id:mat-option-4
${xpath_Inactivity Category User}                                id:mat-option-5
${xpath_Inactivity Year}                                         //*[@id="mat-select-4"]
${xpath_Inactivity Year 2023}                                    id:mat-option-14
${xpath_Inactivity Year <All>}                                   id:mat-option-15

${xpath_Inactivity Date}                                         //*[@id="mat-input-12"]
${Inactivity Date}                                               Jan 1, 2023 12:00 AM - Jan 1, 2024 12:00 AM
${xpath_Inactivity Date Button Apply}                            //*[contains(text(),'Apply')]
${xpath_Inactivity Sites}                                        //*[@id="mat-input-13"]
${xpath_Inactivity Sites Table}                                  //*[@id="mat-dialog-0"]
${xpath_Inactivity Sites Table Exit}                             //*[@id="mat-dialog-0"]/ng-component/div/div/div/button[2]/span[1]/mat-icon
${xpath_Inactivity Site Areas}                                   //*[@id="mat-input-14"]
${xpath_Inactivity Site Areas Table}                             //*[@id="mat-dialog-1"]
${xpath_Inactivity Site Areas Table Exit}                        //*[@id="mat-dialog-1"]/ng-component/div/div/div/button[2]/span[1]/mat-icon
${xpath_Inactivity SELECT CHARGING STATION}                      //*[@id="mat-input-15"]
${xpath_Inactivity SELECT CHARGING STATION Table}                //*[@id="mat-dialog-2"]
${xpath_Inactivity SELECT CHARGING STATION Table Exit}           //*[@id="mat-dialog-2"]/ng-component/div/div/div/button[2]/span[1]/mat-icon
${xpath_Inactivity SELECT USER}                                  //*[@id="mat-input-16"]
${xpath_Inactivity SELECT USER Table}                            //*[@id="mat-dialog-3"]
${xpath_Inactivity SELECT USER Table Exit}                       //*[@id="mat-dialog-3"]/ng-component/div/div/div/button[2]/span[1]/mat-icon

${xpath_Sessions}                                                //*[contains(text(),'Sessions')]
${xpath_Sessions Export}                                         //*[contains(text(),'Export')]
${xpath_Sessions Usage Data Yes}                                 //*[contains(text(),'Yes')]
${xpath_Sessions Usage Data No}                                  //*[contains(text(),'No')]
${xpath_Sessions Reset Filters}                                  //*[contains(text(),'Reset Filters')]
${xpath_Sessions Total}                                          //*[contains(text(),'Total')]
${xpath_Sessions Months}                                         //*[contains(text(),'Months')]
${xpath_Sessions Category}                                       //*[@id="mat-select-266"]
${xpath_Sessions Category Charging Stations}                     id:mat-option-6
${xpath_Sessions Category User}                                  id:mat-option-7
${xpath_Sessions Year}                                           //*[@id="mat-select-256"]
${xpath_Sessions Year 2023}                                      id:mat-option-16
${xpath_Sessions Year <All>}                                     id:mat-option-17

${xpath_Sessions Date}                                           //*[@id="mat-input-318"]
${Sessions Date}                                                 Jan 1, 2023 12:00 AM - Jan 1, 2024 12:00 AM
${xpath_Sessions Date Button Apply}                              //*[contains(text(),'Apply')]
${xpath_Sessions Sites}                                          //*[@id="mat-input-319"]
${xpath_Sessions Sites Table}                                    //*[@id="mat-dialog-9"]
${xpath_Sessions Sites Table Exit}                               //*[@id="mat-dialog-9"]/ng-component/div/div/div/button[2]/span[1]/mat-icon
${xpath_Sessions Site Areas}                                     //*[@id="mat-input-320"]
${xpath_Sessions Site Areas Table}                               //*[@id="mat-dialog-12"]
${xpath_Sessions Site Areas Table Exit}                          //*[@id="mat-dialog-12"]/ng-component/div/div/div/button[2]/span[1]/mat-icon
${xpath_Sessions SELECT CHARGING STATION}                        //*[@id="mat-input-321"]
${xpath_Sessions SELECT CHARGING STATION Table}                  //*[@id="mat-dialog-13"]
${xpath_Sessions SELECT CHARGING STATION Table Exit}             //*[@id="mat-dialog-13"]/ng-component/div/div/div/button[2]/span[1]/mat-icon
${xpath_Sessions SELECT USER}                                    //*[@id="mat-input-322"]
${xpath_Sessions SELECT USER Table}                              //*[@id="mat-dialog-14"]
${xpath_Sessions SELECT USER Table Exit}                         //*[@id="mat-dialog-14"]/ng-component/div/div/div/button[2]/span[1]/mat-icon

${xpath_Pricing}                                                 //*[contains(text(),'Pricing')]
${xpath_Pricing Export}                                          //*[contains(text(),'Export')]
${xpath_Pricing Usage Data Yes}                                  //*[contains(text(),'Yes')]
${xpath_Pricing Usage Data No}                                   //*[contains(text(),'No')]
${xpath_Pricing Reset Filters}                                   //*[contains(text(),'Reset Filters')]
${xpath_Pricing Total}                                           //*[contains(text(),'Total')]
${xpath_Pricing Months}                                          //*[contains(text(),'Months')]
${xpath_Pricing Category}                                        //*[@id="mat-select-274"]
${xpath_Pricing Category Charging Stations}                      id:mat-option-8
${xpath_Pricing Category User}                                   id:mat-option-9
${xpath_Pricing Year}                                            //*[@id="mat-select-value-265"]
${xpath_Pricing Year 2023}                                       id:mat-option-18
${xpath_Pricing Year <All>}                                      id:mat-option-19

${xpath_Pricing Date}                                            //*[@id="mat-input-338"]
${Pricing Date}                                                  Jan 1, 2023 12:00 AM - Jan 1, 2024 12:00 AM
${xpath_Pricing Date Button Apply}                               //*[contains(text(),'Apply')]
${xpath_Pricing Sites}                                           //*[@id="mat-input-339"]
${xpath_Pricing Sites Table}                                     //*[@id="mat-dialog-16"]
${xpath_Pricing Sites Table Exit}                                //*[@id="mat-dialog-16"]/ng-component/div/div/div/button[2]/span[1]/mat-icon
${xpath_Pricing Site Areas}                                      //*[@id="mat-input-340"]
${xpath_Pricing Site Areas Table}                                //*[@id="mat-dialog-17"]
${xpath_Pricing Site Areas Table Exit}                           //*[@id="mat-dialog-17"]/ng-component/div/div/div/button[2]/span[1]/mat-icon
${xpath_Pricing SELECT CHARGING STATION}                         //*[@id="mat-input-341"]
${xpath_Pricing SELECT CHARGING STATION Table}                   //*[@id="mat-dialog-18"]
${xpath_Pricing SELECT CHARGING STATION Table Exit}              //*[@id="mat-dialog-18"]/ng-component/div/div/div/button[2]/span[1]/mat-icon
${xpath_Pricing SELECT USER}                                     //*[@id="mat-input-342"]
${xpath_Pricing SELECT USER Table}                               //*[@id="mat-dialog-19"]
${xpath_Pricing SELECT USER Table Exit}                          //*[@id="mat-dialog-19"]/ng-component/div/div/div/button[2]/span[1]/mat-icon


*** Keywords ***
Consumption Export Yes
    click element                   ${xpath_Export Consumption Data Yes}
Consumption Export No
    click element                   ${xpath_Export Consumption Data No}
Usage Export Yes
    click element                   ${xpath_Export Usage Data Yes}
Usage Export No
    click element                   ${xpath_Export Usage Data No}
Usage Inactivity Yes
    click element                   ${xpath_Inactivity Usage Data Yes}
Usage Inactivity No
    click element                   ${xpath_Inactivity Usage Data No}
Usage Sessions Yes
    click element                   ${xpath_Sessions Usage Data Yes}
Usage Sessions No
    click element                   ${xpath_Sessions Usage Data No}
Usage Pricing Yes
    click element                   ${xpath_Pricing Usage Data Yes}
Usage Pricing No
    click element                   ${xpath_Pricing Usage Data No}

Scroll To Element
    [Arguments]  ${locator}
    ${x}=        Get Horizontal Position  ${locator}
    ${y}=        Get Vertical Position    ${locator}
    Execute Javascript  window.scrollTo(${x}, ${y})


*** Test Cases ***
tester dashboard
    Press Keys                      ${xpath_dashboard}              \\13
    page should contain element     ${xpath_users}
    page should contain element     ${xpath_RFID Cards}
    page should contain element     ${xpath_Charging Stations}
    page should contain element     ${xpath_Sessions}
    page should contain element     ${xpath_users charts}
    page should contain element     ${xpath_Charging Stations charts}

tester dashboard consumption
    Execute Javascript  window.scrollTo(180, 760)
    Sleep    2s
    page should contain element     ${xpath_Consumption}

    FOR    ${i}    IN RANGE    1    3
        Press Keys                      ${xpath_Consumption Export}            \\13
        Run Keyword If    ${i} == 1    Consumption Export Yes
        Sleep    2s
        Run Keyword If    ${i} == 2    Consumption Export No
    END
    page should contain element     ${xpath_Consumption Reset Filters}
    page should contain element     ${xpath_Consumption Months}
    page should contain element     ${xpath_Consumption Total}
    FOR    ${i}    IN RANGE    1    3
        click element               ${xpath_Consumption Category}
        IF    ${i} == 1
            click element           ${xpath_Consumption Category Charging Stations}
            ${CC}=  Get Element Attribute    ${xpath_Consumption Category}      ng-reflect-value
            Should Be Equal As Strings      ${CC}         C
        END
        Sleep    2s
        IF    ${i} == 2
            click element           ${xpath_Consumption Category User}
            ${CU}=  Get Element Attribute    ${xpath_Consumption Category}      ng-reflect-value
            Should Be Equal As Strings      ${CU}         U
        END
    END
    FOR    ${i}    IN RANGE    1    3
        Sleep       4s
        click element               ${xpath_Consumption Year}
        IF    ${i} == 1
            click element                   ${xpath_Consumption Year 2023}
            ${C2}=  Get Element Attribute    ${xpath_Consumption Year}      ng-reflect-value
            Should Be Equal As Numbers      ${C2}         2023
        END
        Sleep    2s
        IF    ${i} == 2
            click element                   ${xpath_Consumption Year <All>}
            ${CA}=  Get Element Attribute    ${xpath_Consumption Year}      ng-reflect-value
            Should Be Equal As Numbers      ${CA}         0
        END
    END
    Sleep    7s
#    Press Keys                      ${xpath_Consumption Date}            \\13
#    click element                   ${xpath_Consumption Date}
#    Clear Element Text              ${xpath_Consumption Date}
    Press Keys                      ${xpath_Consumption Date}       CTRL+a      BACKSPACE
    Input Text                      ${xpath_Consumption Date}           ${Consumption Date}
    click button                    ${xpath_Consumption Date Button Apply}
    Sleep    3s

    click element                   ${xpath_Consumption Sites}
    Sleep    3s
    page should contain element     ${xpath_Consumption Sites Table}
    click element                   ${xpath_Consumption Sites Table Exit}

    Press Keys                      ${xpath_Consumption Site Areas}              \\13
    Sleep    3s
    page should contain element     ${xpath_Consumption Site Areas Table}

    Click Element                   ${xpath_Consumption Site Areas Table Exit}
#    Click Button                    ${xpath_Consumption Site Areas Table Exit}
#    click element                   ${xpath_Consumption Site Areas Table Exit}
    click element                   ${xpath_Consumption SELECT CHARGING STATION}
    page should contain element     ${xpath_Consumption SELECT CHARGING STATION Table}
    click element                   ${xpath_Consumption SELECT CHARGING STATION Table Exit}
    click element                   ${xpath_Consumption SELECT USER}
    page should contain element     ${xpath_Consumption SELECT USER Table}
    Click Element                   ${xpath_Consumption SELECT USER Table Exit}

tester dashboard Usage
    Execute Javascript  window.scrollTo(180, 1520)
    Sleep    2s
    Page Should Contain Element     ${xpath_Usage}
    FOR    ${i}    IN RANGE    1    3
        Press Keys                      ${xpath_Usage Export}            \\13
        Run Keyword If    ${i} == 1    Usage Export Yes
        Sleep    2s
        Run Keyword If    ${i} == 2    Usage Export No
    END
    click element       ${xpath_Usage Reset Filters}
    click element       ${xpath_Usage Total}
    click element       ${xpath_Usage Months}
    FOR    ${i}    IN RANGE    1    3
        click element                   ${xpath_Usage Category}
        IF    ${i} == 1
            click element                   ${xpath_Usage Category Charging Stations}
            ${UC}=  Get Element Attribute    ${xpath_Usage Category}      ng-reflect-value
            Should Be Equal As Strings      ${UC}         C
        END
        IF    ${i} == 2
            click element                   ${xpath_Usage Category User}
            ${UU}=  Get Element Attribute    ${xpath_Usage Category}      ng-reflect-value
            Should Be Equal As Strings      ${UU}         U
        END
    END
    FOR    ${i}    IN RANGE    1    3
        Sleep       2s
        click element                   ${xpath_Usage Year}
        IF    ${i} == 1
            click element                   ${xpath_Usage Year 2023}
            ${U2}=  Get Element Attribute    ${xpath_Usage Year}      ng-reflect-value
            Should Be Equal As Numbers      ${U2}         2023
        END
        IF    ${i} == 2
            click element                   ${xpath_Usage Year <All>}
            ${UA}=  Get Element Attribute    ${xpath_Usage Year}      ng-reflect-value
            Should Be Equal As Numbers      ${UA}         0
        END
    END
    Sleep    3s
    Press Keys                      ${xpath_Usage Date}       CTRL+a      BACKSPACE
    Input Text                      ${xpath_Usage Date}           ${Usage Date}
    click button                    ${xpath_Usage Date Button Apply}
    Sleep    3s
    click element                   ${xpath_Usage Sites}
    page should contain element     ${xpath_Usage Sites Table}
    click element                   ${xpath_Usage Sites Table Exit}
    click element                   ${xpath_Usage Site Areas}
    page should contain element     ${xpath_Usage Site Areas Table}
    click element                   ${xpath_Usage Site Areas Table Exit}
    click element                   ${xpath_Usage SELECT CHARGING STATION}
    page should contain element     ${xpath_Usage SELECT CHARGING STATION Table}
    click element                   ${xpath_Usage SELECT CHARGING STATION Table Exit}
    click element                   ${xpath_Usage SELECT USER}
    page should contain element     ${xpath_Usage SELECT USER Table}
    Click Element                   ${xpath_Usage SELECT USER Table Exit}

tester dashboard Inactivity
    Execute Javascript  window.scrollTo(180, 2300)
    Sleep    2s
    Page Should Contain Element     ${xpath_Inactivity}
    FOR    ${i}    IN RANGE    1    3
        click element                    ${xpath_Inactivity Export}
        Run Keyword If    ${i} == 1    Inactivity Export Yes
        Sleep    2s
        Run Keyword If    ${i} == 2    Inactivity Export No
    END
    click element       ${xpath_Inactivity Reset Filters}
    click element       ${xpath_Inactivity Total}
    click element       ${xpath_Inactivity Months}
    FOR    ${i}    IN RANGE    1    3
        click element                   ${xpath_Inactivity Category}
        IF    ${i} == 1
            click element                   ${xpath_Inactivity Category Charging Stations}
            ${IC}=  Get Element Attribute    ${xpath_Inactivity Category}      ng-reflect-value
            Should Be Equal As Strings      ${IC}         C
        END
        IF    ${i} == 2
            click element                   ${xpath_Inactivity Category User}
            ${IU}=  Get Element Attribute    ${xpath_Inactivity Category}      ng-reflect-value
            Should Be Equal As Strings      ${IU}         U
        END
    END
    FOR    ${i}    IN RANGE    1    3
        Sleep       2s
        click element                   ${xpath_Inactivity Year}
        IF    ${i} == 1
            click element                   ${xpath_Inactivity Year 2023}
            ${I2}=  Get Element Attribute    ${xpath_Inactivity Year}      ng-reflect-value
            Should Be Equal As Numbers      ${I2}         2023
        END
        IF    ${i} == 2
            click element                   ${xpath_Inactivity Year <All>}
            ${IA}=  Get Element Attribute    ${xpath_Inactivity Year}      ng-reflect-value
            Should Be Equal As Numbers      ${IA}         0
        END
    END
    Sleep    3s

    click element                   ${xpath_Inactivity Date}
    click button                    ${xpath_Inactivity Date Button Apply}
    click element                   ${xpath_Inactivity Sites}
    page should contain element     ${xpath_Inactivity Sites Table}
    click element                   ${xpath_Inactivity Sites Table Exit}
    click element                   ${xpath_Inactivity Site Areas}
    page should contain element     ${xpath_Inactivity Site Areas Table}
    click element                   ${xpath_Inactivity Site Areas Table Exit}
    click element                   ${xpath_Inactivity SELECT CHARGING STATION}
    page should contain element     ${xpath_Inactivity SELECT CHARGING STATION Table}
    click element                   ${xpath_Inactivity SELECT CHARGING STATION Table Exit}
    click element                   ${xpath_Inactivity SELECT USER}
    page should contain element     ${xpath_Inactivity SELECT USER Table}
    Click Element                   ${xpath_Inactivity SELECT USER Table Exit}

tester dashboard Sessions
    Execute Javascript  window.scrollTo(180, 3080)
    Sleep    2s
    Page Should Contain Element     ${xpath_Sessions}
    FOR    ${i}    IN RANGE    1    3
        click element               ${xpath_Sessions Export}
        Run Keyword If    ${i} == 1    Sessions Export Yes
        Sleep    2s
        Run Keyword If    ${i} == 2    Sessions Export No
    END
    click element       ${xpath_Sessions Reset Filters}
    click element       ${xpath_Sessions Total}
    click element       ${xpath_Sessions Months}
    FOR    ${i}    IN RANGE    1    3
        click element                       ${xpath_Sessions Category}
        IF    ${i} == 1
            click element                   ${xpath_Sessions Category Charging Stations}
            ${SC}=  Get Element Attribute    ${xpath_Sessions Category}      ng-reflect-value
            Should Be Equal As Strings      ${SC}         C
        END
        IF    ${i} == 2
            click element                   ${xpath_Sessions Category User}
            ${SU}=  Get Element Attribute    ${xpath_Sessions Category}      ng-reflect-value
            Should Be Equal As Strings      ${SU}         U
        END
    END
    FOR    ${i}    IN RANGE    1    3
        Sleep       2s
        click element                       ${xpath_Sessions Year}
        IF    ${i} == 1
            click element                   ${xpath_Sessions Year 2023}
            ${S2}=  Get Element Attribute    ${xpath_Sessions Year}      ng-reflect-value
            Should Be Equal As Numbers      ${S2}         2023
        END
        IF    ${i} == 2
            click element                   ${xpath_Sessions Year <All>}
            ${SA}=  Get Element Attribute    ${xpath_Sessions Year}      ng-reflect-value
            Should Be Equal As Numbers      ${SA}         0
        END
    END
    Sleep    3s

    click element                   ${xpath_Sessions Date}
    click button                    ${xpath_Sessions Date Button Apply}
    click element                   ${xpath_Sessions Sites}
    page should contain element     ${xpath_Sessions Sites Table}
    click element                   ${xpath_Sessions Sites Table Exit}
    click element                   ${xpath_Sessions Site Areas}
    page should contain element     ${xpath_Sessions Site Areas Table}
    click element                   ${xpath_Sessions Site Areas Table Exit}
    click element                   ${xpath_Sessions SELECT CHARGING STATION}
    page should contain element     ${xpath_Sessions SELECT CHARGING STATION Table}
    click element                   ${xpath_Sessions SELECT CHARGING STATION Table Exit}
    click element                   ${xpath_Sessions SELECT USER}
    page should contain element     ${xpath_Sessions SELECT USER Table}
    Click Element                   ${xpath_Sessions SELECT USER Table Exit}

tester dashboard Pricing
    Execute Javascript  window.scrollTo(180, 3840)
    Sleep    2s
    Page Should Contain Element     ${xpath_Pricing}
    FOR    ${i}    IN RANGE    1    3
        click element                    ${xpath_Pricing Export}
        Run Keyword If    ${i} == 1    Pricing Export Yes
        Sleep    2s
        Run Keyword If    ${i} == 2    Pricing Export No
    END
    click element       ${xpath_Pricing Reset Filters}
    click element       ${xpath_Pricing Total}
    click element       ${xpath_Pricing Months}
    FOR    ${i}    IN RANGE    1    3
        click element                       ${xpath_Pricing Category}
        IF    ${i} == 1
            click element                   ${xpath_Pricing Category Charging Stations}
            ${PC}=  Get Element Attribute    ${xpath_Pricing Category}      ng-reflect-value
            Should Be Equal As Strings      ${PC}         C
        END
        IF    ${i} == 2
            click element                   ${xpath_Pricing Category User}
            ${PU}=  Get Element Attribute   ${xpath_Pricing Category}      ng-reflect-value
            Should Be Equal As Strings      ${PU}         U
        END
    END
    FOR    ${i}    IN RANGE    1    3
        click element                       ${xpath_Pricing Year}
        IF    ${i} == 1
            click element                   ${xpath_Pricing Year 2023}
            ${P2}=  Get Element Attribute   ${xpath_Pricing Year}      ng-reflect-value
            Should Be Equal As Numbers      ${P2}         2023
        END
        IF    ${i} == 2
            click element                   ${xpath_Pricing Year <All>}
            ${PA}=  Get Element Attribute   ${xpath_Pricing Year}      ng-reflect-value
            Should Be Equal As Numbers      ${PA}         0
        END
    END
    Sleep    3s

    click element                   ${xpath_Pricing Date}
    click button                    ${xpath_Pricing Date Button Apply}
    click element                   ${xpath_Pricing Sites}
    page should contain element     ${xpath_Pricing Sites Table}
    click element                   ${xpath_Pricing Sites Table Exit}
    click element                   ${xpath_Pricing Site Areas}
    page should contain element     ${xpath_Pricing Site Areas Table}
    click element                   ${xpath_Pricing Site Areas Table Exit}
    click element                   ${xpath_Pricing SELECT CHARGING STATION}
    page should contain element     ${xpath_Pricing SELECT CHARGING STATION Table}
    click element                   ${xpath_Pricing SELECT CHARGING STATION Table Exit}
    click element                   ${xpath_Pricing SELECT USER}
    page should contain element     ${xpath_Pricing SELECT USER Table}
    Click Element                   ${xpath_Pricing SELECT USER Table Exit}

