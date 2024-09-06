*** Variables ***
${BROWSER}    Edge
${USERNAME}   course
${PASSWORD}   course
${COURSE_URL}  http://localhost:5173/course
${WEB_URL}  http://localhost:5173/ 
${thai_name}    วิทยาการคอมพิวเตอร์
${eng_name}    Computer Science
${major_code}    255314711037911
${major_year}    2564
${major_credit}    120
${major_name}    วิทยาการคอมพิวเตอร์
${alert}    id=alertmodal


*** Keywords ***
Open Edge
    Open Browser    ${WEB_URL}    ${BROWSER}

Loginbutton
    Click Element    id=signin-button

Input Username And Password
    Input Text        id=input-username    ${USERNAME} 
    Input Text        id=input-password    ${PASSWORD}

Click Login Button
    Click Element    id=submit-login

Wait For Course Addition Section
    Wait Until Page Contains Element    id=add-major-text
    Page Should Contain    เพิ่มหลักสูตร

Click Add Course Section
    Click Element    id=add-major-button

Fill Course Form
    Input Text    id=input-majornameth    ${thai_name}
    Input Text    id=input-majornameeng    ${eng_name}
    Input Text    id=input-majorcode    ${major_code}
    Input Text    id=input-majoryear    ${major_year}
    Input Text    id=input-majorunit    ${major_credit}

Fill Course is not complete
    Input Text    id=input-majornameth    ${thai_name}
    Input Text    id=input-majornameeng    ${eng_name}   

Click Save Course Button
    Click Element    id=savebutton

Wait For Success Message
    Wait Until Page Contains Element    ${alert}
    Page Should Contain    เพิ่มหลักสูตรสำเร็จ !

Close Success Modal
    Click Element    id=close-alertmodal

Click Back Button
    Click Element    id=back-button

Wait For Course Overview Section
    Wait Until Page Contains Element    id=view-major-text
    Page Should Contain    ดูหลักสูตร

Click Course Overview Section
    Click Element    id=view-major-button

Wait For Course Name
    Wait Until Page Contains Element    id=majornameth
    Page Should Contain    ${major_name}

Capture Screenshot
    Capture Page Screenshot

Wait For Error Message
    Wait Until Page Contains Element    ${alert}
    Page Should Contain    รหัสหลักสูตรนี้มีอยู่แล้ว

Wait For Error fill
    Wait Until Page Contains Element    ${alert}
    Page Should Contain    กรุณากรอกข้อมูลที่จำเป็นให้ครบถ้วน
    