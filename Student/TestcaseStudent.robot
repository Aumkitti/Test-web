*** Settings ***
Library    SeleniumLibrary
Resource   keywords.robot
Library    OperatingSystem
Library    DateTime

*** Test Cases ***
TC11001
    [Tags]    fillgrade
    [Documentation]    การกรอกผลการเรียน
    Create Timestamp
    Open Edge
    Sleep    1s
    Loginbutton
    Sleep    1s
    Input Username And Password   
    Sleep    1s
    Click Login Button
    Sleep    1s
    Wait For Text fillgrade
    Sleep    1s
    Click fillgrade button
    Sleep    1s
    Click dropdown year
    Sleep    3s
    click option year
    Sleep    1s
    Click redio semester
    Sleep    1s
    Input Teacher Name
    Wait For Text Teacher Name 
    Sleep    1s
    Click Name Teacher
    Sleep    1s
    Click dropdown Grade
    Sleep    1s
    Click option grade
    Sleep    1s
    Click Submit button fillgrade
    Sleep    1s
    Wait For Success Modal
    Sleep    1s
    Save Screenshot on Success

TC11002
    [Tags]    Editfillgrade
    [Documentation]    การกรอกผลการเรียนกรณีแก้ไข
    Create Timestamp
    Open Edge
    Sleep    1s
    Loginbutton
    Sleep    1s
    Input Username And Password   
    Sleep    1s
    Click Login Button
    Sleep    1s
    Wait For Text fillgrade
    Sleep    1s
    Click fillgrade button
    Sleep    1s
    Click dropdown year
    Sleep    3s
    click option year
    Sleep    1s
    Click redio semester
    Sleep    1s
    Clear And Input Text
    Wait For Text Teacher Name 
    Sleep    1s
    Click Name Teacher
    Sleep    1s
    Click dropdown Grade
    Sleep    1s
    Click option grade B
    Sleep    1s
    Click Submit button fillgrade
    Sleep    1s
    Wait For Success Modal
    Sleep    1s
    Save Screenshot on Success

TC11003
    [Tags]    Freesubject
    [Documentation]    การกรอกผลการเรียนกรณีเปลี่ยนให้เป็นวิชาเสรี
    Create Timestamp
    Open Edge
    Sleep    1s
    Loginbutton
    Sleep    1s
    Input Username And Password   
    Sleep    1s
    Click Login Button
    Sleep    1s
    Wait For Text fillgrade
    Sleep    1s
    Click fillgrade button
    Sleep    1s
    Click dropdown year
    Sleep    3s
    click option year
    Sleep    1s
    Click redio semester
    Sleep    1s
    Click dropdown freesubject
    Sleep    1s
    click option freesubject
    Sleep    1s
    Click Submit button fillgrade
    Sleep    1s
    Wait For Success Modal
    Sleep    1s
    Save Screenshot on Success
