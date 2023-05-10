*** Settings ***
Documentation   Testing Users in admin
Library         SeleniumLibrary

*** Variables ***
${xpath_users}                                      //*[contains(text(),'Users')]
${xpath_users users}                                //*[@id="mat-tab-label-8-0"]
${xpath_user create}                                //*[@id="mat-tab-content-8-0"]/div/app-users-list/app-table/div/div[1]/div[1]/button[1]
${xpath_user-}                                      //*[@id="mat-tab-label-15-0"]
${xpath_name}                                       //*[@id="mat-input-93"]
${user name}                                        BN
${xpath_first name}                                 //*[@id="mat-input-94"]
${first name}                                       Sadok
${xpath_email}                                      //*[@id="mat-input-95"]
${email}                                            sadokbn@gmail.com
${xpath_phone}                                      //*[@id="mat-input-96"]
${phone}                                            +21698123456
${xpath_mobile}                                     //*[@id="mat-input-97"]
${mobile}                                           +21655123789
${xpath_plate}                                      //*[@id="mat-input-109"]
${plate}                                            230 TN 3579
${xpath_language}                                   //*[@id="mat-select-30"]
${xpath_language english}                           id:mat-option-34
${xpath_language french}                            id:mat-option-35
${xpath_language spanish}                           id:mat-option-36
${xpath_language german}                            id:mat-option-37
${xpath_language portuguese}                        id:mat-option-38
${xpath_language italian}                           id:mat-option-39
${xpath_language czech}                             id:mat-option-40
${xpath_language australian}                        id:mat-option-41
${xpath_status}                                     //*[@id="mat-select-32"]
${xpath_status active}                              id:mat-option-42
${xpath_status suspunded}                           id:mat-option-43
${xpath_status inactive}                            id:mat-option-44
${xpath_status locked}                              id:mat-option-45
${xpath_status pending}                             id:mat-option-46
${xpath_role}                                       //*[@id="mat-select-34"]
${xpath_role admin}                                 id:mat-option-47
${xpath_role basic}                                 id:mat-option-48
${xpath_role demo}                                  id:mat-option-49
${xpath_user free access}                           //*[@id="mat-checkbox-2"]/label/span[1]
${xpath_user api user}                              //*[@id="mat-checkbox-3"]/label/span[1]
${xpath_notification}                               //*[@id="mat-tab-label-1-1"]
${xpath_enable notifications}                       //*[@id="mat-checkbox-4"]/label/span[1]
${xpath_address}                                    //*[@id="mat-tab-label-1-2"]
${xpath_address 1}                                  //*[@id="mat-input-35"]
${address 1}                                        Rue 1
${xpath_address 2}                                  //*[@id="mat-input-36"]
${address 2}                                        Rue 2
${xpath_postal code}                                //*[@id="mat-input-37"]
${postal code}                                      4000
${xpath_city}                                       //*[@id="mat-input-38"]
${city}                                             Sousse
${xpath_department}                                 //*[@id="mat-input-39"]
${department}                                       Info
${xpath_region}                                     //*[@id="mat-input-40"]
${region}                                           Sousse
${xpath_country}                                    //*[@id="mat-input-41"]
${country}                                          Tunisie
${xpath_security}                                   //*[@id="mat-tab-label-1-3"]
${xpath_password}                                   //*[@id="mat-input-42"]
${password}                                         Sadok123.
${xpath_repeat password}                            //*[@id="mat-input-43"]
${xpath_password see}                               //*[@id="mat-tab-content-1-3"]/div/div/app-user-security/form/div/div[1]/div/mat-form-field/div/div[1]/div[2]
${xpath_connections}                                //*[@id="mat-tab-label-1-4"]
${xpath_miscs}                                      //*[@id="mat-tab-label-1-5"]
${xpath_corporate number}                           //*[@id="mat-input-44"]
${corporate number}                                 1234
${xpath_cost center}                                //*[@id="mat-input-45"]
${cost center}                                      4321
${xpath_create user save}                           //*[@id="mat-dialog-0"]/ng-component/app-user/div/div/form/div/button[1]

