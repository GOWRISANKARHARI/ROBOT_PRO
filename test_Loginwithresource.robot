*** Settings ***
Documentation    This is a test suite 
Library    SeleniumLibrary
Resource    resource.robot

*** Variables ***
${login_error_message}    css:.oxd-alert-content--error
${Dashboard_text}    css:.oxd-topbar-header-breadcrumb-module

*** Test Cases ***
Validate Unsucessfull Login
    [Tags]    smoke regression
    Open the Browser with URL
    Fill the login form    ${invalid_username}    ${invalid_password}
    verify the error message
    Close Browser

Validate Sucessfull Login
    [Tags]     UIT
    Open the Browser with URL
    Fill the login form    ${valid_username}    ${valid_password}
    verify the dashboard page opens    
    Close Browser

*** Keywords ***

Fill the login form
    [Arguments]    ${username}    ${password}
    Input Text   css:input[name=username]    ${username}
    Input Text   css:input[name=password]    ${password}
    Click Button   css:.orangehrm-login-button

verify the error message
    Element Text Should Be    ${login_error_message}    Invalid credentials

verify the dashboard page opens
    Element Text Should Be    ${Dashboard_text}    Dashboard