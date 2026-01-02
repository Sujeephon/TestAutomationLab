*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://localhost:7272/Lab4/Registration.html

*** Test Cases ***
Register With All Fields
    Open Browser  ${URL}  chrome
    Set Selenium Speed  0.5s
    Input Text  id=firstname  Somyod
    Input Text  id=lastname  Sodsai
    Input Text  id=organization  CS KKU
    Input Text  id=email  somyod@kkumail.com
    Input Text  id=phone  091-001-1234
    Click Button  id=registerButton
    Title Should be  Success
    Page Should Contain  Thank you for registering with us.
    sleep  2s
    Close Browser

Register Without Organization
    Open Browser  ${URL}  chrome
    Set Selenium Speed  0.5s
    Input Text  id=firstname  Somyod
    Input Text  id=lastname  Sodsai
    Input Text  id=email  somyod@kkumail.com
    Input Text  id=phone  091-001-1234
    Click Button  id=registerButton
    Title Should be  Success
    Page Should Contain  Thank you for registering with us.
    Close Browser

