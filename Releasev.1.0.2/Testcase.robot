*** Settings ***
Library    SeleniumLibrary
Resource   keywords.robot

*** Test Cases ***
TC4004
    [Tags]
    Open Edge
    Sleep    1s
    Loginbutton
    Sleep    1s
    Input Username And Password   
    Sleep    1s
    Click Login Button
    Wait For Course Addition Section
    Sleep    1s
    Click Add Course Section
    Sleep    1s

TC4005