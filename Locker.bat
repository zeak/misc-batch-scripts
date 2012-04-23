
cls
@ECHO OFF
title Folder Locker
if EXIST "Locked.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Locker goto MDLOCKER
:CONFIRM
echo Are you sure u want to Lock the folder(Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren Locker "locked.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "locked.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
echo    Created by Akshay Shekher
pause
goto End
:UNLOCK
echo Enter password to Unlock folder
set/p "pass=>"
if NOT %pass%==password goto FAIL
attrib -h -s "locked.{21EC2020-3AEA-1069-A2DD-08002B30309D}"  
ren "locked.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Locker
echo Folder Unlocked successfully
echo    Created by Akshay Shekher
pause
goto End
:FAIL
echo Invalid password
goto end
:MDLOCKER
md Locker
echo Locker created successfully
echo Now you will find a folder nomed locker in the location of this file
echo Put the stuff to be locked in it and open this file again.
echo:
echo:
echo    Created by Akshay Shekher
pause
goto End
:End
