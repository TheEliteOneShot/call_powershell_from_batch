@ECHO OFF
SETLOCAL
REM Parse the input variables seperated by a colon here
FOR %%A IN (%*) DO (
   FOR /f "tokens=1,2 delims=:" %%G IN ("%%A") DO SET %%G=%%H
)

IF NOT DEFINED ExecutableFilePath SET _ERR="ExecutableFilePath Not Defined" && GOTO :ERR
IF NOT DEFINED OutputFolder SET _ERR="OutputFolder Not Defined" && GOTO :ERR
IF NOT DEFINED Folder1 SET _ERR="File 1 Not Defined" && GOTO :ERR
IF NOT DEFINED Folder2 SET _ERR="File 2 Not Defined" && GOTO :ERR
ECHO Using FilePath: %ExecutableFilePath%
ECHO Using OutputFolder:  %OutputFolder%
ECHO Using #1 Folder:  %Folder1%
ECHO Using #2 Folder:  %Folder2%

SET _PSScript="./dothis.ps1"

Powershell -ExecutionPolicy Bypass -Command "& '%_PSScript%' -ExecutableFilePath '%ExecutableFilePath%' -OutputFolder '%OutputFolder%' -Folder1 '%Folder1%' -Folder2 '%Folder2%'

GOTO :END

:ERR
ECHO "There was an error."
ECHO %_ERR%

:END
ENDLOCAL
EXIT
