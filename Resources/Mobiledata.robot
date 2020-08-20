*** Settings ***
Library    AppiumLibrary

*** Variables ***
${server}  http://localhost:4723/wd/hub
${platform}  Android
${BROWSER}  Chrome
${platform_version}  8.1.0
${device}  42009babd330a453
${line_e2e}  Appium
${flipkart_package}  com.flipkart.android
${flipkart_activity}  com.flipkart.android.SplashActivity
${chrome_app}  /Users/apple/Desktop/com.flipkart.android (1).apk
${elec}  xpath=(//*[@resource-id='com.flipkart.android:id/banner_image'])[3]
${mob1}  xpath=(//*[@resource-id='com.flipkart.android:id/tv_card_view_holder'])[1]
${mob2}  xpath=//*[@resource-id='com.flipkart.android:id/banner_image']
${mob3}  xpath=(//*[@class='android.widget.TextView'])[16]
${Search}  xpath=//*[@resource-id='com.flipkart.android:id/search_icon']
${text}  xpath=//*[@resource-id='com.flipkart.android:id/search_autoCompleteTextView']
${Ent}  xpath=//*[@resource-id='com.flipkart.android:id/txt_title']
${prod1}  xpath=//*[@class='android.view.ViewGroup']
${prod2}  xpath=(//*[@class='android.view.ViewGroup'])[6]
${prod3}  xpath= (//*[@class='android.view.ViewGroup'])[6]
${addTo}  //*[@text='ADD TO CART'] 
${goto}   //*[@text='GO TO CART'] 
${skip}   //*[@text='SKIP & GO TO CART']


*** Keywords ***
Scrolled
    [Arguments]  ${ARG1}  ${ARG2}  ${ARG3}
    Scroll  ${ARG1}  ${ARG2}
    Wait Until Page Contains Element  ${ARG2}
    Click Element   ${ARG3}



Swipe Up
  ${element_size}=    Get Element Size    xpath =(//*[@class='android.view.ViewGroup'])[4]
  ${element_location}=    Get Element Location    xpath =(//*[@class='android.view.ViewGroup'])[4]
  ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
  ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
  ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
  ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
  Swipe               $


