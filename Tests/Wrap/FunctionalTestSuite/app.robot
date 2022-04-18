*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  http://127.0.0.1:5000/

*** Test Cases ***
1.Admin Test
    [Documentation]     This test is used for Admin Login Test
    [Tags]  Admin
    Open Browser    ${web_url}  chrome
    sleep  1s
    Click Element   xpath=//html/body/header/div[1]/button/a
    sleep  1s
    1st Username
    sleep  1s
    1st Password
    sleep  1s
    Click Button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  2s
    close browser
#
#2.Admin Add
#    [Documentation]  This test is used for Admin Add Test
#    [Tags]  Admin Add
#    Open Browser    ${web_url}  chrome
#    sleep  1st Pass



*** Keywords ***
1st Username
    Input Text  name:username   wrappers

1st Password
    Input Text  name:pass   82200