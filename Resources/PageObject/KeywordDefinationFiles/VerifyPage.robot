*** Settings ***
Library  SeleniumLibrary
Library    XML
Variables   ../Locators/locators.py
Variables   ../TestData/Testdata.py

*** Keywords ***
# Assertion
Verify That User Is Logged In
    Wait Until Element Is Visible    ${MyAccount}
    Element Should Be Visible    ${MyAccount}
    SeleniumLibrary.Element Text Should Be    ${MyAccount}    ${Account}

Verify That Login Id Is Correct
    Click Element    ${MyAccount}
    Click Element    ${ClickOnMyAccountProfile}
    SeleniumLibrary.Element Text Should Be    ${MyUserName}     ${Username}