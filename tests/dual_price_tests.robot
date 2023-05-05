*** Settings ***
Library     AppiumLibrary
Library     String


*** Variables ***
${ANDROID_AUTOMATION_NAME}      UIAutomator2
${ANDROID_APP}                  ${EXECDIR}/app/1416-app-universal-release.apk
${ANDROID_PLATFORM_NAME}        Android
# ${ANDROID_PLATFORM_VERSION}    %{ANDROID_PLATFORM_VERSION=13}


*** Test Cases ***
Acessar Tela Institucional
    Open Test Application
    Set Appium Timeout	30s
    Get Location List Stories
    Wait Until Element Is Visible    //*[contains(@text,'Benefícios Meu Carrefour')]
    Tap    //*[contains(@text,'Benefícios Meu Carrefour')]
    ############################################################################################
    Wait Until Element Is Visible    br.com.carrefour:id/imageBenefitsTitle
    Capture Page Screenshot
    ############################################################################################
    Wait Until Page Contains Element    br.com.carrefour:id/textBenefitsSubtitle
    ${textBenefitsSubtitle}=    Get Text    br.com.carrefour:id/textBenefitsSubtitle
    ${textBenefitsSubtitle}=    Replace String    ${textBenefitsSubtitle}    \n    ${EMPTY}
    Should Be Equal As Strings    ${textBenefitsSubtitle}    Minhas Recompensas, Cupons & Ofertas Meu Carrefour Tudo em um só lugar!
    ############################################################################################
    Wait Until Page Contains Element    br.com.carrefour:id/textBenefitsSubtitle2
    ${textBenefitsSubtitle2}=    Get Text    br.com.carrefour:id/textBenefitsSubtitle2
    ${textBenefitsSubtitle2}=    Replace String    ${textBenefitsSubtitle2}    \n    ${EMPTY}
    Should Be Equal As Strings    ${textBenefitsSubtitle2}    Cadastre-se gratuitamente e usufrua de benefícios exclusivos para clientes do #benefíciosMeuCarrefour!
    ############################################################################################
    # Swipe Up    //*[contains(@text,'COMO FUNCIONA?')]
    # Swipe Down    //*[contains(@text,'COMO FUNCIONA?')]
    ############################################################################################
    Set Local Variable    ${fragement}    //*[contains(@text,'COMO FUNCIONA?')]
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  1100  500
    Sleep    1s
    Capture Page Screenshot
    Wait Until Page Contains Element  ${fragement}
    Element Text Should Be  br.com.carrefour:id/textExplanatory  COMO FUNCIONA?
    Element Text Should Be  br.com.carrefour:id/textExplanatory1View  Para participar é simples:
    Element Text Should Be  br.com.carrefour:id/buttonProfile  Crie ou Entre na sua Conta
    Element Text Should Be  br.com.carrefour:id/textExplanatory2View  e automaticamente você terá acesso aos seguintes\nBENEFÍCIOS EXCLUSIVOS:
    ############################################################################################
    Set Local Variable    ${fragement}    //*[contains(@text,'MINHAS RECOMPENSAS')]
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  1100  500
    Sleep    1s
    Capture Page Screenshot
    ############################################################################################
    Wait Until Page Contains Element  br.com.carrefour:id/imageLoyaltyView
    Element Text Should Be  br.com.carrefour:id/textLoyaltyTitle  MINHAS RECOMPENSAS
    Element Text Should Be  br.com.carrefour:id/textLoyaltyDescription  Ganhe moedas que podem ser trocadas por recompensas!${SPACE}
    ############################################################################################
    Set Local Variable    ${fragement}    br.com.carrefour:id/textCouponsTitle
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  1100  500
    Sleep    1s
    Capture Page Screenshot
    ############################################################################################
    Wait Until Page Contains Element  br.com.carrefour:id/textCouponsTitle
    Element Text Should Be  br.com.carrefour:id/textCouponsTitle  CUPONS
    Wait Until Page Contains Element  br.com.carrefour:id/imageCouponsView
    Element Text Should Be  br.com.carrefour:id/textCouponsDescription  Tenha acesso a diversos Cupons Exclusivos com descontos e ofertas imperdíveis!
    ############################################################################################
    Set Local Variable    ${fragement}    br.com.carrefour:id/textOffersTitle
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  1100  500
    Sleep    1s
    Capture Page Screenshot
    ############################################################################################
    Element Text Should Be  br.com.carrefour:id/textOffersTitle  OFERTAS MEU CARREFOUR
    Wait Until Page Contains Element    br.com.carrefour:id/imageOffersView
    Element Text Should Be    br.com.carrefour:id/textOffersDescription    Ofertas com a Etiqueta Roxa com preços mais baixos exclusivos para clientes cadastrados.
    ############################################################################################
    Set Local Variable    ${fragement}    br.com.carrefour:id/textTileDiscount
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  1100  500
    Sleep    1s
    Capture Page Screenshot
    ############################################################################################
    Element Text Should Be  br.com.carrefour:id/textTileDiscount  SAIBA QUANTO JÁ ECONOMIZOU
    Element Text Should Be  br.com.carrefour:id/textSubTitleDiscount  Entre na página do #benefíciosMeuCarrefour e veja o quanto você já economizou utilizando todos os benefícios!
    Wait Until Page Contains Element    br.com.carrefour:id/imageAbout
    Element Text Should Be  br.com.carrefour:id/buttonWantUse  Quero fazer parte
    ############################################################################################
    Set Local Variable    ${fragement}    br.com.carrefour:id/scrollViewExplanatory
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  1000  500
    Sleep    1s
    Capture Page Screenshot
    ############################################################################################
    Element Text Should Be  br.com.carrefour:id/buttonRegulation  Regulamento do programa
    Element Text Should Be  br.com.carrefour:id/titleHelp  Ainda com dúvidas?
    Element Text Should Be  br.com.carrefour:id/textHelp  Envie agora mesmo uma mensagem por Whatsapp.
    Wait Until Page Contains Element    br.com.carrefour:id/imageCarina
    Element Text Should Be    br.com.carrefour:id/buttonCallCarina    Fale com a Carina
    ############################################################################################
    Swipe               0    0  0  1000  500
    Swipe By Percent    50    50    50    20
    Capture Page Screenshot

