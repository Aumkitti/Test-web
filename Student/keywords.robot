*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    DateTime

*** Variables ***
${BROWSER}    Edge
${USERNAME}   644259010
${PASSWORD}   644259010
${WEB_URL}  http://localhost:5173/
${Teacher}    นฤพล
${FOLDER_NAME}    Screenshots
${NETTEACHER}    วรเชษฐ์

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

Wait For Text fillgrade 
    Wait Until Page Contains Element    id=fillgrade-Text
    Page Should Contain    กรอกแบบบันทึกผลการเรียน

Click fillgrade button
    Click Element    id=Menu-fillgrade-button

Click dropdown year
    Click Element    id=dropdown-year

Click option year
    Click Element    id=option-year

Click redio semester
    Click Element    id=semester1
    
Input Teacher Name
    Input Text    id=input-Teacher    ${Teacher}

Wait For Text Teacher Name 
    Wait Until Page Contains Element    id=Teacher-Name
    Page Should Contain    นฤพล สุวรรณวิจิตร

Click Name Teacher
    Click Element    id=Teacher-Name  

Click dropdown Grade
    Click Element    id=dropdown-grade

Click option grade
    Click Element    id=option-A

Click Submit button fillgrade
    Click Element    //*[@id="submit-button"]

Wait For Success Modal
    Wait Until Page Contains Element    id=my_modal_1
    Wait Until Element Contains    id=alertmodal    บันทึกสำเร็จ !

Take Screenshot
    [Arguments]    ${screenshot_name}
    Capture Page Screenshot    ${SCREENSHOT_FOLDER}/${screenshot_name}.png

Save Screenshot on Success
    Take Screenshot    success_${timestamp}

Save Screenshot on Failure
    Take Screenshot    failure_${timestamp}




# //กรณีแก้ไข
Clear And Input Text
    Input Text    id=input-Teacher    ''      
    Input Text    id=input-Teacher    ${NETTEACHER} 

Click option grade B
    Click Element    id=option-B+
# //กรณีเปลี่ยนให้เป็นวิชาเสรี
Click dropdown freesubject
    Click Element    id=dropdown-freesubject

click option freesubject
    click Element    id=freesubject-true
