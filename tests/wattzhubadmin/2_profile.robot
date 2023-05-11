*** Settings ***
Documentation   Testing profile admin
Library    SeleniumLibrary

*** Variables ***
${xpath_admin admin}                                //a[@class='collapsed']

${xpath_profile}                                    //*[@id="collapseDetails"]/ul/li[1]/a
${xpath_user}                                       //*[@id="mat-tab-label-0-0"]

${xpath_Name}                                       id:mat-input-27
${xpath_First Name}                                 id:mat-input-28
${xpath_Email}                                      id:mat-input-29
${xpath_Language}                                   //*[@id="mat-select-20"]
${xpath_Role}                                       //*[@id="mat-select-22"]
${xpath_Phone}                                      id:mat-input-30
${xpath_Mobile}                                     id:mat-input-31
${xpath_Plate}                                      id:mat-input-43

${name_admin}                                       ADMIN
${first Name_admin}                                 Admin
${email_admin}                                      sadok.bennahia@internship.continuousnet.com
${phone_admin}                                      +21621665762
${mobile_admin}                                     +21621665762
${plate_admin}                                      ABCD

${xpath_english}                                    id:mat-option-20
${xpath_admin}                                      id:mat-option-28

${xpath_API User}                                   //*[@id="mat-checkbox-3"]/label/span[1]
${xpath_Free access}                                //*[@id="mat-checkbox-2"]/label/span[1]
#${xpath_Basic}                  //*[@id="mat-option-9"]

${class_save}                                       //button[@class='mat-focus-indicator mat-icon-button mat-button-base']


${xpath_Notifications}                              //*[@id="mat-tab-label-0-1"]
#//*[@id="mat-checkbox-4"]/label/span[1]
#//ul[@class='mat-checkbox-layout' and /li[contains(., 'Enable')]

