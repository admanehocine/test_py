*** Settings ***
Resource    keywords.resource
*** Variables ***
${email}=       lo@gmail.com
${password}=    TestTest
*** Test Cases ***

Inscription gestion freelance
    Ouvrir Le Navigateur
    Aller Sur La Page Inscription
    Remplir Le Formulaire Inscription
    Verifier La Connexion

Login gestion freelance
    Ouvrir Le Navigateur
    Aller Sur La Page Login
    Remplir Le Formulaire Login    ${email}    ${password}
    Verifier La Connexion