*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVEUR}    livraison3.testacademy.fr
${HOMEY URL}    http://${SERVEUR}/
${NAVIGATEUR}    Chrome
${LIEN SE CONNECTER}    xpath=//a[contains(text(),'Se connecter')]
${LIEN SE DECONNECTER}    xpath=(//a[contains(text(),'Se déconnecter')])[3]
${UTILISATEUR VALIDE}    robot
${UTILISATEUR NON VALIDE}    nonvalide
${MOT DE PASSE VALIDE}    robot
${MOT DE PASSE NON VALIDE}    nonvalide
${CHAMP NOM UTILISATEUR}    name=username
${CHAMP MOT DE PASSE}    name=password
${BOUTON VALIDER}    css=.homey_login_button
${TITRE TABLEAU DE BORD}    Tableau de bord - Livraison 3
${ESPACE POUR AFFICHER LES ERREURS}    css=#modal-login .error
${TITRE ACCEUIL}    Accueil - Livraison 3

*** Keywords ***

Ouvrir Le Navigateur Et Accéder A La Page d'Accueil
    Open Browser    browser=${NAVIGATEUR}
    Go To    ${HOMEY URL}
    Maximize Browser Window

Accéder A La Page De Connexion
    Click Element    ${LIEN SE CONNECTER}
    Wait Until Element Is Visible    ${CHAMP NOM UTILISATEUR}

Entrer Le Nom d'Utilisateur
    [Arguments]    ${nom_utilisateur}
    Click Element     ${CHAMP NOM UTILISATEUR}
    Input Text    ${CHAMP NOM UTILISATEUR}    ${nom_utilisateur}

Entrer Le Mot De Passe
    [Arguments]    ${mot_de_passe}
    Click Element     ${CHAMP MOT DE PASSE}
    Input Text    ${CHAMP MOT DE PASSE}    ${mot_de_passe}

Soumettre Le Formulaire De Connexion
   Click Button    ${BOUTON VALIDER} 
    