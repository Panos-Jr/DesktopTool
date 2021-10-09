::Made by TopperTom and Panos-Jr.
@echo off
color 0f
title DESKTOPTOOL

echo                                                `:+syhddddhhso/-`                                   
echo                                               .NMMMMMMMMMMMMMMMMds/`                               
echo                                                -/+oydNMMMMMMMMMMMMMMh+`                            
echo                                                      `-+dMMMMMMMMMMMMMMy+:`                        
echo                                                          .sMMMMMMMMMMMMMMMMy-                      
echo                                                            -dMMMMMMMMMMMMMMMMh-                    
echo                                                             `sMMMMMMMMMMMMMMMMM+                   
echo                                                               yMMMMMMMMMMMMMMMMMNmy/`              
echo                                                             `/dMMMMMMMMMMMMMMMMMMMMMNy-            
echo                                                           `/mMMMMMMMMMMMMMMMMMMMMMMMMMMh-          
echo                                                         `/mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh:        
echo                                                       `/mMMMMMMMMMMMMmMMMMMMMMMMMMMMMMMMMMMh.      
echo                                                     `/mMMMMMMMMMMMMd: sMMMMMMMMMMMMMMMMMMMd:       
echo                                                   `/mMMMMMMMMMMMMd:   `yMMMMMMMMMMMMMMMMh:         
echo                                                 `/mMMMMMMMMMMMMd:       /NMMMMMMMMMMMMh:           
echo                                               `/mMMMMMMMMMMMMh:          `oNMMMMMMMMh:             
echo                                             `+mMMMMMMMMMMMMh:              .sNMMMMh:               
echo                                           `+mMMMMMMMMMMMMh:                  .sNh:                 
echo                                     `/sdmNNMMMMMMMMMMMMh:                      `                   
echo                                   `oNMMMMMMMMMMMMMMMMh-                                            
echo                                 `oNMMMMMMMMMMMMMMMMh-                                              
echo                               .sNMMMMMMMMMMMMMMMMm-                                                
echo                             .sNMMMMMMMMMMMMMMMMMMy                                                 
echo                           .sNMMMMMMMMMMMMMMMMMMMN-                                                 
echo                         .sNMMMMMMMMMMMMMMMMMMMMd-                                                  
echo                       .sNMMMMMMMMMMMMMMMMMMMMd/                                                    
echo                     .sNMMMMMMMMMMMMMMMMMMMMd/                                                      
echo                   .sNMMMMMMMMMMMMMMMMMMMMd/                                                        
echo                 .sNMMMMMMMMMMMMMMMMMMMMd/                                                          
echo               .sMMMMMMMMMMMMMMMMMMMMMd/                                                            
echo             .sMMMMMMMMMMMMMMMMMMMMMd:                                                              
echo           .sMMMMMMMMMMMMMMMMMMMMMd:                                                                
echo         .sMMMMMMMMMMMMMMMMMMMMMd:                                                                  
echo       `sMMMMMMMMMMMMMMMMMMMMMd:                                                                    
echo      `dMMMMMMMMMMMMMMMMMMMMd:                                                                      
echo      /MMMMMMMMMMMMMMMMMMMd:                                                                        
echo      /MMMMMMMMMMMMMMMMMd:                                                                          
echo      `dMMMMMMMMMMMMMMd:                                                                            
echo       `sMMMMMMMMMMMd:                                                                              
echo         .+hmMMMNds-                                                                                

echo - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
echo                         CREATED BY: TOM HARRISON and PANOS-JR                          
pause
cls
echo Hello, %username%!
pause 
cls
echo CD: %cd%
pause 
cls 

:list
echo Listing files on %userprofile%\Desktop...
timeout /t 02 /NOBREAK >nul 
cd "%userprofile%\desktop"
dir /p /q 
pause

:openf
echo Would you like to open a a file or folder?
echo type yes or no
set /p "a=y=TYPE HERE: "
:ndeletef
if %a% == no (
echo Abort.
pause 
cls
goto createf 
) else if %a% == yes (
pause 
cls
) else (
echo Invalid.
pause 
cls
goto openf 
)

:yopenf
echo GETTING READY TO OPEN FILE OR FOLDER!
timeout /t 02 /NOBREAK >nul
cls
goto opent


:createf
echo Would you like to create a file or folder?
echo y=yes n=no
set /p "a=TYPE HERE: "
:No create file
if %a% == n (
echo Abort.
) else if %a% == y (
echo GETTING READY TO CREATE FILE OR FOLDER!.
timeout /t 02 /NOBREAK >nul 
goto :createt
) else (
echo Invalid.
pause 
cls
goto createf
)

:list2
echo Listing files on %userprofile%\Desktop...
timeout /t 02 /NOBREAK >nul 
cd "%userprofile%\desktop"
dir 
pause 

:deletef
echo Would you like to delete a file or folder?
echo y=yes n=no
set /p "a=TYPE HERE: "
:Ndeletef
if %a% == n (
echo Abort.
) else if %a% == y (
echo GETTING READY TO DELETE THE FILE OR FOLDER!.
timeout /t 02 /NOBREAK >nul 
goto deletet
) else (
echo Invalid.
pause 
cls
goto deletef
)

:opent
echo Please type name and file extention of file or folder:
set /p "a=TYPE HERE: "
start %a%
pause
cls
goto createf

:createt
echo t=file f=folder
set /p "b=TYPE HERE: "
if %b% == t (
echo GETTING READY TO CREATE FILE!.
timeout /t 02 /NOBREAK >nul
goto createp
) else if %b% == f (
echo GETTING READY TO CREATE FOLDER!.
timeout /t 02 /NOBREAK >nul 
) else (
echo Invalid.
pause
cls
goto createt
)

echo please type name of folder
set /p "a=TYPE HERE: "
mkdir %a%
pause
cls
goto list2

:createp
echo INPUT the location of the file -> e.g., 'C:\Users\User\Desktop' - don't include sigle-quoted speech marks. 
echo Do NOT include the file as part of the location. 
echo.
set /p "file=Type Here> " 
cd "%file%"
pause 
cls 

echo Type the name and extension of the file: 
set /p "val=Type HERE> "
cd.> "%val%"
pause
cls
goto list2

:deletet
echo t=file f=folder
set /p "b=TYPE HERE: "
if %b% == t (
echo GETTING READY TO DELETE FILE!.
timeout /t 02 /NOBREAK >nul
goto deletep
) else if %b% == f (
echo GETTING READY TO CREATE FOLDER!.
timeout /t 02 /NOBREAK >nul 
) else (
echo Invalid.
pause 
cls
goto deletet
)

echo Please type name of folder
set /p "a=TYPE HERE: "
rmdir %a%
pause
exit

:deletep
echo Please type name of file (and extension):
set /p "a=TYPE HERE: "
del %a% 
pause
cls

::Made by TopperTom and Panos-Jr
