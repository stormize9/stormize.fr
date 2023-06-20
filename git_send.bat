@echo off

rem Récupérer la date actuelle
for /f %%x in ('powershell -Command "Get-Date -Format 'yyyy-MM-dd'"') do set "date=%%x"

rem Ajouter tous les fichiers à l'index Git
git add .

rem Effectuer un commit avec la date actuelle comme message
git commit -m "change-%date%"

rem Pousser les modifications vers le référentiel distant
git push