*** Keywords ***
Open Test Application
    Open Application    http://127.0.0.1:4723/wd/hub    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}    app=${ANDROID_APP}
    ...    settings[waitForIdleTimeout]=${0}

Swipe Up
    [Arguments]       ${fragement}
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe Down
    [Arguments]       ${fragement}
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe Left to Right
    [Arguments]    ${fragement}=//*[@resource-id='br.com.carrefour:id/rvListStories']//*[contains(@text,'Benefícios Meu Carrefour')]
    # [Arguments]    ${fragement}=//*[@resource-id='br.com.carrefour:id/rvListStories']//*[contains(@text,'Benefícios Meu Carrefour')]
    wait until element is Visible    ${fragement}
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 0.1)
    ${start_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 1)
    ${end_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}    1500
    Sleep    1

Swipe Right to Left
    [Arguments]    ${fragement}=//*[contains(@text,'Drogaria')]
    wait until element is Visible    ${fragement}
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 1)
    ${start_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 0.1)
    ${end_y}=    Evaluate    ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}    1000
    Sleep    1

Get Location List Stories
    [Arguments]    ${fragement}=//*[@resource-id='br.com.carrefour:id/rvListStories']
    Wait Until Element Is Visible    ${fragement}
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${x}=    Evaluate    ${element_location['x']} + (${element_size['width']} / 2)
    ${y}=    Evaluate    ${element_location['y']} + (${element_size['height']} / 2)
    ${end_x}=    Evaluate    ${element_location['x']} + (${element_size['width']} * 0.01)
    ${list_stories_location}=    Create Dictionary    x=${x}    y=${y}
    Swipe    ${x}    ${y}    ${end_x}    ${y}    500
    RETURN    ${list_stories_location}
