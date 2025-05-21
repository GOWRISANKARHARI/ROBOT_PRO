***Settings***
Library    SeleniumLibrary

# ***Test Cases***
# Login with correct Username and Password
#     Open Browser    https://the-internet.herokuapp.com/login    chrome
#     Input Text    id:username    tomsmith
#     Input Text    id:password    SuperSecretPassword!
#     Click Button    class:radius
#     Element Should Contain    id:flash    You logged into a secure area!
#     Close Browser

#2 problem
# *** Settings ***
# Library    SeleniumLibrary


# *** Test Cases ***
# Search in Google for Python
#     Open Browser    https://www.google.com/   firefox
#     Input Text    class:gLFyf    Python
#     Press Keys    class:gLFyf    ENTER
#     Page Should Contain    Python
#     Close Browser

#3. problem
# *** Settings ***
# Documentation    Test cases for OrangeHRM login functionality
# Library    SeleniumLibrary
# Library    Collections
# *** Variables ***
# ${Valid_username}    Admin
# ${Valid_password}    admin123
# ${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
# &{Visible_Element}    Forgot your password?=xpath://p[@class="oxd-text oxd-text--p orangehrm-login-forgot-header"]
# &{Dashboard}    Dashboard=xpath://h6[@class="oxd-text oxd-text--h6 oxd-topbar-header-breadcrumb-module"]

# *** Test Cases ***

# Validate Elements on Login
#     Open the Browser with URL
#     Verify Element on Login Page

# Validate Sucessfull Login
#     Open the Browser with URL
#     Fill the Login Form
#     Verify the Dashboard Page
#     Verify item on the Dashboard Page
    

# *** Keywords ***

# Open the Browser with URL
#     Open Browser    browser=firefox
#     Go To    ${url}
#     Maximize Browser Window
#     Set Selenium Implicit Wait    5s

# Verify Element on Login Page
#     Element Should Be Visible    ${Visible_Element}[Forgot your password?]

# Fill the Login Form
#     Input Text    name=username    ${Valid_username}
#     Input Text    name=password    ${Valid_password}
#     Click Button    //button[@type="submit"]
    

# Verify the Dashboard Page
#     Element Should be Visible    ${Dashboard}[Dashboard]

# Verify item on the Dashboard Page
#     @{expectedList}=    Create List    Admin    PIM    Leave    Time    Recruitment    My Info    Performance    Dashboard    Directory    Maintenance    Claim    Buzz
#     @{elements}=    Get WebElements    css:.oxd-main-menu-item
#     @{actualList}=    Create List
#     FOR    ${element}    IN    @{elements}
#         Log    ${element.text}
#         Append To List    ${actualList}    ${element.text}
#     END

#     Lists Should Be Equal   ${expectedList}    ${actualList}

# 4.problem


# *** Settings ***
# Library    SeleniumLibrary

# *** Variables ***
# ${url}    https://demo.automationtesting.in/Register.html

# *** Test Cases ***
# Validate Elements on Login
#     Open the Browser with URL
#     Verify the Radio Button is Visible
#     Select the checkbox option circket and hockey
#     Unselect the checkbox option circket

# *** Keywords ***
# Open the Browser with URL
#     Open Browser    ${url}    firefox
#     Maximize Browser Window
#     Set Selenium Implicit Wait    5s

# Verify the Radio Button is Visible
#     Element Should Be Visible    css:input[type="radio"]
#     Element Should Not Be Visible    xpath:(//*[@class="c"])[4]

# Select the checkbox option circket and hockey
#     Select Checkbox    id:checkbox1
#     Select Checkbox    id:checkbox3

# Unselect the checkbox option circket
#     Unselect Checkbox    id:checkbox3


#5. PROBLEM DROPDOWN 
# *** Settings ***
# Library    SeleniumLibrary

# *** Test Cases ***
# Select Options in Dropdown
#     Open the Browser With URL
#     Select the dropdown options APIs with Value
#     Select the dropdown options with Index
#     Select the dropdown options with CSS by label

# *** Keywords ***
# Open the Browser With URL
#     Create Webdriver    Firefox
#     Go To    https://demo.automationtesting.in/Register.html
#     Maximize Browser Window
#     Set Selenium Implicit Wait     6s

# Select the dropdown options APIs with Value
#     Select From List By Value    id:Skills    APIs

