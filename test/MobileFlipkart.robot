*** Settings ***
Library    AppiumLibrary
Resource   ../Resources/Mobiledata.robot
#Test Teardown     Quit Application

*** Test Case ***
Open Application On Android
   Open Application    ${server}  appPackage=${flipkart_package}  appActivity=${flipkart_activity}  platformName=${platform}  platformVersion=${platform_version}    deviceName=${device}    automationName=${line_e2e}   app=${chrome_app}   noReset=true  
   Sleep  5
   Click Element  ${elec} 
   Sleep   2 
   Click Element  ${Search}
   Input Text    ${text}  mi
   Click Element   ${Ent}
   Sleep  2
   Scroll  ${prod1}  ${prod2}
   Wait Until Page Contains Element  ${prod2}
   Sleep  2
   Click Element   ${prod3}
   Sleep  5
   Click Element  ${addTo}

Skip and Continue
  Sleep  5
  Click Element   ${skip}
  Wait Until Page Contains Element ${skip}



    