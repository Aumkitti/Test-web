*** Variables ***
${BROWSER}    Edge
${USERNAME}   course
${PASSWORD}   course
${COURSE_URL}  http://localhost:5173/course
${WEB_URL}  http://localhost:5173/ 



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


