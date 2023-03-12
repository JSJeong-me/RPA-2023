*** Settings ***
Documentation       Playwright template.

Library             RPA.Browser.Playwright
Library    RPA.Browser.Selenium


*** Tasks ***
Playwright: Open a browser in headless mode
    New Page    https://robotsparebinindustries.com

# Playwright: Open a browser in GUI mode
#     Open Browser
#     New Page    https://robotsparebinindustries.com
    Sleep    3
    Type Text    //*[@id="username"]    maria
    Type Secret    //*[@id="password"]    thoushallnotpass
    Click    //*[@id="root"]/div/div/div/div[1]/form/button
    Sleep    5