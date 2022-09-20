*** Settings ***
Library    AppiumLibrary
Resource   ../Resources/KeywordsFile.robot
Resource   ../Resources/robertApp.robot
Resource   ../Resources/cloud_Providers.robot
Variables  ../Libraries/read_config.py


*** Test Cases ***
To check whether we can successfully login with correct Credentials
    [Documentation]     This test case verifies whether we can successfully login with correct username and password
    Open app    BrowserStack
    login with credientials     appiumtesting7@gmail.com    appiumtesting7
    Close app

To check whether we can successfully login with incorrect Credentials
    [Documentation]     This test case is used to verify whether we error message is displayed when we login with incorrect username and password
    Open app    BrowserStack
    login with credientials     vfappiumtesting7@gmail.com      appium
    validate error message is displayed successfully
    Close app