${xpath_Enable Notifications}                       //*[@id="mat-checkbox-3"]/label/span[1]
${xpath_Notification Session Started}               //*[@id="mat-checkbox-4"]/label/span[1]
${xpath_Notification battery 85%}                   //*[@id="mat-checkbox-5"]/label/span[1]
${xpath_Notification vehicule not charging}         //*[@id="mat-checkbox-6"]/label/span[1]
${xpath_Notification charging finished}             //*[@id="mat-checkbox-7"]/label/span[1]
${xpath_Notification user's status changed}         //*[@id="mat-checkbox-8"]/label/span[1]
${xpath_Notification no sesssion badging}           //*[@id="mat-checkbox-9"]/label/span[1]
${xpath_Notification 6 months}                      //*[@id="mat-checkbox-10"]/label/span[1]
${xpath_Notification session not started}           //*[@id="mat-checkbox-11"]/label/span[1]
${xpath_Notification new invoice available}         //*[@id="mat-checkbox-12"]/label/span[1]

${xpath_Notification unknown user badged}           //*[@id="mat-checkbox-13"]
${xpath_Notification error occurred}                //*[@id="mat-checkbox-14"]
${xpath_Notification charging station registered}   //*[@id="mat-checkbox-15"]
${xpath_Notification charging station offline}      //*[@id="mat-checkbox-16"]
${xpath_Notification platform (OCPI)}               //*[@id="mat-checkbox-17"]
${xpath_Notification platform (OICP)}               //*[@id="mat-checkbox-18"]
${xpath_Notification billing system failed}         //*[@id="mat-checkbox-19"]
${xpath_Notification billing operation failed}      //*[@id="mat-checkbox-20"]
${xpath_Notification site area fails}               //*[@id="mat-checkbox-21"]
${xpath_Notification reports error}                 //*[@id="mat-checkbox-22"]
${xpath_Notification account to be verified}        //*[@id="mat-checkbox-23"]

${xpath_Adress}                                     //*[@id="mat-tab-label-0-2"]

${xpath_Adress 1}                                   id:mat-input-5
${xpath_Adress 2}                                   id:mat-input-6
${xpath_Postal Code}                                id:mat-input-7
${xpath_City}                                       id:mat-input-8
${xpath_Department}                                 id:mat-input-9
${xpath_Region}                                     id:mat-input-10
${xpath_Country}                                    id:mat-input-11

${Adress 1_admin}                                   Akouda
${Adress 2_admin}                                   Akouda
${Postal Code_admin}                                4022
${City_admin}                                       Sousse
${Department_admin}                                 1
${Region_admin}                                     Akouda
${Country_admin}                                    Tunisie

${xpath_Security}                                   //*[@id="mat-tab-label-0-3"]
${xpath_Password}                                   //*[@id="mat-input-12"]
${xpath_Repeat Password}                            //*[@id="mat-input-13"]
${Password_admin}                                   WwwBbb003.

${xpath_Connections}                                //*[@id="mat-tab-label-1-4"]
${xpath_Connect Concur}                             //*[@id="mat-tab-content-1-4"]/div/div/app-user-connectors/div/div[2]/app-user-concur-refund-connector/div/div/div[2]/div/button
#${text_Charging Stations}                           //*[contains(text(),'Charging Stations')]

${xpath_Miscs}                                      //*[@id="mat-tab-label-1-5"]
${xpath_Corporate Number}                           //*[@id="mat-input-18"]
${xpath_Cost center}                                //*[@id="mat-input-19"]
${Corporate Number_admin}                           5
${Cost center_admin}                                123

${xpath_Billing}                                    //*[@id="mat-tab-label-1-6"]

*** Keywords ***

ecrire les données du profile
    [Arguments]    ${name_admin}            ${first Name_admin}     ${email_admin}      ${phone_admin}      ${mobile_admin}     ${plate_admin}
    Press Keys     ${xpath_Name}            CTRL+a      BACKSPACE
    press keys     ${xpath_Name}            ${name_admin}
    Press Keys     ${xpath_First Name}      CTRL+a      BACKSPACE
    press keys     ${xpath_First Name}      ${first Name_admin}
    Press Keys     ${xpath_Email}           CTRL+a      BACKSPACE
    press keys     ${xpath_Email}           ${email_admin}
    Press Keys     ${xpath_Phone}           CTRL+a      BACKSPACE
    press keys     ${xpath_Phone}           ${phone_admin}
    Press Keys     ${xpath_Mobile}          CTRL+a      BACKSPACE
    press keys     ${xpath_Mobile}          ${mobile_admin}
    Press Keys     ${xpath_Plate}           CTRL+a      BACKSPACE
    press keys     ${xpath_Plate}           ${plate_admin}



*** Test Cases ***
Profile user
    Click Element                   ${xpath_admin admin}
    Press Keys                      ${xpath_profile}       \\13
    Double Click Element            ${xpath_profile}
    Click Element                   ${xpath_profile}
    Sleep                           5
    Click Element                   ${xpath_user}
#    Input Text                      ${xpath_Name}       ${name_admin}
    ecrire les données du profile   ${name_admin}       ${first Name_admin}     ${email_admin}      ${phone_admin}      ${mobile_admin}     ${plate_admin}
    Press Keys                      ${xpath_language}       \\13
    ${LA}=  Get Element Attribute   ${xpath_language}       aria-expanded
    Should Be Equal As Strings      ${LA}         true
    Press Keys                      ${xpath_english}       \\13
#    Select From List By Label       ${xpath_language}       English
    Press Keys                      ${xpath_Role}           \\13
    ${RO}=  Get Element Attribute   ${xpath_Role}           aria-expanded
    Should Be Equal As Strings      ${RO}         true
    Press Keys                      ${xpath_admin}       \\13
#    Select From List By Label       ${xpath_Role}           Admin
    Press Keys                      ${xpath_API User}       \\13
    Press Keys                      ${xpath_API User}       \\13
    Press Keys                      ${xpath_Free access}    \\13
#    checkbox should be selected     ${xpath_API User}
#    checkbox should be selected     ${xpath_Free access}
    Press Keys                      ${class_save}           \\13
    Sleep    5s

Profile Notification
    Click Element                   ${xpath_Notifications}
    Press Keys                      ${xpath_Enable Notifications}      \\13
    Press Keys                      ${xpath_Enable Notifications}      \\13
    Press Keys                      ${xpath_Notification Session Started}     \\13
    Press Keys                      ${xpath_Notification battery 85%}      \\13
    Press Keys                      ${xpath_Notification vehicule not charging}     \\13
    Press Keys                      ${xpath_Notification charging finished}      \\13
    Press Keys                      ${xpath_Notification user's status changed}     \\13
    Press Keys                      ${xpath_Notification no sesssion badging}      \\13
    Press Keys                      ${xpath_Notification 6 months}      \\13
    Press Keys                      ${xpath_Notification session not started}      \\13
    Press Keys                      ${xpath_Notification new invoice available}      \\13

    Select Checkbox                 ${xpath_Notification unknown user badged}
    Checkbox Should Be Selected     ${xpath_Notification unknown user badged}
    Select Checkbox                 ${xpath_Notification error occurred}
    Checkbox Should Be Selected     ${xpath_Notification error occurred}
    Select Checkbox                 ${xpath_Notification charging station registered}
    Checkbox Should Be Selected     ${xpath_Notification charging station registered}
    Select Checkbox                 ${xpath_Notification charging station offline}
    Checkbox Should Be Selected     ${xpath_Notification charging station offline}
    Select Checkbox                 ${xpath_Notification platform (OCPI)}
    Checkbox Should Be Selected     ${xpath_Notification platform (OCPI)}
    Select Checkbox                 ${xpath_Notification platform (OICP)}
    Checkbox Should Be Selected     ${xpath_Notification platform (OICP)}
    Select Checkbox                 ${xpath_Notification billing system failed}
    Checkbox Should Be Selected     ${xpath_Notification billing system failed}
    Select Checkbox                 ${xpath_Notification billing operation failed}
    Checkbox Should Be Selected     ${xpath_Notification billing operation failed}
    Select Checkbox                 ${xpath_Notification site area fails}
    Checkbox Should Be Selected     ${xpath_Notification site area fails}
    Select Checkbox                 ${xpath_Notification reports error}
    Checkbox Should Be Selected     ${xpath_Notification reports error}
    Select Checkbox                 ${xpath_Notification account to be verified}
    Checkbox Should Be Selected     ${xpath_Notification account to be verified}

Profile Adress
    Click Element                           ${xpath_Adress}
    press keys      ${xpath_Adress 1}       ${Adress 1_admin}
    press keys      ${xpath_Adress 2}       ${Adress 2_admin}
    press keys      ${xpath_Postal Code}    ${Postal Code_admin}
    press keys      ${xpath_City}           ${City_admin}
    press keys      ${xpath_Department}     ${Department_admin}
    press keys      ${xpath_Region}         ${Region_admin}
    press keys      ${xpath_Country}        ${Country_admin}

Profile Security
    Click Element           ${xpath_Security}
    press keys              ${xpath_Password}           ${Password_admin}
    press keys              ${xpath_Repeat Password}    ${Password_admin}

Profile Connections
    Click Element           ${xpath_Connections}
    Press Keys              ${xpath_Connect Concur}           \\13
    Page Should Contain     Charging Stations

Profile Miscs
    Click Element           ${xpath_Miscs}
    press keys              ${xpath_Corporate Number}       ${Corporate Number_admin}
    press keys              ${xpath_Cost center}            ${Cost center_admin}

Profile Billing
    Click Element           ${xpath_Billing}
    Page Should Contain     Payment Methods

