*** Settings ***
Documentation   A Test Suite with a test to verify successfull login (POM structured)
Library     SeleniumLibrary
Library     XML
Resource    ../Resources/PageObject/KeywordDefinationFiles/HomePage.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/LoginPage.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/VerifyPage.robot

*** Test Cases ***
Verify Successful Login with the UserID to TAGESSPIEGEL.DE
# ideally we create a driver instance before opening the browser and locate the executable file of the driver locally.
# Here, I have added the chrome driver executable file directly to the scripts in Python file in External Libraries and added the path to the environment Variables locally.
# Hence, I can directly reuse webdriver anywhere in the script for opening the browser application by just stating chrome.
    Opening Web Application
    Click Anmelden
    Insert Login Credentials
    Send Login Form
    Verify That User Is Logged In
    Verify That Login Id Is Correct
    close browser
