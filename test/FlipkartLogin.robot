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
    Select Mobile Brand  Motorola razr
    Wait Until Page Contains      Motorola razr  
    Select Mobile   2
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
    ${name}=  Get Text   ${CartOrderName}  
    Wait Until Element Is Visible    ${CartOrderName}   
    Set Global Variable     ${listdata}  
    ${name2}=  Get Text  //div[@class='v7-Wbf']
    ${name3}=  Catenate    SEPARATOR=  ${name}  ${name2}
   Should Be Equal As Strings   ${listdata}      ${name3}    
    Capture Element Screenshot    ${ElementValue}
    Close Browser 