@echo off
set /p link="Link image :  " 
set /p name="Nom image (avec extension) :  " 

curl -o %name% %link%


@echo off
:ask
set /p answer="Resize (Y/N) :  " 


if "%answer%"=="Y" (
    echo Resize de l'image
    :resize_again
    magick convert %name% -resize 50%% -quality 80 %name%
) else if /i "%answer%"=="N" (
    exit
) else (
    echo Reponse invalide. Veuillez saisir uniquement Y ou N.
    goto ask
)


set /p answer_resize_again="Resize encore ? (Y) :  " 

if "%answer_resize_again%"=="Y" (
    goto resize_again
)