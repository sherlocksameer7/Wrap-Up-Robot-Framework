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

2.Admin Add
    [Documentation]  This test is used for Admin Add Test
    [Tags]  Admin Add
#    Open Browser    ${web_url}  chrome
#    sleep  1s
    Click Element   xpath=//html/body/header/nav/a[1]
    sleep  1s
    2nd Category
    sleep  1s
    2nd Product Name
    sleep  1s
    2nd Price
    sleep  1s
    2nd Image
    sleep  1s
    Click Button    xpath=//html/body/section/h4/div/div/div/form/table/tbody/tr[5]/td[2]/button
    sleep  2s
#    Close Browser

3.Admin Delete
    [Documentation]  This test is used for Admin Delete Test
    [Tags]  Admin Delete
#    Open Browser    ${web_url}  chrome
#    sleep  1s
#    Click Element   xpath=//html/body/header/div[1]/button/a
#    sleep  1s
    Click Element   xpath=//html/body/form/div[2]/h3/a
    sleep  1s
    Click Element   xpath=//html/body/header/nav/a[2]
    sleep  1s
    3rd Product Name
    sleep  1s
    Click Button    xpath=//html/body/section[2]/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
#    Close Browser


3.Admin logout
    [Documentation]  This test is used for Admin Logout
    [Tags]  Admin Logout
    Click Element   xpath=//html/body/form/div[2]/h3/a
    sleep  1s
    Click Element   xpath=//html/body/header/nav/a[3]
    sleep  1s
    Close Browser







*** Keywords ***
1st Username
    Input Text  name:username   wrappers

1st Password
    Input Text  name:pass   82200



2nd Category
    Input Text  name:category   Vegetables

2nd Product Name
    Input Text  name:productname    Cabbage

2nd Price
    Input Text  name:price  25

2nd Image
    Choose File  name:image  D:/Grocery-app/static/image/Cabbage.jpg



3rd Product Name
    Input Text  name:pname  Cabbage