# Select the dropdown options with Index
#     Select From List By Index    id:Skills    43

# Select the dropdown options with CSS by label
#     Select From List By Label    id:Skills    CSS


# 6.problemwindohandling
# *** Settings ***
# Documentation     To validate the MultipleWindows
# Library           SeleniumLibrary
# Test Teardown     Close Browser

# *** Variables ***
# ${mainPageText}    //h1[text()='Automation Demo Site ']

# *** Test Cases ***
# Select Options in Dropdown
#     Open the browser with URL
#     Select the button to switch to child window
#     verify the child window is opened
#     verify the user is switched back to parent window
#     verify the user is switched back to child window

# *** Keywords ***
# Open the browser with URL
#     Create Webdriver    Chrome
#     Go To    https://demo.automationtesting.in/Windows.html
#     Maximize Browser Window
#     Set Selenium Implicit Wait    5

# Select the button to switch to child window
#     ${parentwindow} =    Get Window Handles
#     Click Element    xpath://div[@class='tabpane pullleft']/ul/li[2]/a
#     Click Button    css:.btn-primary
#     ${windows} =    Get Window Handles
#     ${count} =    Get Length    ${windows}
#     Log To Console   ${count}
#     Sleep    5

# verify the child window is opened
#     Switch Window    NEW

# verify the user is switched back to parent window
#     Switch Window    MAIN
#     Element Text Should Be    ${mainPageText}    Automation Demo Site

# verify the user is switched back to child window
#     Switch Window    title=Selenium
#     Sleep    5

# *** Settings ***
# Library    SeleniumLibrary


# *** Test Cases ***
# Handling multiple windows
#     open the browser with url
#     Select the button to switch to child window
#     verify the child window is opened
#     verify teh user is switched to parent window
#     verify the user is switched back to child window


# *** Keywords ***
# open the browser with url
#     Open Browser    https://demo.automationtesting.in/Windows.html    browser=chrome
#     Maximize Browser Window
#     Set Browser Implicit Wait    5
#     Sleep    5s

# Select the button to switch to child window
#     ${ParentWindow} =    Get Window Handles
#     Click Element    xpath=//div[@class='tabpane pullleft']/ul/li[2]/a
#     Click Button    css:.btn-primary
#     ${Windows} =    Get Window Handles
#     FOR    ${window}    IN    ${Windows}
#         Switch Window
#         Log To Console    ${window} 
#     END
#     ${count} =    Get Length   ${Windows}
#     Log To Console    ${count}

# verify the child window is opened
#     Switch Window    NEW
#     Page Should Contain    Selenium automates browsers
#     Sleep    5s

# verify teh user is switched to parent window
#     Switch Window    MAIN
#     # Element Text Should Be    ${mainPageText}    AutomationDemo Site
#     Sleep    5s

# verify the user is switched back to child window
#     Switch Window    title=Selenium
#     Sleep    5s
#     Close Browser

# 6. ALERT PROBLEM

# *** Settings ***
# Documentation     To validate the MultipleWindows
# Library           SeleniumLibrary
# Test Teardown     Close Browser

# *** Test Cases ***
# Select Options in Dropdown
#     Open The Browser With URL
#     Select The Alert With OK
#     Select The Alert With Cancel
#     Select the Alert With SendKeys

# *** Keywords ***
# Open The Browser With URL
#     Open Browser    https://demo.automationtesting.in/Alerts.html    chrome
#     Maximize Browser Window
#     Set Browser Implicit Wait    10
#     Sleep    5s

# Select The Alert With OK
#     Click Element    xpath://a[@href="#OKTab"]
#     Click Button    xpath://*[@id="OKTab"]/button
#     Sleep    5s
#     Handle Alert    action=ACCEPT
#     Sleep    5s

# Select The Alert With Cancel
#     Click Element    xpath://a[@href="#CancelTab"]
#     Click Button    xpath://div[@id="CancelTab"]/button
#     Sleep    5s
#     Handle Alert    action=DISMISS
#     Sleep    5s

# Select the Alert With SendKeys
#     Click Element    xpath://a[@href="#Textbox"]
#     Click Button    Xpath://*[@id="Textbox"]/button
#     Sleep    5s
#     Input Text Into Alert    this is my name    action=DISMISS
#     Sleep    5s

