*** Settings ***
Library          AppiumLibrary 

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
${elec}  xpath=(//*[@resource-id='com.flipkart.android:id/banner_image'])[5]
${mob1}  xpath=(//*[@resource-id='com.flipkart.android:id/tv_card_view_holder'])[1]
${mob2}  xpath=//*[@resource-id='com.flipkart.android:id/banner_image']
${mob3}  xpath=(//*[@class='android.widget.TextView'])[16]


*** Keywords ***
Scroll Down
 [Arguments]  ${ARG1}  ${ARG2}  ${ARG3}
    Scroll  ${ARG1}  ${ARG2}
    Wait Until Page Contains Element  ${ARG2}
    Click Element  ${ARG3}