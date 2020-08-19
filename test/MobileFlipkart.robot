*** Settings ***
Library          AppiumLibrary 
Resource    ../Resources/Mobiledata.robot

*** Test Case ***
Open Application On Android
   Open Application    ${server}  appPackage=${flipkart_package}  appActivity=${flipkart_activity}  platformName=${platform}  platformVersion=${platform_version}    deviceName=${device}    automationName=${line_e2e}   app=${chrome_app}   noReset=true  
   Sleep  5
   Click Element  ${elec} 
   Scroll  ${mob1}  ${mob2}
   Wait Until Page Contains Element  ${mob2}
   Click Element  ${mob3}
   

    