# *** Settings ***
# Library    SeleniumLibrary
# Test Teardown    Close Browser

# *** Test Cases ***
# Verify that the user can drag and drop elements
#     Open Browser To Demo Page
#     Verify Element Text Before Drag
#     Perform Drag And Drop
#     Verify Element Text After Drag


# *** Keywords ***
# Open Browser To Demo Page
#     Open Browser    https://demoqa.com/droppable    chrome
#     Maximize Browser Window
#     Set Selenium Implicit Wait    5

# Verify Element Text Before Drag
#     Element Text Should Be    id:droppable    Drop here    timeout=5

# Perform Drag And Drop
#     Drag And Drop    id:draggable    id:droppable

# Verify Element Text After Drag
#     Element Text Should Be    id:droppable    Dropped!    timeout=5

#2. project 

