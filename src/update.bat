@echo off

REM SETLOCAL assures environment variables created in a batch file are not exported to its calling environment
setlocal

echo Creating output directory tree

set CB_DEVEL_RESDIR=devel\share\CodeBlocks
set CB_OUTPUT_RESDIR=output\share\CodeBlocks
set TDM_RESDIR=output\share\CodeBlocks
if not exist output md output\
if not exist output\share md output\share\
if not exist %CB_OUTPUT_RESDIR% md %CB_OUTPUT_RESDIR%\
if not exist %CB_OUTPUT_RESDIR%\compilers md %CB_OUTPUT_RESDIR%\compilers\
if not exist %CB_OUTPUT_RESDIR%\lexers md %CB_OUTPUT_RESDIR%\lexers\
if not exist %CB_OUTPUT_RESDIR%\images md %CB_OUTPUT_RESDIR%\images\
if not exist %CB_OUTPUT_RESDIR%\images\settings md %CB_OUTPUT_RESDIR%\images\settings\
if not exist %CB_OUTPUT_RESDIR%\images\16x16 md %CB_OUTPUT_RESDIR%\images\16x16\
if not exist %CB_OUTPUT_RESDIR%\images\codecompletion md %CB_OUTPUT_RESDIR%\images\codecompletion\
if not exist %CB_OUTPUT_RESDIR%\plugins md %CB_OUTPUT_RESDIR%\plugins\
if not exist %CB_OUTPUT_RESDIR%\templates md %CB_OUTPUT_RESDIR%\templates\
if not exist %CB_OUTPUT_RESDIR%\templates\wizard md %CB_OUTPUT_RESDIR%\templates\wizard\
if not exist %CB_OUTPUT_RESDIR%\scripts md %CB_OUTPUT_RESDIR%\scripts\
if not exist %CB_OUTPUT_RESDIR%\scripts\tests md %CB_OUTPUT_RESDIR%\scripts\tests\

if not exist %TDM_RESDIR%\simplecpp\include md %TDM_RESDIR%\simplecpp\include
if not exist %TDM_RESDIR%\simplecpp\include\GL md %TDM_RESDIR%\simplecpp\include\GL
if not exist %TDM_RESDIR%\simplecpp\include\GLFW md %TDM_RESDIR%\simplecpp\include\GLFW
if not exist %TDM_RESDIR%\simplecpp\include\glm md %TDM_RESDIR%\simplecpp\include\glm
if not exist %TDM_RESDIR%\simplecpp\include\SOIL md %TDM_RESDIR%\simplecpp\include\SOIL
if not exist %TDM_RESDIR%\simplecpp\include\SOIL\original md %TDM_RESDIR%\simplecpp\include\SOIL\original

if not exist %TDM_RESDIR%\simplecpp\lib-mingw md %TDM_RESDIR%\simplecpp\lib-mingw

if not exist %TDM_RESDIR%\simplecpp\include\glm\detail md %TDM_RESDIR%\simplecpp\include\glm\detail
if not exist %TDM_RESDIR%\simplecpp\include\glm\ext md %TDM_RESDIR%\simplecpp\include\glm\ext
if not exist %TDM_RESDIR%\simplecpp\include\glm\gtc md %TDM_RESDIR%\simplecpp\include\glm\gtc
if not exist %TDM_RESDIR%\simplecpp\include\glm\gtx md %TDM_RESDIR%\simplecpp\include\glm\gtx
if not exist %TDM_RESDIR%\simplecpp\include\glm\simd md %TDM_RESDIR%\simplecpp\include\glm\simd


if not exist %CB_DEVEL_RESDIR%\simplecpp\include\glm\detail md %CB_DEVEL_RESDIR%\simplecpp\include\glm\detail
if not exist %CB_DEVEL_RESDIR%\simplecpp\include\glm\ext md %CB_DEVEL_RESDIR%\simplecpp\include\glm\ext
if not exist %CB_DEVEL_RESDIR%\simplecpp\include\glm\gtc md %CB_DEVEL_RESDIR%\simplecpp\include\glm\gtc
if not exist %CB_DEVEL_RESDIR%\simplecpp\include\glm\gtx md %CB_DEVEL_RESDIR%\simplecpp\include\glm\gtx
if not exist %CB_DEVEL_RESDIR%\simplecpp\include\glm\simd md %CB_DEVEL_RESDIR%\simplecpp\include\glm\simd



