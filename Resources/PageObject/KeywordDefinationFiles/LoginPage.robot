*** Settings ***
Library  SeleniumLibrary
Library    XML
Variables   ../Locators/locators.py
Variables   ../TestData/Testdata.py


*** Keywords ***
Insert Login Credentials
     # Second Frame
    Select Frame    ${LoginBoxPopUp}
    Input Text    ${LoginUsernameInputBox}    ${Username}
    Input Password    ${LoginPasswordInputBox}    ${Password}

Send Login Form
    Click Button    ${LoginButton}
