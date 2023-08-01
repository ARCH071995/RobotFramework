*** Settings ***
Library  SeleniumLibrary
Library    XML
Variables   ../Locators/locators.py
Variables   ../TestData/Testdata.py

*** Variables ***
${browser}  chrome
${url}  https://www.tagesspiegel.de/

*** Keywords ***
Opening Web Application
    open browser    ${url}  ${browser}
    Maximize Browser Window

Click Anmelden
    IF    $MessagePopUp == $MessagePopUp
        # First Frame
        Wait Until Element Is Visible    ${MessagePopUp}
        Select Frame    ${MessagePopUp}
        Click Element   ${ClickOnAllAcceptButton}
        Click Link  ${ClickOnAnmelden}
    ELSE
        Click Link  ${ClickOnAnmelden}
    END
    Wait Until Element Is Visible    ${LoginBoxPopUp}




