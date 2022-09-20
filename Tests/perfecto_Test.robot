*** Settings ***
Library    AppiumLibrary
Library    PerfectoLibrary     RobotframeworkPerfectoBrowserDemoProject        v1.0         RobotframeworkPerfectoBrowserDemoJob       1
Resource   ../Resources/KeywordsFile.robot
Resource   ../Resources/robertApp.robot
Variables  ../Libraries/read_config.py

*** Variables ***
${perfecturl}         https://trial.perfectomobile.com/nexperience/perfectomobile/wd/hub
${token}              eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI2ZDM2NmJiNS01NDAyLTQ4MmMtYTVhOC1kODZhODk4MDYyZjIifQ.eyJpYXQiOjE2NjI2MTgyNTYsImp0aSI6ImZhZDQ4YmQ5LWY4OGEtNDIwOC1hMzg3LTk3MDg5Zjk1ZjAwMSIsImlzcyI6Imh0dHBzOi8vYXV0aDMucGVyZmVjdG9tb2JpbGUuY29tL2F1dGgvcmVhbG1zL3RyaWFsLXBlcmZlY3RvbW9iaWxlLWNvbSIsImF1ZCI6Imh0dHBzOi8vYXV0aDMucGVyZmVjdG9tb2JpbGUuY29tL2F1dGgvcmVhbG1zL3RyaWFsLXBlcmZlY3RvbW9iaWxlLWNvbSIsInN1YiI6IjUyNDBiMjcxLWVhMzItNDdmYi1hZjQyLTMzZDlhZjU2ZTlmYiIsInR5cCI6Ik9mZmxpbmUiLCJhenAiOiJvZmZsaW5lLXRva2VuLWdlbmVyYXRvciIsIm5vbmNlIjoiOWUzMzIyOWUtMzhmOC00YzNlLTkwNmQtMzM1NDVjYmUwNDQyIiwic2Vzc2lvbl9zdGF0ZSI6Ijc1YTM1MzhhLWFmNzUtNGU4YS1iYTNmLWY4ZDhmNjNlMmU0ZiIsInNjb3BlIjoib3BlbmlkIG9mZmxpbmVfYWNjZXNzIHByb2ZpbGUgZW1haWwifQ.ZbtWcyuXH9jymaaW-XFTn1sdVV8helBCp0YxJw-bSJA
${bundleId}           com.apple.mobilenotes
${deviceid_android}=    23011FDF6000J0
#${app_id}             PRIVATE:RocketChat.apk
${app_id}             PUBLIC:PMTest-v1.0.apk
#${app_package}        chat.rocket.android
${app_package}        com.perfectomobile.test
${touch_btn}          //*[@resource-id="com.perfectomobile.test:id/TestTouch"]
${count_up_btn}       //*[@resource-id="com.perfectomobile.test:id/CountUp"]
${counter}            //*[@resource-id="com.perfectomobile.test:id/Counter"]

*** Keywords ***
Open app
    open application    ${perfecturl}   securityToken=${token}    deviceName=${deviceid_android}      noReset=${True}   app=${app_id}   appPackage=${app_package}    browserName=mobileOS   waitForAvailableLicense=${True}
    sleep   5s

test the touch button
    wait until element is visible   ${touch_btn}    25s
    click element   ${touch_btn}
#    wait until element is visible   ${count_up_btn}    25s
#    click element   ${count_up_btn}
#    wait until element is visible   ${touch_btn}    25s
#    get text   ${counter}
#    log     ${counter}
*** Test Cases ***
#To check whether we can successfully login with correct Credentials
#    [Documentation]     This test case verifies whether we can successfully login with correct username and password
#    Open app
#    login with credientials     appiumtesting7@gmail.com    appiumtesting7
#    Close app


To test pulic app of perfecto
    Open app
    test the touch button

#*** Test Cases ***
#Demo test on iphone
#    [Tags]    Perfeco  Device   iPhone
#    [Teardown]   Close All Applications
#    open test device and launch mobilenotes      iPhone
#    sleep  9
#    create a note
#    rotate to lanscape
#    sleep  9
#    rotate to portrait
#    goto home screen
#    swipe to the right screen
#
#
#*** keywords ***
#open test device and launch mobilenotes
#    [arguments]     ${devicemodel}
#    run keyword if  '${devicemodel}'=='iPhone'     open application    ${perfecturl}   securityToken=${token}    deviceName=${deviceid_iphone}      noReset=${True}   bundleId=${bundleId}        takesScreenshot=${True}              screenshotOnError=${False}
#    run keyword if  '${devicemodel}'=='Android'     open application    ${perfecturl}   securityToken=${token}    deviceName=${deviceid_android}      noReset=${True}   browserName=mobileOS
#
#
#create a note
#    click element  //*[@label="New note"]
#    input text     //*[@label="Note"]     test1234
#    click element  //*[@label="Done"]
#
#
#goto home screen
#    ${time}=     convert to integer  -1
#    background app    ${time}
#
#
#swipe to the right screen
#    PerfectoLibrary.swipe    80%   50%     20%    50%     3
#
#
#rotate to lanscape
#    rotate
#
#rotate to portrait
#    rotate    portrait