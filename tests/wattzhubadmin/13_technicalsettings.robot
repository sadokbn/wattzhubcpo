*** Settings ***
Documentation   Testing technical settings in admin
Library         SeleniumLibrary

*** Variables ***
${xpath_technical settings}                         //*[contains(text(),'Technical Settings')]
${xpath_crypto}                                     //*[@id="mat-tab-label-6-0"]
${xpath_crypto key}                                 //*[@id="mat-input-81"]
${crypto key}                                       1530b71a1fb796bf7e70ed9365f136d2d105763fd689b3883f439a105a19848b
${xpath_crypto block cypher}                        //*[@id="mat-input-82"]
${crypto block cypher}                              aes
${xpath_crypto block size}                          //*[@id="mat-input-83"]
${crypto block size}                                256
${xpath_crypto operation}                           //*[@id="mat-input-84"]
${crypto operation}                                 gcm
${xpath_crypto save}                                //*[@id="mat-tab-content-0-0"]/div/app-settings-crypto/form/div/button
${xpath_technical users}                            //*[@id="mat-tab-label-0-1"]
${xpath_users automatically}                        //*[@id="mat-checkbox-1"]
${xpath_technical users save}                       //*[@id="mat-tab-content-0-1"]/div/app-settings-user/form/div[1]/button
${xpath_}
${xpath_}
${xpath_}
${xpath_}

*** Keywords ***


*** Test Cases ***
testing technical settings
    Click Element                   ${xpath_technical settings}
    Click Element                   ${xpath_crypto}
    Press Keys                      ${xpath_crypto key}                 CTRL+a      BACKSPACE
    Press Keys                      ${xpath_crypto key}                      ${crypto key}
    Press Keys                      ${xpath_crypto block cypher}        CTRL+a      BACKSPACE
    Press Keys                      ${xpath_crypto block cypher}             ${crypto block cypher}
    Press Keys                      ${xpath_crypto block size}          CTRL+a      BACKSPACE
    Press Keys                      ${xpath_crypto block size}               ${crypto block size}
    Press Keys                      ${xpath_crypto operation}           CTRL+a      BACKSPACE
    Press Keys                      ${xpath_crypto operation}                ${crypto operation}
#    Click Element                   ${xpath_crypto save}
    Click Element                   ${xpath_technical users}
    Press Keys                      ${xpath_users automatically}                   \\13
    Click Element                   ${xpath_technical users save}
    Sleep       2s
    Page should contain             User settings have been updated successfully


