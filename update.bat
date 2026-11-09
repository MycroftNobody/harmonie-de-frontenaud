@echo off
:: Permet de gérer correctement les accents français dans la console
chcp 65001 >nul

echo ========================================================
echo         MISE A JOUR AUTOMATIQUE DU SITE WEB
echo ========================================================
echo.

:: Demande à l'utilisateur d'entrer le message du commit dans un champ de texte
set /p commit_msg="Nommez votre changement (ex: Mise à jour des dates) : "

:: Si l'utilisateur valide sans rien écrire, on met un message par défaut
if "%commit_msg%"=="" (
    set commit_msg=Mise à jour des dates de concerts
)

echo.
echo [1/3] Ajout des fichiers (git add)...
git add .

echo [2/3] Validation du commit (git commit)...
git commit -m "%commit_msg%"

echo [3/3] Envoi vers GitHub (git push)...
git push origin main

echo.
echo ========================================================
echo       OPERATION TERMINEE AVEC SUCCES !
echo ========================================================
pause