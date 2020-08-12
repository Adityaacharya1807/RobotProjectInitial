*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Data.robot

*** Test Cases ***    
Start Browser
    Start Browser and Maximize
     
Add product to cart      
    Set Browser Implicit Wait    5
    Close Popup  
    Set Browser Implicit Wait    5
    Select Category    Electronics  
    Select Mobile Brand  iPhone SE
    Wait Until Page Contains    iPhone SE
    Select Mobile   7
    @{list1}    Get Window Handles
    FOR    ${win}    IN   ${list1}
       Switch Window   ${win}[1]  
       ${url}=  Get Location
       Log To Console   ${url}  
       ${listdata}=  Get Text    ${Textvalue}
       Set Global Variable    ${listdata}   
       Log To Console   ${listdata}  
       Click Element  ${AddToCart}  
    END  
Verify the cart value
    Set Browser Implicit Wait    5
    Set Global Variable     ${listdata} 
    Page Should Contain     ${listdata}
    Capture Element Screenshot    ${ElementValue}
    Close Browser 