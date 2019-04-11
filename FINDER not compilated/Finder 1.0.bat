@echo off & setLocal EnableDELAYedeXpansion
chcp 1252
mode con cols=150 lines=58
color a
cls
:MAIN
title Finder
SET "mypath=%~dp0"
cls
echo.
echo ===============================================================================================================================================
echo   888       888          888                                              888                 8888888888 d8b               888                  
echo   888   o   888          888                                              888                 888        Y8P               888                  
echo   888  d8b  888          888                                              888                 888                          888                  
echo   888 d888b 888  .d88b.  888  .d8888b .d88b.  88888b.d88b.   .d88b.       888888 .d88b.       8888888    888 88888b.   .d88888  .d88b.  888d888 
echo   888d88888b888 d8P  Y8b 888 d88P"   d88""88b 888 "888 "88b d8P  Y8b      888   d88""88b      888        888 888 "88b d88" 888 d8P  Y8b 888P"   
echo   88888P Y88888 88888888 888 888     888  888 888  888  888 88888888      888   888  888      888        888 888  888 888  888 88888888 888     
echo   8888P   Y8888 Y8b.     888 Y88b.   Y88..88P 888  888  888 Y8b.          Y88b. Y88..88P      888        888 888  888 Y88b 888 Y8b.     888     
echo   888P     Y888  "Y8888  888  "Y8888P "Y88P"  888  888  888  "Y8888        "Y888 "Y88P"       888        888 888  888  "Y88888  "Y8888  888     
echo.
echo.
echo.
echo.
echo.
echo  Finder search and copy any files with a specified name or extension to a specified destination. All files that finder found are stored in
echo.
echo  the folder "Files". During process, text files with a specific drive letter will be created in the folder "Drives" (for example, Drives_c.txt).
echo.
echo  These files contains where the files were before Finder copied them. The folder "Files" is located in the location you specified in
echo.
echo  "Enter FULL destination folder:". The folder "Drives" is located in the same folder as Finder.exe.
echo.
echo.
echo.
echo.
echo  **WARNING** Do NOT delete, rename or open any files in folders "Drives" during process. Wait this message to appear:
echo.
echo  "Operation completed. Would you like Finder to search anything else for you (YES/NO)?"
echo.
echo.
echo  **WARNING 2** Please specify the drive (for example, C:\ or D:\) and add "\" at the end of your destination folder.
echo.
echo  CORRECT syntax example: C:\Hello\Recovery\      BAD syntax examples:  C:\Hello\Recovery  or  \Hello\Recovery\
echo.
echo.
echo  **WARNING 3** Make sure these files are closed before using finder: README.txt, Copy_logs.txt and any files with "Drives" in their name.
echo.
echo  Make sure folders "Drives" and "Logs" are also closed.
echo.
echo.
echo ===============================================================================================================================================
echo.
:DEST
SET /P num=Enter FULL destination folder:
PUSHD %num% && POPD || GOTO :ERROR
echo.
SET /P name=Enter full or a part of file(s) name (hit Enter for any name):
echo.
SET /P Ext=Enter full or a part of extension (hit Enter for any type):
echo.
echo ===============================================================================================================================================
echo.
echo.
echo.
echo  ------PRE-PHASE
echo.
echo.
echo  Creating temporary file...

SET DrivesFolderDelete1="%mypath:~0,-1%\Drives"
IF EXIST %DrivesFolderDelete1% RMDIR /S /Q %DrivesFolderDelete1%

SET FileToDelete="%mypath:~0,-1%\Drives\Drives_compil.txt"
IF EXIST %FileToDelete%	del /F /Q %FileToDelete%

chdir /D "%mypath:~0,-1%\"

mkdir Drives 2>nul
mkdir Logs 2>nul
break>"%mypath:~0,-1%\Drives\Drives_compil.txt"
break>"%mypath:~0,-1%\README.txt"
 
chdir /D "%mypath:~0,-1%\Logs\"

(
echo.
echo.
echo --------%DATE%---------%TIME%--------- 
echo.
echo.
) >> Copy_Logs.txt

chdir /D "%mypath:~0,-1%\"

(
echo To use Finder, create a folder where you want to install it. Then, copy Finder in that folder and extract all files. 
echo Double click on Finder.exe and you are done. Just follow simple steps on screen and enjoy finding everything.
) > README.txt

echo  Pre-phase completed
echo.
echo.
echo.
echo  ------PHASE 1
echo.
echo.

echo  Searching...
:NEW_STEP2
title 0%% Completed

FOR %%d IN (c d e f g h i j k l m n o p q r s t u v w x y z) DO (
  IF EXIST %%d: (
	echo %%d>> "%mypath:~0,-1%\Drives\Drives_compil.txt"
)
)

