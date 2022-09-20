*** Settings ***
Documentation    contains all the keywords and variables of robert framework
Library     AppiumLibrary
*** Variables ***
${open_Space_Btn}       //*[@resource-id="new-server-view-open"]
${login_Btn}            //*[@resource-id="workspace-view-login"]
${username_Field}       //*[@content-desc="Username or email"]
${password_Field}       //*[@content-desc="Password"]
${submit_btn}           //*[@resource-id="login-view-submit"]
${error_msg}            //*[@resource-id="android:id/message"]

*** Keywords ***
login with credientials
    [Arguments]     ${username}     ${password}
    wait until element is visible   ${open_Space_Btn}   15s
    click element   ${open_Space_Btn}
    wait until element is visible   ${login_Btn}   15s
    click element   ${login_Btn}
    wait until element is visible   ${username_Field}   15s
    input text  ${username_Field}   ${username}
    wait until element is visible   ${password_Field}   15s
    input text  ${password_Field}   ${password}
    wait until element is visible   ${submit_btn}   15s
    click element   ${submit_btn}

validate error message is displayed successfully
    wait until element is visible  ${error_msg}     15s
    element text should be   ${error_msg}       Your credentials were rejected! Please try again.


