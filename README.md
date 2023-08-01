# RobotFramework
Functional Test Automation with RobotFramework using Python and Selenium

*** Test Cases ***

Note:- Ideally we create a driver instance before opening the browser and locate the executable file of the driver locally. Here, I have added the chrome driver executable file directly to the scripts in Python file in External Libraries and added the path to the environment Variables locally. Hence, I can directly reuse webdriver anywhere in the script for opening the browser application by just stating chrome.Thus, you need to add the path and chrome file first to your python scripts in your system to execute the tests locally.


Test Suit 1:- Verify Successful Login with the UserID to TAGESSPIEGEL.DE

    Opening Web Application
    Click Anmelden
    Insert Login Credentials
    Send Login Form
    Verify That User Is Logged In
    Verify That Login Id Is Correct
    close browser

To execute the Test go into RobotFramework folder and execute the below command:

robot   .\TestCases\TC1.robot