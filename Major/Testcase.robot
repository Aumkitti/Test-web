*** Settings ***
Library    SeleniumLibrary
Resource   keywords.robot

*** Test Cases ***
TC4001: การเพิ่มหลักสูตร
    [Tags]    addcourse
    [Documentation]    การเพิ่มหลักสูตรโดยตัวแทนหลักสูตร กรณีเพิ่มสำเร็จ
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

    Fill Course Form
    Sleep    1s

    Click Save Course Button
    Sleep    1s

    Wait For Success Message
    Sleep    1s

    Close Success Modal
    Sleep    1s

    Click Back Button

    Wait For Course Overview Section
    Sleep    1s

    Click Course Overview Section

    Wait For Course Name    
    Sleep    1s

    Capture Screenshot 
    
    Close Browser

TC4002: กรณีเพิ่มรหัสหลักสูตรซํ้า
    [Tags]    errorcoursecode
    [Documentation]    การเพิ่มหลักสูตรโดยตัวแทนหลักสูตรกรณีเพิ่มรหัสหลักสูตรซํ้า
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

    Fill Course Form
    Sleep    1s

    Click Save Course Button
    Sleep    1s

    Wait For Error Message
    Sleep    1s

    Capture Screenshot

    Close Browser

TC4003: กรณีกรอกข้อมูลไม่ครบ
    [Tags]    errorfill
    [Documentation]    การเพิ่มหลักสูตรโดยตัวแทนหลักสูตรกรณีกรอกข้อมูลไม่ครบ
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

    Fill Course is not complete
    Sleep    1s

    Click Save Course Button
    Sleep    1s

    Wait For Error fill
    Sleep    1s

    Capture Screenshot 

    Close Browser