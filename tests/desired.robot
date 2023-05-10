*** Settings ***
Library         SeleniumLibrary
Resource            ..\Resources\login_resources.robot
Resource            ../Resources/login_resources.robot
Library     DataDriver    file:data.csv    # Replace with the path to your data file

*** Test Cases ***
Login with valid credentials
    [Template]    Login with ${username} and ${password}    # Use [Template] to indicate data-driven test case
    ${username}    ${password}=    Get data    # Use Get data keyword to retrieve data from the data file

*** Keywords ***
Login with ${username} and ${password}
    [Arguments]    ${username}    ${password}
    Open browser to login page
    Input text    id=username_field    ${username}
    Input text    id=password_field    ${password}
    Click button    id=login_button
    Wait until page contains    Welcome, ${username}


kl
    wait until page contains element    ${xpath_dashboard}
    page should contain element    ${xpath_dashboard}
#    run keyword until success    page should contain element    ${xpath_dashboard}

