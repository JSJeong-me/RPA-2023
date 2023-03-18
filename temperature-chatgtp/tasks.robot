*** Settings ***
Library     RPA.Browser.Selenium


*** Variables ***
${url}          https://www.naver.com/
${search}       날씨


*** Tasks ***
Get Current Temperature
    Open Available Browser    ${url}
    Input Text    css=#query    ${search}
    Click Button    css=#search_btn
    Wait Until Element Is Visible
    ...    //*[@id="main_pack"]/section[1]/div[1]/div[2]/div[1]/div[1]/div/div[2]/div/div[1]/div[1]/div[2]/strong
    ${temperature}=    Get Text
    ...    //*[@id="main_pack"]/section[1]/div[1]/div[2]/div[1]/div[1]/div/div[2]/div/div[1]/div[1]/div[2]/strong
    Log    The current temperature is ${temperature}
    Close All Browsers
