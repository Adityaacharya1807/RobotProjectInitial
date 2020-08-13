*** Settings ***
Library    SeleniumLibrary
Library    String    
Resource    ../Resources/Data.robot

*** Test Cases ***    
Start Browser
    Start Browser and Maximize
     
Add product to cart      
    Set Browser Implicit Wait    5
    Close Popup  
    Select Category    Electronics  
    Select Mobile Brand  iPhone SE
    Wait Until Page Contains   iPhone SE  
    Select Mobile   8
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
    Sleep  5   
    Mouse Over    ${hoverlink} 
    ${text}=  Get Text    ${cartText}
    ${word}=   Split String From Right    ${text}  max_split=-1
    Set Global Variable     ${listdata} 
    ${words}=   Split String From Right    ${listdata}  max_split=-1
    Should Be Equal As Strings    ${word}[0]      ${words}[0]  
    Mouse Over  ${placeOrder}
    Element Should Be Enabled    ${placeOrder}        
    Capture Element Screenshot    ${ElementValue}
    Close Browser 