*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Data.robot

*** Test Cases ***
FirstScript
    Log   My first Script 
    
Start Browser
    Start Browser and Maximize
    
Add product to cart       
    Set Browser Implicit Wait    5
    Close Popup  
    Set Browser Implicit Wait    5
    Select Category    Electronics  
    Select Mobile Brand  Mi
    Wait Until Page Contains     Mi    
    Select Mobile   5
    @{list1}    Get Window Handles
    FOR    ${win}    IN   ${list1}
       Switch Window   ${win}[1]  
       ${url}=  Get Location
       Log To Console   ${url}  
       Click Element  (//ul[@class='row'])//li[1]   
       Page Should Contain     Redmi        
    END  
    Close Browser 