${xpath_user import}                                //*[@id="mat-tab-content-0-0"]/div/app-users-list/app-table/div/div[1]/div[1]/button[2]
${xpath_user import exit}                           //*[@id="mat-dialog-2"]/ng-component/div/div/div/button[2]
${xpath_user export}                                //*[@id="mat-tab-content-0-0"]/div/app-users-list/app-table/div/div[1]/div[1]/button[3]
${xpath_user export Yes}                            //*[contains(text(),'Yes')]
${xpath_user export No}                             //*[contains(text(),'No')]
${xpath_user owner}                                 //*[@id="mat-select-0"]
${xpath_user role}                                  //*[@id="mat-select-58"]
${xpath_user role demo}                             id:mat-option-199
${xpath_user role basic}                            id:mat-option-198
${xpath_user role admin}                            id:mat-option-197
${xpath_user status}                                //*[@id="mat-select-60"]
${xpath_user status pending}                        id:mat-option-204
${xpath_user status suspunded}                      id:mat-option-201
${xpath_user status inactive}                       id:mat-option-202
${xpath_user status locked}                         id:mat-option-203
${xpath_user status active}                         id:mat-option-200

${xpath_user RFID}                                  //*[@id="mat-input-90"]
${xpath_user RFID table}                            id:mat-dialog-5
${xpath_user RFID table exit}                       //*[@id="mat-dialog-5"]/ng-component/div/div/div/button[2]

${xpath_user sites}                                 //*[@id="mat-input-91"]
${xpath_user sites table}                           id:mat-dialog-6
${xpath_user sites table exit}                      //*[@id="mat-dialog-6"]/ng-component/div/div/div/button[2]

${xpath_user api}                                   //*[@id="mat-select-62"]
${xpath_Access Mode}                                //*[@id="mat-select-64"]
${xpath_user search}                                //*[@id="mat-input-89"]
${user_search}                                      ADMIN
${xpath_users in error}                             //*[@id="mat-tab-label-9-1"]
${xpath_in error role}                              //*[@id="mat-select-72"]
${xpath_in error role demo}                         id:mat-option-227
${xpath_in error role basic}                        id:mat-option-226
${xpath_in error role admin}                        id:mat-option-225
${xpath_in error error}                             //*[@id="mat-select-74"]
${xpath_in error error billing}                     id:mat-option-228
${xpath_in error error inactive account}            id:mat-option-229
${xpath_in error error inactive users}              id:mat-option-230
${xpath_in error error not assigned}                id:mat-option-231
${xpath_user in error search}                       //*[@id="mat-input-116"]
${user in error_search}                             ADMIN
${xpath_}
${xpath_}
${xpath_}
${xpath_}
${xpath_}
${xpath_}
${xpath_}

