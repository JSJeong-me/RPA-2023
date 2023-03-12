*** Settings ***
Library     RPA.Browser.Selenium


*** Tasks ***
웹로그인
    Open Available Browser    https://www.naver.com/    headless=${FALSE}    maximized=${FALSE}
    Click Element    //*[@id="account"]/a
    Sleep    3
    Input Text    //*[@id="id"]    heinem
    Input Password    //*[@id="pw"]    diana101!
    Click Element    //*[@id="log.login"]
    Sleep    3
