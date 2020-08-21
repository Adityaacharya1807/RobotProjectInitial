*** Settings ***
Library    AppiumLibrary
Resource   ../Resources/Mobiledata.robot
#Test Teardown     Quit Application

*** Test Case ***
Open Application On Android
   Open Application    ${server}  appPackage=${flipkart_package}  appActivity=${flipkart_activity}  platformName=${platform}  platformVersion=${platform_version}    deviceName=${device}    automationName=${line_e2e}   app=${chrome_app}   #noReset=true  
   Sleep  5
   Click Element   ${popup}
   Click Element   ${skipdata}
   Click Element   ${elec} 
   Wait Until Page Contains Element  ${elec}
   Sleep   2 
   Click Element  ${Search}
   Input Text    ${text}  mi
   Click Element   ${Ent}
   Sleep  5
   Click Element  ${allow}
   Sleep  5
   Click Element  ${permission}
   Wait Until Page Contains Element   ${permission}
   Scroll  ${prod1}  ${prod2}
   Wait Until Page Contains Element  ${prod2}
   Click Element   ${prod3}
   Click Element   ${addTo}
   Wait Until Page Contains Element    ${addTo}

Skip and Continue
  Sleep  5
  Click Element    ${skip} 
  Wait Until Page Contains Element   ${skip} 

Validate the Cart
 Click Element  ${validate}
 Wait Until Page Contains Element   ${validate}



    