*** Keywords ***
Create user
    Press Keys                      ${xpath_user create}             \\13
    Click Element                   ${xpath_user-}
    press keys                      ${xpath_name}              ${user name}
    press keys                      ${xpath_first name}        ${first name}
    press keys                      ${xpath_email}             ${email}
    press keys                      ${xpath_phone}             ${phone}
    press keys                      ${xpath_mobile}            ${mobile}
    press keys                      ${xpath_plate}             ${plate}
    FOR    ${i}    IN RANGE    1    9
        Click Element               ${xpath_language}
        IF    ${i} == 1
            Click Element           ${xpath_language australian}
        END
        IF    ${i} == 2
            Click Element           ${xpath_language french}
        END
        IF    ${i} == 3
            Click Element           ${xpath_language spanish}
        END
        IF    ${i} == 4
            Click Element           ${xpath_language german}
        END
        IF    ${i} == 5
            Click Element           ${xpath_language portuguese}
        END
        IF    ${i} == 6
            Click Element           ${xpath_language italian}
        END
        IF    ${i} == 7
            Click Element           ${xpath_language czech}
        END
        IF    ${i} == 8
            Click Element           ${xpath_language english}
        END
    END
    FOR    ${i}    IN RANGE    1    6
        Click Element               ${xpath_status}
        IF    ${i} == 1
            Click Element           ${xpath_status pending}
        END
        IF    ${i} == 2
            Click Element           ${xpath_status suspunded}
        END
        IF    ${i} == 3
            Click Element           ${xpath_status inactive}
        END
        IF    ${i} == 4
            Click Element           ${xpath_status locked}
        END
        IF    ${i} == 5
            Click Element           ${xpath_status active}
        END
    END
    FOR    ${i}    IN RANGE    1    4
        Click Element               ${xpath_role}
        IF    ${i} == 1
            Click Element           ${xpath_role demo}
        END
        IF    ${i} == 2
            Click Element           ${xpath_role basic}
        END
        IF    ${i} == 3
            Click Element           ${xpath_role admin}
        END
    END
    Press Keys                      ${xpath_user free access}           \\13
    Press Keys                      ${xpath_user api user}              \\13
    Click Element                   ${xpath_notification}
    Press Keys                      ${xpath_enable notifications}       \\13
    Press Keys                      ${xpath_enable notifications}       \\13
    Click Element                   ${xpath_address}
    Input Text                      ${xpath_address 1}                  ${address 1}
    Input Text                      ${xpath_address 2}                  ${address 2}
    Input Text                      ${xpath_postal code}                ${postal code}
    Input Text                      ${xpath_city}                       ${city}
    Input Text                      ${xpath_department}                 ${department}
    Input Text                      ${xpath_region}                     ${region}
    Input Text                      ${xpath_country}                    ${country}
    Click Element                   ${xpath_security}
    Input Text                      ${xpath_password}                   ${password}
    Input Text                      ${xpath_repeat password}            ${password}
    Press Keys                      ${xpath_password see}               \\13
    Click Element                   ${xpath_connections}
    Click Element                   ${xpath_miscs}
    Input Text                      ${xpath_corporate number}           ${corporate number}
    Input Text                      ${xpath_cost center}                ${cost center}
    Press Keys                      ${xpath_create user save}           \\13

Testing user owner
    [Arguments]                     ${xpath_user owner}                  ${xpath_users users}
    Press Keys                      ${xpath_user owner}                  \\13
    ${UO}=  Get Element Attribute   ${xpath_user owner}                  aria-expanded
    Should Be Equal As Strings      ${UO}                           true
    Select From List By Label       ${xpath_user owner}                  Current Organization
    Double Click Element            ${xpath_users users}
    page should contain             Current Organization
    Press Keys                      ${xpath_user owner}                  \\13
    Select From List By Label       ${xpath_user owner}                  External Organization
    Double Click Element            ${xpath_users users}
    Page Should Contain             External Organization
    Press Keys                      ${xpath_user owner}                  \\13
    Select From List By Label       ${xpath_user owner}                  Current Organization
    Select From List By Label       ${xpath_user owner}                  External Organization
    Double Click Element            ${xpath_users users}
    Page Should Contain             Current Organization (+1)

Testing user API user
    [Arguments]                     ${xpath_user api}                  ${xpath_users users}
    Press Keys                      ${xpath_user api}                  \\13
    ${UA}=  Get Element Attribute   ${xpath_user api}                  aria-expanded
    Should Be Equal As Strings      ${UA}                           true
    Select From List By Label       ${xpath_user api}                  API User
    Double Click Element            ${xpath_users users}
    page should contain             API User
    Press Keys                      ${xpath_user api}                  \\13
    Select From List By Label       ${xpath_user api}                  Normal User
    Double Click Element            ${xpath_users users}
    Page Should Contain             Normal User
    Press Keys                      ${xpath_user api}                  \\13
    Select From List By Label       ${xpath_user api}                  API User
    Select From List By Label       ${xpath_user api}                  Normal User
    Double Click Element            ${xpath_users users}
    Page Should Contain             API User (+1)

