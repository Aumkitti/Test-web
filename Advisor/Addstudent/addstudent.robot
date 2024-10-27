*** Settings ***
Library    SeleniumLibrary
Resource   keywords.robot
Library    OperatingSystem
Library    DateTime

*** Test Cases ***
TC8001
    [Tags]    addstudent
    [Documentation]    เพิ่มนักศึกษาสำเร็จ
    Create Timestamp
    Open Edge
    Sleep    1s
    Loginbutton
    Sleep    1s
    Input Username And Password   
    Sleep    1s
    Click Login Button
    Wait For Text addstudent
    Sleep    1s
    Click addstudent button
    Sleep    1s
    Input titlename
    Sleep    1s
    Input firstname
    Sleep    1s
    Input lastname
    Sleep    1s
    Input studentid 
    Sleep    1s
    Click dropdown room
    Sleep    1s
    Click option room
    Sleep    1s
    Click dropdown major
    Sleep    1s
    Click option major
    Sleep    1s
    Input student Username
    Sleep    1s
    Input Password
    Sleep    1s
    Input confirmPassword
    Sleep    1s
    Click Submit button
    Wait For Success Modal
    Save Screenshot on Success

TC8002
    [Tags]    addstudentfalse
    [Documentation]    เพิ่มนักศึกษากรีณีรหัสผ่านไม่ตรงกัน
    Create Timestamp
    Open Edge
    Sleep    1s
    Loginbutton
    Sleep    1s
    Input Username And Password   
    Sleep    1s
    Click Login Button
    Wait For Text addstudent
    Sleep    1s
    Click addstudent button
    Sleep    1s
    Input titlename
    Sleep    1s
    Input firstname
    Sleep    1s
    Input lastname
    Sleep    1s
    Input studentid 
    Sleep    1s
    Click dropdown room
    Sleep    1s
    Click option room
    Sleep    1s
    Click dropdown major
    Sleep    1s
    Click option major
    Sleep    1s
    Input student Username
    Sleep    1s
    Input Password
    Sleep    1s
    Input confirmPassword false
    Sleep    1s
    Click Submit button
    Wait For false Modal
    Save Screenshot on Success

TC8003
    [Tags]    addstudentRepeat
    [Documentation]    เพิ่มนักศึกษากรีณีเพิ่มรหัสนักศึกษาซํ้า
    Create Timestamp
    Open Edge
    Sleep    1s
    Loginbutton
    Sleep    1s
    Input Username And Password   
    Sleep    1s
    Click Login Button
    Wait For Text addstudent
    Sleep    1s
    Click addstudent button
    Sleep    1s
    Input titlename
    Sleep    1s
    Input firstname
    Sleep    1s
    Input lastname
    Sleep    1s
    Input studentid Repeat 
    Sleep    1s
    Click dropdown room
    Sleep    1s
    Click option room
    Sleep    1s
    Click dropdown major
    Sleep    1s
    Click option major
    Sleep    1s
    Input student Username Repeat
    Sleep    1s
    Input Password
    Sleep    1s
    Input confirmPassword
    Sleep    1s
    Click Submit button
    Wait For Repeat Modal
    Save Screenshot on Success

TC8004
    [Tags]    addstudenterror
    [Documentation]    เพิ่มนักศึกษากรีณีกรอกข้อมูลสำคัญไม่ครบ
    Create Timestamp
    Open Edge
    Sleep    1s
    Loginbutton
    Sleep    1s
    Input Username And Password   
    Sleep    1s
    Click Login Button
    Wait For Text addstudent
    Sleep    1s
    Click addstudent button
    Sleep    1s
    Input titlename
    Sleep    1s
    Input firstname
    Sleep    1s
    Input lastname
    Sleep    1s
    Input studentid Repeat 
    Sleep    1s
    Click dropdown room
    Sleep    1s
    Click option room
    Sleep    1s
    Input Password
    Input confirmPassword
    Click Submit button
    Wait For error Modal
    Save Screenshot on Success

