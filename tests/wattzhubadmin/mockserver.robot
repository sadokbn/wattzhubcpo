*** Settings ***
Library         SeleniumLibrary
Library         HttpLibrary.HTTP
Library         RequestsLibrary
Library         Collections
Library         MockServerLibrary
Library         Process

*** Test Cases ***
MockServer Test Case
    [Documentation]    Example test case that uses MockServer
    Create Session    my_mockserver    http://localhost:1080
    ${response}=    GET    my_mockserver    /my-endpoint
    Should Be Equal As Strings    ${response.status_code}    200
    ${response_body}=    Convert To String    ${response.content}
    Should Contain    ${response_body}    "Hello, World!"
    Delete All Sessions


Login with valid credentials using mock server
    Start MockServer
    ${response}=   Create Response   200   content-type=application/json   {"success": true}
    Create Expectation   request_path="/auth/login"   response=${response}   times=unlimited
    Set Browser Implicit Wait    10
    Open Browser    ${BASE_URL}  ${BROWSER}
    Input Text      css=[name="email"]     john@example.com
    Input Text      css=[name="password"]  secret
    Click Button    css=[type="submit"]
    Wait Until Page Contains  Welcome, John!
    Stop MockServer

Test Mocking Website
    Start Server    java -jar /path/to/mockserver-netty-{version}-jar-with-dependencies.jar

Test Mocking Website
    Start Server    java -jar /path/to/mockserver-netty-{version}-jar-with-dependencies.jar

    ${response}=    Create Dictionary    body=${"Hello, World!"}    Content-Type=${"text/plain"}
    Create Mock    /auth/login?returnUrl=%2Fstatistics    response_delay=${5000}    response_status_code=${200}    response_body=${response}

Test Mocking Website
    Start Server    java -jar /path/to/mockserver-netty-{version}-jar-with-dependencies.jar

    ${response}=    Create Dictionary    body=${"Hello, World!"}    Content-Type=${"text/plain"}
    Create Mock    /auth/login?returnUrl=%2Fstatistics    response_delay=${5000}    response_status_code=${200}    response_body=${response}

    ${result}=    Get Request    http://localhost:1080/auth/login?returnUrl=%2Fstatistics
    Should Be Equal As Strings    ${result.content}    ${"Hello, World!"}


*** Variables ***
${BROWSER}      Chrome
${BASE_URL}     https://sadok.cpo.beta.wattzhub.com/auth/login?returnUrl=%2Fstatistics
${MOCK_SERVER}  http://localhost:1080


*** Keywords ***
Start MockServer
    Start MockServer    ${MOCK_SERVER}