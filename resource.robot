*** Settings ***
Library           SeleniumLibrary
Documentation    Resources file for OrangeHRM

*** Variables ***
${valid_username}    Admin
${valid_password}    admin123
${invalid_username}    1234
${invalid_password}    45678
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
#i am using the url for running the project 
*** Keywords ***

Open the Browser with URL
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
    Set Selenium Implicit Wait    5

Close the Browser session
    Close Browser