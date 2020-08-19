*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${PATH}     /Users/apple/Downloads/chromedriver
${URL}    https://www.flipkart.com
${Browser}    Chrome
${MOBILE_BRAND}    Realme
${CATEGORY}    Electronics
${ElementValue}   //span[@class='pMSy0p XU9vZa'] 
${AddToCart}  (//ul[@class='row'])//li[1] 
${CartOrderName}  //div[@class='_3vIvU_']//div//a
${Textvalue}  //div[@class='_29OxBi']//h1//span
${hoverlink}  (//div[@class='_3vIvU_'])//div[1]
${placeOrder}   //button//span[text()='Place Order']
${cartText}  (//div[@class='_3vIvU_'])//a

*** Keywords ***
Start Browser and Maximize
    Create Webdriver    ${Browser}     #executable_path=${PATH} 
    Go To     ${URL}   
    Maximize Browser Window  

Select Category
    [Arguments]    ${CATEGORY}
     Mouse Over    //span[contains(text(),'${CATEGORY}')] 

Close Popup
     Click Button    //button[@class='_2AkmmA _29YdH8']  

Select Mobile Brand
     [Arguments]    ${MOBILE_BRAND}    
     Click Element  (//a[contains(text(),'${MOBILE_BRAND}')])[1]  
     
Select Mobile
    [Arguments]   ${Mobile_Name} 
    Scroll Element Into View    (//div[@class='_3wU53n'])[ ${Mobile_Name} ]
    Click Element    (//div[@class='_3wU53n'])[ ${Mobile_Name} ]
    
