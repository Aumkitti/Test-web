*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    DateTime

*** Variables ***
${BROWSER}    Edge
${USERNAME}   advisor
${PASSWORD}   advisor
${WEB_URL}  http://localhost:5173/
${FOLDER_NAME}    Screenshots
${StudentPassword}    644259000
${StudentUsername}    644259000
${StudentUsernamerepeat}    644259049
${Studentid}    644259000
${Studentidrepeat}    644259049
${Titlename}    นาย
${Firstname}    กิตติพงษ์
${Lastname}    เดชจิต
${falsePassword}    644259011

*** Keywords ***
Create Timestamp
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    Set Suite Variable    ${timestamp}
    ${SCREENSHOT_FOLDER}=    Set Variable    ${FOLDER_NAME}/${timestamp}
    Set Suite Variable    ${SCREENSHOT_FOLDER}

Open Edge
    Open Browser    ${WEB_URL}    ${BROWSER}

Loginbutton
    Click Element    id=signin-button

Input Username And Password
    Input Text        id=input-username    ${USERNAME} 
    Input Text        id=input-password    ${PASSWORD}

Click Login Button
    Click Element    id=submit-login

Wait For Text addstudent 
    Wait Until Page Contains Element    id=addstudent-Text
    Page Should Contain    เพิ่มนักศึกษา

Click addstudent button
    Click Element    id=add-student-button

Input titlename 
    Input Text    id=input-titlename    ${Titlename}

Input firstname 
    Input Text    id=input-firstname    ${Firstname}

Input lastname
    Input Text    id=input-lastname    ${Lastname}

Input studentid
    Input Text    id=input-studentid    ${Studentid}

Click dropdown room
    Click Element    id=section

Click option room
    Click Element    id=room-name

Click dropdown major
    Click Element    id=major

Click option major
    Click Element    id=major-name

Input student Username
    Input Text    id=input-studentusername    ${StudentUsername}

Input Password
    Input Text    id=input-studentpassword    ${StudentPassword} 

Input confirmPassword
    Input Text    id=input-confirmPassword    ${StudentPassword}    

Click Submit button 
    Click Element    id=save-student

Wait For Success Modal
    Wait Until Page Contains Element    //*[@id="my_modal"]
    Wait Until Element Contains    //*[@id="alertmodal"]    เพิ่มนักศึกษาสำเร็จ

Take Screenshot
    [Arguments]    ${screenshot_name}
    Capture Page Screenshot    ${SCREENSHOT_FOLDER}/${screenshot_name}.png

Save Screenshot on Success
    Take Screenshot    success_${timestamp}

Save Screenshot on Failure
    Take Screenshot    failure_${timestamp}

#กรณีรหัสผ่านไม่ตรงกัน
Wait For false Modal
    Wait Until Page Contains Element    //*[@id="my_modal"]
    Wait Until Element Contains    //*[@id="alertmodal"]    รหัสผ่านและยืนยันรหัสผ่านไม่ตรงกัน

Input confirmPassword false
    Input Text    id=input-confirmPassword    ${falsePassword}

#กรณีเพิ่มนักศึกษาซํ้า
Wait For Repeat Modal
    Wait Until Page Contains Element    //*[@id="my_modal"]
    Wait Until Element Contains    //*[@id="alertmodal"]    มีข้อผิดพลาดในการเพิ่มนักศึกษาเนื่องจากมีคนใช้ขื่อผู้ใช้นี้แล้ว   
    
Input student Username Repeat
    Input Text    id=input-studentusername    ${StudentUsernamerepeat}

Input studentid Repeat
    Input Text    id=input-studentid    ${Studentidrepeat}   

#กรณีกรอกข้อมูลไม่ครบ 
Wait For error Modal
    Wait Until Page Contains Element    //*[@id="my_modal"]
    Wait Until Element Contains    //*[@id="alertmodal"]    โปรดกรอกข้อมูลให้ครบถ้วน   