if not exist devel md devel\
if not exist devel\share md devel\share\
if not exist %CB_DEVEL_RESDIR% md %CB_DEVEL_RESDIR%\
if not exist %CB_DEVEL_RESDIR%\compilers md %CB_DEVEL_RESDIR%\compilers\
if not exist %CB_DEVEL_RESDIR%\lexers md %CB_DEVEL_RESDIR%\lexers\
if not exist %CB_DEVEL_RESDIR%\images md %CB_DEVEL_RESDIR%\images\
if not exist %CB_DEVEL_RESDIR%\images\settings md %CB_DEVEL_RESDIR%\images\settings\
if not exist %CB_DEVEL_RESDIR%\images\16x16 md %CB_DEVEL_RESDIR%\images\16x16\
if not exist %CB_DEVEL_RESDIR%\images\codecompletion md %CB_DEVEL_RESDIR%\images\codecompletion\
if not exist %CB_DEVEL_RESDIR%\plugins md %CB_DEVEL_RESDIR%\plugins\
if not exist %CB_DEVEL_RESDIR%\templates md %CB_DEVEL_RESDIR%\templates\
if not exist %CB_DEVEL_RESDIR%\templates\wizard md %CB_DEVEL_RESDIR%\templates\wizard\
if not exist %CB_DEVEL_RESDIR%\scripts md %CB_DEVEL_RESDIR%\scripts\
if not exist %CB_DEVEL_RESDIR%\scripts\tests md %CB_DEVEL_RESDIR%\scripts\tests\

if not exist %CB_DEVEL_RESDIR%\simplecpp\include md %CB_DEVEL_RESDIR%\simplecpp\include
if not exist %CB_DEVEL_RESDIR%\simplecpp\include\GL md %CB_DEVEL_RESDIR%\simplecpp\include\GL
if not exist %CB_DEVEL_RESDIR%\simplecpp\include\GLFW md %CB_DEVEL_RESDIR%\simplecpp\include\GLFW
if not exist %CB_DEVEL_RESDIR%\simplecpp\include\glm md %CB_DEVEL_RESDIR%\simplecpp\include\glm
if not exist %CB_DEVEL_RESDIR%\simplecpp\include\SOIL md %CB_DEVEL_RESDIR%\simplecpp\include\SOIL
if not exist %CB_DEVEL_RESDIR%\simplecpp\include\SOIL\original md %CB_DEVEL_RESDIR%\simplecpp\include\SOIL\original


if not exist %CB_DEVEL_RESDIR%\simplecpp\lib-mingw md %CB_DEVEL_RESDIR%\simplecpp\lib-mingw

set ZIPCMD=zip

echo Compressing core UI resources
%ZIPCMD% -jqu9 %CB_DEVEL_RESDIR%\resources.zip src\resources\*.xrc > nul
%ZIPCMD% -jqu9 %CB_DEVEL_RESDIR%\manager_resources.zip sdk\resources\*.xrc sdk\resources\images\*.png > nul
%ZIPCMD% -jqu9 %CB_DEVEL_RESDIR%\start_here.zip src\resources\start_here\*.html src\resources\start_here\*.png > nul
echo Compressing plugins UI resources
%ZIPCMD% -jqu9 %CB_DEVEL_RESDIR%\Astyle.zip plugins\astyle\resources\manifest.xml plugins\astyle\resources\*.xrc > nul
%ZIPCMD% -jqu9 %CB_DEVEL_RESDIR%\autosave.zip plugins\autosave\manifest.xml plugins\autosave\*.xrc > nul
%ZIPCMD% -jqu9 %CB_DEVEL_RESDIR%\classwizard.zip plugins\classwizard\resources\manifest.xml plugins\classwizard\resources\*.xrc > nul
%ZIPCMD% -jqu9 %CB_DEVEL_RESDIR%\codecompletion.zip plugins\codecompletion\resources\manifest.xml plugins\codecompletion\resources\*.xrc > nul
%ZIPCMD% -jqu9 %CB_DEVEL_RESDIR%\compiler.zip plugins\compilergcc\resources\manifest.xml plugins\compilergcc\resources\*.xrc > nul
%ZIPCMD% -jqu9 %CB_DEVEL_RESDIR%\defaultmimehandler.zip plugins\defaultmimehandler\resources\manifest.xml plugins\defaultmimehandler\resources\*.xrc > nul
%ZIPCMD% -jqu9 %CB_DEVEL_RESDIR%\occurrenceshighlighting.zip plugins\occurrenceshighlighting\resources\*.xrc plugins\occurrenceshighlighting\resources\manifest.xml > nul
%ZIPCMD% -jqu9 %CB_DEVEL_RESDIR%\openfileslist.zip plugins\openfileslist\manifest.xml > nul
%ZIPCMD% -jqu9 %CB_DEVEL_RESDIR%\projectsimporter.zip plugins\projectsimporter\resources\manifest.xml plugins\projectsimporter\resources\*.xrc > nul
%ZIPCMD% -jqu9 %CB_DEVEL_RESDIR%\scriptedwizard.zip plugins\scriptedwizard\resources\manifest.xml > nul
%ZIPCMD% -jqu9 %CB_DEVEL_RESDIR%\todo.zip plugins\todo\resources\manifest.xml plugins\todo\resources\*.xrc > nul
%ZIPCMD% -jqu9 %CB_DEVEL_RESDIR%\xpmanifest.zip plugins\xpmanifest\manifest.xml > nul
%ZIPCMD% -jqu9 %CB_DEVEL_RESDIR%\abbreviations.zip plugins\abbreviations\resources\manifest.xml plugins\abbreviations\resources\*.xrc > nul
echo Packing core UI bitmaps
cd src\resources
%ZIPCMD% -0 -qu ..\..\%CB_DEVEL_RESDIR%\resources.zip images\*.png images\12x12\*.png images\16x16\*.png > nul
cd ..\..\sdk\resources
%ZIPCMD% -0 -qu ..\..\%CB_DEVEL_RESDIR%\manager_resources.zip images\*.png images\12x12\*.png images\16x16\*.png > nul
echo Packing plugins UI bitmaps
cd ..\..\plugins\compilergcc\resources
%ZIPCMD% -0 -qu ..\..\..\%CB_DEVEL_RESDIR%\compiler.zip images\*.png images\16x16\*.png > nul
cd ..\..\..\plugins\debuggergdb\resources
cd ..\..\..

