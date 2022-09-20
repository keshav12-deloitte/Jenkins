*** Settings ***
Documentation     This file contains the keywords for different cloud providers for executing our test cases
Library    AppiumLibrary
Library    BuiltIn
Resource   ../Resources/KeywordsFile.robot
Resource   ../Resources/robertApp.robot
Variables  ../Libraries/read_config.py

*** Variables ***
${REMOTE_URL}=  https://${username}:${accesskey}@hub-cloud.browserstack.com/wd/hub

*** Keywords ***
Open app
    [Arguments]     ${cloud_name}
    Run Keyword If      "${cloud_name}"=="BrowserStack"         Open app with BrowserStack
    Run Keyword If      "${cloud_name}"=="Perfecto"             Open app with Perfecto


Open app with BrowserStack
    open application    app=${app_id}   remote_url=${REMOTE_URL}    device=${device_name}   name=Automating_robot_app   build=browserstack-robot-framework
    sleep   5s

Open app with Perfecto
    open application    ${remote_url}   securityToken=${perfecto_token}    deviceName=${device_id}      noReset=${True}   app=${perfecto_app_id}   appPackage=${perfecto_app_package}    browserName=mobileOS   waitForAvailableLicense=${True}
    sleep   5s