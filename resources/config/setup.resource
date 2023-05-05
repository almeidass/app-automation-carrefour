*** Settings ***
Library         OperatingSystem
Variables       setup.yaml


*** Keywords ***
Set Execution Environment
    ${exec_env}=    Get Environment Variable    EXEC_ENV    default=${SETUP}[env][default][exec_env]
    Set Global Variable    ${EXEC_ENV}    ${exec_env}

Set Appium Remote Url
    ${appium_remote_url}=    Get Environment Variable    APPIUM_REMOTE_URL    default=${SETUP}[appium][default][remote_url]
    Set Global Variable    ${APPIUM_REMOTE_URL}    ${appium_remote_url}

