*** Settings ***
Documentation   Testing profile super admin
Library    SeleniumLibrary

*** Variables ***
${xpath_super admin}                                //a[@class='collapsed']
${xpath_profile}                                    //*[@id="collapseDetails"]/ul/li[1]/a
${xpath_utilisateur}                                //*[@id="mat-tab-label-1-0"]

${xpath_Name}                                       id:mat-input-6
${xpath_First Name}                                 id:mat-input-7
${xpath_Email}                                      id:mat-input-8
${xpath_Language}                                   //*[@id="mat-select-0"]
${xpath_Role}                                       //*[@id="mat-select-2"]
${xpath_Phone}                                      id:mat-input-9
${xpath_Mobile}                                     id:mat-input-10

${name_super admin}                                 SUPERADMIN
${first Name_super admin}                           sadok
${email_super admin}                                sadok.bennahia@internship.continuousnet.com
${phone_super admin}                                +21621665762
${mobile_super admin}                               +21621665762

${xpath_english}                                    mat-option-0
${xpath_super admin}                                mat-option-8

${xpath_Notifications}                              //*[@id="mat-tab-label-0-1"]
${xpath_Notifications email}
${xpath_Notification }
${xpath_}
${xpath_}
${xpath_}
${xpath_}
${xpath_}
*** Keywords ***
ecrire les données du profile
    [Arguments]    ${name_super admin}            ${first Name_super admin}     ${email_super admin}      ${phone_super admin}      ${mobile_super admin}
    Press Keys     ${xpath_Name}            CTRL+a      BACKSPACE
    press keys     ${xpath_Name}            ${name_super admin}
    Press Keys     ${xpath_First Name}      CTRL+a      BACKSPACE
    press keys     ${xpath_First Name}      ${first Name_super admin}
    Press Keys     ${xpath_Email}           CTRL+a      BACKSPACE
    press keys     ${xpath_Email}           ${email_super admin}
    Press Keys     ${xpath_Phone}           CTRL+a      BACKSPACE
    press keys     ${xpath_Phone}           ${phone_super admin}
    Press Keys     ${xpath_Mobile}          CTRL+a      BACKSPACE
    press keys     ${xpath_Mobile}          ${mobile_super admin}



*** Test Cases ***
Profile user
    Click Element                   ${xpath_super admin}
    Press Keys                      ${xpath_profile}       \\13
    Double Click Element            ${xpath_profile}
    Click Element                   ${xpath_profile}
    Sleep                           5
    Click Element                   ${xpath_utilisateur}
    ecrire les données du profile

    Press Keys                      ${xpath_language}       \\13
    ${LA}=  Get Element Attribute   ${xpath_language}       aria-expanded
    Should Be Equal As Strings      ${LA}         true
    Press Keys                      ${xpath_english}       \\13

    Press Keys                      ${xpath_Role}           \\13
    ${RO}=  Get Element Attribute   ${xpath_Role}           aria-expanded
    Should Be Equal As Strings      ${RO}         true
    Press Keys                      ${xpath_super admin}       \\13

Profile Notification
    Click Element                   ${xpath_Notifications}