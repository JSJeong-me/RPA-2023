*** Settings ***
Library     RPA.Browser.Selenium


*** Tasks ***
온도
    현재기온


*** Keywords ***
현재기온
    Open Available Browser    https://naver.com/
    Input Text    //*[@id="query"]    날씨
    Sleep    1
    Press Keys    //*[@id="query"]    RETURN
    Sleep    1
    ${text}=    Get Text
    ...    //*[@id="main_pack"]/section[1]/div[1]/div[2]/div[1]/div[1]/div/div[2]/div/div[1]/div[1]/div[2]
    Sleep    3