FOR /F %%a in ('findstr /c:"c" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 4))
FOR /F %%a in ('findstr /c:"d" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 8))
FOR /F %%a in ('findstr /c:"e" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 12))
FOR /F %%a in ('findstr /c:"f" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 16))
FOR /F %%a in ('findstr /c:"g" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 20))
FOR /F %%a in ('findstr /c:"h" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 24))
FOR /F %%a in ('findstr /c:"i" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 28))
FOR /F %%a in ('findstr /c:"j" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 32))
FOR /F %%a in ('findstr /c:"k" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 36))
FOR /F %%a in ('findstr /c:"l" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 40))
FOR /F %%a in ('findstr /c:"m" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 44))
FOR /F %%a in ('findstr /c:"n" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 48))
FOR /F %%a in ('findstr /c:"o" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 52))
FOR /F %%a in ('findstr /c:"p" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 56))
FOR /F %%a in ('findstr /c:"q" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 60))
FOR /F %%a in ('findstr /c:"r" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 64))
FOR /F %%a in ('findstr /c:"s" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 68))
FOR /F %%a in ('findstr /c:"t" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 72))
FOR /F %%a in ('findstr /c:"u" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 76))
FOR /F %%a in ('findstr /c:"v" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 80))
FOR /F %%a in ('findstr /c:"w" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 84))
FOR /F %%a in ('findstr /c:"x" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 88))
FOR /F %%a in ('findstr /c:"y" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 92))
FOR /F %%a in ('findstr /c:"z" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP1 & CALL :NEW_STEP 96))
CALL :NEW_STEP 100
echo  Phase 1 completed
GOTO PHASE2

:NEW_STEP1
chdir /D "%LocalDrive%:\"
dir *%name%*.*%Ext%* /b /S > "%mypath:~0,-1%\Drives\Drives_%LocalDrive%.txt"2>nul
goto :EOF

:NEW_STEP
title %1%%% Completed
exit /b

echo.
echo.
echo.
:PHASE2
echo.
echo.
echo.
echo.
echo ------PHASE 2
echo.
echo.
echo  Phase 2: Copying file(s) to specified location...

:NEW_STEP2
title 0%% Completed
FOR /F %%a in ('findstr /c:"c" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 4))
FOR /F %%a in ('findstr /c:"d" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 8))
FOR /F %%a in ('findstr /c:"e" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 12))
FOR /F %%a in ('findstr /c:"f" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 16))
FOR /F %%a in ('findstr /c:"g" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 20))
FOR /F %%a in ('findstr /c:"h" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 24))
FOR /F %%a in ('findstr /c:"i" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 28))
FOR /F %%a in ('findstr /c:"j" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 32))
FOR /F %%a in ('findstr /c:"k" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 36))
FOR /F %%a in ('findstr /c:"l" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 40))
FOR /F %%a in ('findstr /c:"m" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 44))
FOR /F %%a in ('findstr /c:"n" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 48))
FOR /F %%a in ('findstr /c:"o" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 52))
FOR /F %%a in ('findstr /c:"p" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 56))
FOR /F %%a in ('findstr /c:"q" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 60))
FOR /F %%a in ('findstr /c:"r" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 64))
FOR /F %%a in ('findstr /c:"s" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 68))
FOR /F %%a in ('findstr /c:"t" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 72))
FOR /F %%a in ('findstr /c:"u" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 76))
FOR /F %%a in ('findstr /c:"v" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 80))
FOR /F %%a in ('findstr /c:"w" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 84))
FOR /F %%a in ('findstr /c:"x" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 88))
FOR /F %%a in ('findstr /c:"y" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 92))
FOR /F %%a in ('findstr /c:"z" "%mypath:~0,-1%\Drives\Drives_compil.txt" 2^>nul') do (IF EXIST %%a: (SET LocalDrive=%%a& CALL :NEW_STEP2 & CALL :NEW_STEP3 96))
CALL :NEW_STEP 100

echo  Phase 2 completed
GOTO PHASE3

:NEW_STEP2

chdir /D "%mypath:~0,-1%\Drives\"

FOR /F "tokens=*" %%A in (Drives_%LocalDrive%.txt) do (
	xcopy "%%A" "%num%Files\" /H /C /I /Y >> "%mypath:~0,-1%\Logs\Copy_Logs.txt"
)

goto :EOF

:NEW_STEP3
title %1%%% Completed
goto :EOF

:PHASE3
echo.
echo.
echo.
echo ------PHASE 3
echo.
echo.
echo  Erasing temporary file...

SET FileToDelete="%mypath:~0,-1%\Drives\Drives_compil.txt"
IF EXIST %FileToDelete%	del /F %FileToDelete%
echo  Phase 3 completed
echo.
echo.
echo ===============================================================================================================================================
echo.
echo.

:RESTART
SET /P debut=Finder finished his task. Would you like him to search anything else for you (YES/NO)?

IF %debut% == YES (
    echo  Reloading...
    ping localhost -n 3 >nul
    GOTO MAIN
)

IF %debut% == NO (
    echo.
    echo.
    echo  Thank You for using Finder. Finder will now exit.
    echo  Copyright Nathan Trudeau 2016
    ping localhost -n 6 >nul
    exit
) ELSE (
    echo Sorry, Finder dont understand what you meant. Maybe it wasn't capital letters? Press any key to try again.
    echo.
    echo.
    pause >nul
    GOTO RESTART
)

:ERROR
 echo Finder can't find the specified destination folder. Press any key to try again.
 pause >nul
 echo.
 echo.
 GOTO DEST