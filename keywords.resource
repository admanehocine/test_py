*** Settings ***
Library    SeleniumLibrary    implicit_wait=10s
Library    FakerLibrary       locale=fr_FR

*** Variables ***
${chemin}=      https://thrundrz.fr/gestion/
 

*** Keywords ***

Ouvrir Le Navigateur
    Open Browser    url=${chemin}    browser=chrome

Aller Sur La Page Inscription
    Wait Until Element Is Visible    xpath=//a[@href="/gestion/newcompte"]
    Click Element                    xpath=//a[@href="/gestion/newcompte"]
    Wait Until Location Is           https://thrundrz.fr/gestion/newcompte

Remplir Le Formulaire Inscription
    ${nom}=         FakerLibrary.Name
    ${email}=       FakerLibrary.Email
    ${telephone}=   FakerLibrary.Phone Number
    ${siret}=       FakerLibrary.Numerify    text=##############
    ${password}=    FakerLibrary.Password    length=12    special_chars=True    digits=True    upper_case=True    lower_case=True
    Input Text    css=input[placeholder="Jean Dupont"]           ${nom}
    Input Text    css=input[placeholder="contact@societe.com"]   ${email}
    Input Text    css=input[placeholder="+33 6 12 34 56 78"]     ${telephone}
    Input Text    css=input[placeholder="12345678901234"]        ${siret}
    Input Text    css=input[placeholder="********"]              ${password}
    Click Button  css=button[type="submit"]

Aller Sur La Page Login
    Wait Until Element Is Visible    xpath=//a[@href="/gestion/login"]
    Click Element                    xpath=//a[@href="/gestion/login"]
    Wait Until Location Is           https://thrundrz.fr/gestion/login

Remplir Le Formulaire Login
    [Tags]    Login
    [Arguments]    ${email}    ${password}
    Wait Until Element Is Visible    id=email
    Input Text                       id=email    ${email}
    Input Text                       id=password    ${password}
    Click Button                     xpath=//button[contains(text(), "Se connecter")]

Verifier La Connexion
    Wait Until Location Is    https://thrundrz.fr/gestion/dashboard    timeout=15s
    Location Should Be        https://thrundrz.fr/gestion/dashboard
    Close Browser