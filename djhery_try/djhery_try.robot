*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CHROMEDRIVER_PATH}    /usr/local/bin/chromedriver  # Modifier selon ton OS

*** Test Cases ***
Exemple de test
    Open Browser    https://www.google.com    chrome    executable_path=${CHROMEDRIVER_PATH}
    # Close Browser