Testing Access Mode
    [Arguments]                     ${xpath_Access Mode}                  ${xpath_users users}
    Press Keys                      ${xpath_Access Mode}                  \\13
    ${AM}=  Get Element Attribute   ${xpath_Access Mode}                  aria-expanded
    Should Be Equal As Strings      ${AM}                           true
    Select From List By Label       ${xpath_Access Mode}                  Free Access
    Double Click Element            ${xpath_users users}
    page should contain             Free Access
    Press Keys                      ${xpath_Access Mode}                  \\13
    Select From List By Label       ${xpath_Access Mode}                  Paying Access
    Double Click Element            ${xpath_users users}
    Page Should Contain             Paying Access
    Press Keys                      ${xpath_Access Mode}                  \\13
    Select From List By Label       ${xpath_Access Mode}                  Free Access
    Select From List By Label       ${xpath_Access Mode}                  Paying Access
    Double Click Element            ${xpath_users users}
    Page Should Contain             Free Access (+1)

*** Test Cases ***
testing users
    Click Element                   ${xpath_users}
    Click Element                   ${xpath_users users}
    Create User
    Click Element                   ${xpath_user import}
    Press Keys                      ${xpath_user import exit}               \\13
    FOR    ${i}    IN RANGE    1    3
        Click Element               ${xpath_user export}
        IF    ${i} == 1
            Click Element           ${xpath_user export Yes}
            Sleep    2s
        END
        IF    ${i} == 2
            Click Element           ${xpath_user export No}
        END
    END
    Testing user owner              ${xpath_user owner}                  ${xpath_users users}

    FOR    ${i}    IN RANGE    1    4
        Click Element                   ${xpath_users users}
        Click Element               ${xpath_user role}
        IF    ${i} == 1
            Click Element           ${xpath_user role demo}
        END
        IF    ${i} == 2
            Click Element           ${xpath_user role basic}
        END
        IF    ${i} == 3
            Click Element           ${xpath_user role admin}
        END
    END

    FOR    ${i}    IN RANGE    1    6
        Click Element                   ${xpath_users users}
        Click Element               ${xpath_user status}
        IF    ${i} == 1
            Click Element           ${xpath_user status pending}
        END
        IF    ${i} == 2
            Click Element           ${xpath_user status suspunded}
        END
        IF    ${i} == 3
            Click Element           ${xpath_user status inactive}
        END
        IF    ${i} == 4
            Click Element           ${xpath_user status locked}
        END
        IF    ${i} == 5
            Click Element           ${xpath_user status active}
        END
    END
    
    Press Keys                      ${xpath_user RFID}                           \\13
    Page Should Contain Element     ${xpath_user RFID table}
    Press Keys                      ${xpath_user RFID table exit}                \\13
    
    Press Keys                      ${xpath_user sites}                          \\13
    Page Should Contain Element     ${xpath_user sites table}
    Press Keys                      ${xpath_user sites table exit}               \\13
    Testing user API user           ${xpath_user api}                       ${xpath_users users}
    Testing Access Mode             ${xpath_Access Mode}                    ${xpath_users users}
    press keys                      ${xpath_user search}                 ${user_search}

    Click Element                   ${xpath_users in error}

    FOR    ${i}    IN RANGE    1    4
        Click Element               ${xpath_users in error}
        Click Element               ${xpath_in error role}
        IF    ${i} == 1
            Click Element           ${xpath_in error role demo}
        END
        IF    ${i} == 2
            Click Element           ${xpath_in error role basic}
        END
        IF    ${i} == 3
            Click Element           ${xpath_in error role admin}
        END
    END

    FOR    ${i}    IN RANGE    1    5
        Click Element               ${xpath_users in error}
        Click Element               ${xpath_in error error}
        IF    ${i} == 1
            Click Element           ${xpath_in error error billing}
        END
        IF    ${i} == 2
            Click Element           ${xpath_in error error inactive account}
        END
        IF    ${i} == 3
            Click Element           ${xpath_in error error inactive users}
        END
        IF    ${i} == 4
            Click Element           ${xpath_in error error not assigned}
        END
    END
    press keys                      ${xpath_user in error search}            ${user in error_search}