echo Copying files
xcopy /D /y %CB_DEVEL_RESDIR%\*.zip %CB_OUTPUT_RESDIR% > nul
xcopy /D /y sdk\resources\lexers\lexer_* %CB_DEVEL_RESDIR%\lexers > nul
xcopy /D /y sdk\resources\lexers\lexer_* %CB_OUTPUT_RESDIR%\lexers > nul
xcopy /D /y src\resources\images\*.png %CB_DEVEL_RESDIR%\images > nul
xcopy /D /y src\resources\images\settings\*.png %CB_DEVEL_RESDIR%\images\settings > nul
xcopy /D /y src\resources\images\*.png %CB_OUTPUT_RESDIR%\images > nul
xcopy /D /y src\resources\images\settings\*.png %CB_OUTPUT_RESDIR%\images\settings > nul
xcopy /D /y src\resources\images\16x16\*.png %CB_DEVEL_RESDIR%\images\16x16 > nul
xcopy /D /y src\resources\images\16x16\*.png %CB_OUTPUT_RESDIR%\images\16x16 > nul
xcopy /D /y plugins\codecompletion\resources\images\*.png %CB_DEVEL_RESDIR%\images\codecompletion > nul
xcopy /D /y plugins\codecompletion\resources\images\*.png %CB_OUTPUT_RESDIR%\images\codecompletion > nul
xcopy /D /y plugins\compilergcc\resources\compilers\*.xml %CB_DEVEL_RESDIR%\compilers > nul
xcopy /D /y plugins\compilergcc\resources\compilers\*.xml %CB_OUTPUT_RESDIR%\compilers > nul
echo Makefile.am >  excludes.txt
echo Makefile.in >> excludes.txt
echo \.svn\      >> excludes.txt
xcopy /D /y /s plugins\scriptedwizard\resources\* %CB_DEVEL_RESDIR%\templates\wizard /EXCLUDE:excludes.txt >nul
xcopy /D /y /s plugins\scriptedwizard\resources\* %CB_OUTPUT_RESDIR%\templates\wizard /EXCLUDE:excludes.txt >nul
xcopy /D /y templates\common\* %CB_OUTPUT_RESDIR%\templates /EXCLUDE:excludes.txt > nul
xcopy /D /y templates\win32\* %CB_OUTPUT_RESDIR%\templates /EXCLUDE:excludes.txt > nul
xcopy /D /y templates\common\* %CB_DEVEL_RESDIR%\templates /EXCLUDE:excludes.txt > nul
xcopy /D /y templates\win32\* %CB_DEVEL_RESDIR%\templates /EXCLUDE:excludes.txt > nul
xcopy /D /y scripts\* %CB_DEVEL_RESDIR%\scripts /EXCLUDE:excludes.txt > nul
xcopy /D /y scripts\* %CB_OUTPUT_RESDIR%\scripts /EXCLUDE:excludes.txt > nul
xcopy /D /y scripts\tests\* %CB_DEVEL_RESDIR%\scripts\tests /EXCLUDE:excludes.txt > nul
xcopy /D /y scripts\tests\* %CB_OUTPUT_RESDIR%\scripts\tests /EXCLUDE:excludes.txt > nul
del excludes.txt
xcopy /D /y tips.txt %CB_DEVEL_RESDIR% > nul
xcopy /D /y tips.txt %CB_OUTPUT_RESDIR% > nul
xcopy /D /y tools\ConsoleRunner\cb_console_runner.exe output > nul
xcopy /D /y tools\ConsoleRunner\cb_console_runner.exe devel > nul
xcopy /D /y devel\*.exe output > nul
xcopy /D /y devel\*.dll output > nul
xcopy /D /y %CB_DEVEL_RESDIR%\plugins\*.dll %CB_OUTPUT_RESDIR%\plugins > nul

