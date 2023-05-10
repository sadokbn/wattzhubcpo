*** Settings ***
Library    SeleniumLibrary
Documentation


*** Variables ***
${urlwattzhub_admin}        https://sadok.cpo.beta.wattzhub.com/auth/login?returnUrl=%2Fstatistics
${browser1}                 Chrome
${id_email}                 id:email-field
${id_password}              id:password-field

*** Keywords ***

# will repeat doing the keyword for 10s
run keyword until success
    [Arguments]    ${KW1}    ${KW2}
    wait until keyword succeeds    10s    1s    ${KW1}    ${KW2}




