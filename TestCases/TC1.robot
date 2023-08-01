*** Settings ***
Library  SeleniumLibrary
Library    XML

*** Variables ***
${browser}  chrome
${url}  https://www.tagesspiegel.de/

*** Test Cases ***
LoginTest
# ideally we create a driver instance before opening the browser and locate the executable file of the driver locally.
# Here, I have added the chrome driver executable file directly to the scripts in Python file in External Libraries and added the path to the environment Variables locally.
# Hence, I can directly reuse webdriver anywhere in the script for opening the browser application by just stating chrome as mentioned below in Line 13.
    open browser    ${url}  ${browser}
    Maximize Browser Window

    Wait Until Element Is Visible    xpath://iframe[@id='sp_message_iframe_795354']
    # First Frame
    Select Frame    xpath://iframe[@id='sp_message_iframe_795354']
    Click Element    xpath://button[@title='Alle akzeptieren']

    Click Link  xpath://a[@title='Melden Sie sich mit Ihrem Tagesspiegel-Konto an']
    Wait Until Element Is Visible    xpath://iframe[@id='modal-iframe']

    # Second Frame
    Select Frame    xpath://iframe[@id='modal-iframe']
    Input Text    xpath://input[@id='forms/formLogin_email']    qa.tagesspiegel+task@gmail.com
    Input Password    xpath://input[@id='forms/formLogin_password']    tages123!
    Click Button    xpath://button[@value='Anmelden']


    # Assertion
VerifyThatUserIsLoggedIn
    Wait Until Element Is Visible    xpath://span[@class='profile-text']
    Element Should Be Visible    xpath://span[@class='profile-text']
    SeleniumLibrary.Element Text Should Be    xpath://span[@class='profile-text']    Mein Konto

VerifyThatLoginIdIsCorrect
    Click Element    xpath://span[@class='profile-text']
    Click Element    xpath://div[@class='menu__nav__list']//a[@class='sso-link sso-link--my-account'][normalize-space()='Mein Profil']
    SeleniumLibrary.Element Text Should Be    xpath://span[@class='value'][contains(text(),'qa.tagesspiegel+task@gmail.com')]     qa.tagesspiegel+task@gmail.com
    close browser

*** Keywords ***
