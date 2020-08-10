*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
FirstScript
    Log   My first Script    
    
Login and add product to cart       
    Create Webdriver    Chrome     executable_path=/Users/apple/Downloads/chromedriver
    Go To    https://www.flipkart.com
     Set Browser Implicit Wait    5
    Click Button    //button[@class='_2AkmmA _29YdH8']    
    Set Browser Implicit Wait    5
   Mouse Over    //span[contains(text(),'Electronics')]    
  Click Element  (//a[contains(text(),'Realme')])[1]  
  Wait Until Page Contains    Realme    
  Scroll Element Into View    xpath://div[contains(text(),'Realme 6 Pro (Lightning Orange, 64 GB)')]
  Click Element    //div[contains(text(),'Realme 6 Pro (Lightning Orange, 64 GB)')]  
  Click Button    //button[@class='_2AkmmA _2Npkh4 _2MWPVK']  
  Close Browser 