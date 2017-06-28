rem ECHO OFF

set model=drogon
set modelDrive=e
set modelDrive=c

set modelPath="%modelDrive%:\Users\cadias\Documents\Minhas imagens\paperModels\drogon"
set modelPath="%modelDrive%:\Users\cadias\Documents\papercraft\drogon"

set ISdrive=c
set ISpath="C:\Program Files\Inkscape"

%ISdrive%:
cd %ISpath%

rem FOR %%p IN (03) DO FOR %%l IN (cut fold painting numbers) DO inkscape %modelPath%\%model%_%%p.svg --export-id="%%l" --export-text-to-path --export-pdf=%modelPath%\layers\%model%_%%p_%%l.pdf --export-dpi=300 --export-area-page

rem FOR %%p IN (head tail scales body legs wings) DO inkscape %modelPath%\%%p.svg --export-text-to-path --export-pdf=%modelPath%\%%p.pdf --export-dpi=150 --export-area-page
FOR %%p IN (head tail scales body legs) DO inkscape %modelPath%\%%p.svg --export-text-to-path --export-pdf=%modelPath%\%%p.pdf --export-dpi=150 --export-area-page

%modelDrive%:
cd %modelPath%

ECHO ON