xcopy /D /y simplecpp\*.cpp %CB_DEVEL_RESDIR%\simplecpp\ > nul
xcopy /D /y simplecpp\*.cpp %TDM_RESDIR%\simplecpp\ > nul
xcopy /D /y simplecpp\*.dll %CB_DEVEL_RESDIR%\simplecpp\ > nul
xcopy /D /y simplecpp\*.dll %TDM_RESDIR%\simplecpp\ > nul

xcopy /D /y simplecpp\include\* %CB_DEVEL_RESDIR%\simplecpp\include > nul
xcopy /D /y simplecpp\include\* %TDM_RESDIR%\simplecpp\include > nul
xcopy /D /y simplecpp\include\GL\* %CB_DEVEL_RESDIR%\simplecpp\include\GL\ > nul
xcopy /D /y simplecpp\include\GL\* %TDM_RESDIR%\simplecpp\include\GL\ > nul
xcopy /D /y simplecpp\include\GLFW\* %CB_DEVEL_RESDIR%\simplecpp\include\GLFW\ > nul
xcopy /D /y simplecpp\include\GLFW\* %TDM_RESDIR%\simplecpp\include\GLFW\ > nul

xcopy /D /y simplecpp\include\glm\* %CB_DEVEL_RESDIR%\simplecpp\include\glm\ > nul
xcopy /D /y simplecpp\include\glm\* %TDM_RESDIR%\simplecpp\include\glm\ > nul

xcopy /D /y simplecpp\include\glm\detail\* %CB_DEVEL_RESDIR%\simplecpp\include\glm\detail > nul
xcopy /D /y simplecpp\include\glm\detail\* %TDM_RESDIR%\simplecpp\include\glm\detail > nul

xcopy /D /y simplecpp\include\glm\ext\* %CB_DEVEL_RESDIR%\simplecpp\include\glm\ext > nul
xcopy /D /y simplecpp\include\glm\ext\* %TDM_RESDIR%\simplecpp\include\glm\ext > nul

xcopy /D /y simplecpp\include\glm\gtc\* %CB_DEVEL_RESDIR%\simplecpp\include\glm\gtc > nul
xcopy /D /y simplecpp\include\glm\gtc\* %TDM_RESDIR%\simplecpp\include\glm\gtc > nul

xcopy /D /y simplecpp\include\glm\gtx\* %CB_DEVEL_RESDIR%\simplecpp\include\glm\gtx > nul
xcopy /D /y simplecpp\include\glm\gtx\* %TDM_RESDIR%\simplecpp\include\glm\gtx > nul

xcopy /D /y simplecpp\include\glm\simd\* %CB_DEVEL_RESDIR%\simplecpp\include\glm\simd > nul
xcopy /D /y simplecpp\include\glm\simd\* %TDM_RESDIR%\simplecpp\include\glm\simd > nul




xcopy /D /y simplecpp\include\SOIL\* %CB_DEVEL_RESDIR%\simplecpp\include\SOIL\ > nul
xcopy /D /y simplecpp\include\SOIL\* %TDM_RESDIR%\simplecpp\include\SOIL\ > nul
xcopy /D /y simplecpp\include\SOIL\original\* %CB_DEVEL_RESDIR%\simplecpp\include\SOIL\original > nul
xcopy /D /y simplecpp\include\SOIL\original\* %TDM_RESDIR%\simplecpp\include\SOIL\original > nul


xcopy /D /y simplecpp\lib-mingw\* %CB_DEVEL_RESDIR%\simplecpp\lib-mingw > nul
xcopy /D /y simplecpp\lib-mingw\* %TDM_RESDIR%\simplecpp\lib-mingw > nul
xcopy /D /y simplecpp\lib-mingw\* %TDM_RESDIR%\simplecpp\lib-mingw > nul

echo Stripping debug info from output tree
strip output\*.exe
strip output\*.dll
strip %CB_OUTPUT_RESDIR%\plugins\*.dll

REM Copy these files later as stripping symbols would corrupt them
echo Copying crash handler files
xcopy /y exchndl\win32\bin\*.dll devel  > nul
xcopy /y exchndl\win32\bin\*.yes devel  > nul
xcopy /y exchndl\win32\bin\*.dll output > nul
xcopy /y exchndl\win32\bin\*.yes output > nul
