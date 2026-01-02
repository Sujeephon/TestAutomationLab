*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://localhost:7272/Lab4/Registration.html

*** Test Cases ***
Register Empty First Name
    Open Browser  ${URL}  chrome
    Set Selenium Speed  0.5s
    Input Text  id=lastname  Sodyod
    Input Text  id=organization  CS KKU
    Input Text  id=email  somyod@kkumail.com
    Input Text  id=phone  091-001-1234
    Click Button  id=registerButton
    Page Should Contain  Please enter your first name!!
    sleep  5s
    Close Browser

Register Empty Last Name
    Open Browser  ${URL}  chrome
    Set Selenium Speed  0.5s
    Input Text  id=firstname  Somyod
    Input Text  id=organization  CS KKU
    Input Text  id=email  somyod@kkumail.com
    Input Text  id=phone  091-001-1234
    Click Button  id=registerButton
    Page Should Contain  Please enter your last name!!
    sleep  5s
    Close Browser

Register Empty First Name and Last Name
    Open Browser  ${URL}  chrome
    Set Selenium Speed  0.5s
    Input Text  id=organization  CS KKU
    Input Text  id=email  somyod@kkumail.com
    Input Text  id=phone  091-001-1234
    Click Button  id=registerButton
    Page Should Contain  Please enter your name!!
    sleep  5s
    Close Browser

Register Empty Email
    Open Browser  ${URL}  chrome
    Set Selenium Speed  0.5s
    Input Text  id=firstname  Somyod
    Input Text  id=lastname  Sodyod
    Input Text  id=organization  CS KKU
    Input Text  id=phone  091-001-1234
    Click Button  id=registerButton
    Page Should Contain  Please enter your email!!
    sleep  5s
    Close Browser

Register Empty Phone Number
    Open Browser  ${URL}  chrome
    Set Selenium Speed  0.5s
    Input Text  id=firstname  Somyod
    Input Text  id=lastname  Sodyod
    Input Text  id=organization  CS KKU
    Input Text  id=email  somyod@kkumail.com
    Click Button  id=registerButton
    Page Should Contain  Please enter your phone number!!
    sleep  5s
    Close Browser

Register Invalid Phone Number
    Open Browser  ${URL}  chrome
    Set Selenium Speed  0.5s
    Input Text  id=firstname  Somyod
    Input Text  id=lastname  Sodyod
    Input Text  id=organization  CS KKU
    Input Text  id=email  somyod@kkumail.com
    Input Text  id=phone  1234
    Click Button  id=registerButton
    Page Should Contain  Please enter a valid phone number e.g. 081-234-5678, 081 234 5678, or 081.234.5678
    sleep  5s
    Close Browser