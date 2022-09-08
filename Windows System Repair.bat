@echo off
color 03
title Windows System Repair - Batlez #3740
cls 
 
:question
echo Welcome To Windows System Repair!
echo -------------------------------------
echo Type "chkdsk" To Check Disk.           
echo ----------------------------------------
echo Type "dism scan" To DISM Scan.         
echo --------------------------------------- 
echo Type "dism restore" To DISM Restore.    
echo -------------------------------------   
echo Tyep "dism check" to DISM Check.        
echo --------------------------------         
echo Type "sfc" To Sfc /scannow.             
echo --------------------------- 
echo Type "bootrec boot" To Fixboot.
echo -------------------------------
echo Type "bootrec fixmbr" To Fixmbr.
echo ------------------------------
echo Type "bootrec rebulid" To Rebulidbcd.
echo ------------------------------------
echo Type "reset pc" To Reset Windows Pc.
echo ------------------------------------
echo Type "register" To Re Register All DLLs.
echo ---------------------------------------- 
echo Tye "exit" To Exit.
echo ----------------------------------------
echo Type "fix win" To Fix Windows image.
echo ------------------------------------
echo Type "sys restore" To System Restore
echo ------------------------------------
echo What Would you Like?
set /p a=
if "%a%" == "chkdsk" goto :check disk
if "%a%" == "dism scan" goto :Dism /scan
if "%a%" == "dism restore" goto :Dism /restore
if "%a%" == "dism check" goto :Dism /check
if "%a%" == "sfc" goto :sfc /scan
if "%a%" == "reset pc" goto :reset win11
if "%a%" == "bootrec rebulid" goto :bootrec /bcd
if "%a%" == "bootrec fixmbr" goto :bootrec /mbr
if "%a%" == "bootrec boot" goto :bootrec /fix
if "%a%" == "fix win" goto :windows image
if "%a%" == "sys restore" goto :system restore
if "%a%" == "register" goto :register
if "%a%" == "exit" goto :yes
cls

:register
for %i in (%windir%\system32\*.dll) do regsvr32.exe /s %i
for %i in (%windir%\syswow64\*.dll) do regsvr32.exe /s %i
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:system restore
rstrui.exe
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:windows image
DISM /Online /Cleanup-Image /RestoreHealth /Source:repairSource\install.wim
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:bootrec /fix
bootrec.exe /fixboot
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:bootrec /mbr
bootrec.exe /fixmbr
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:bootrec /bcd
bootrec.exe /rebuildbcd
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:reset win11
systemreset -cleanpc
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:check disk
echo Which Disk You Want To Check Disk?
echo Drives Name
echo A Drive 
echo B Drive
echo C Drive (System Drive)
echo D Drive
echo E Drive
echo F Drive
echo G Drive
echo H Drive
echo I Drive 
echo J Drive
echo K Drive
echo L Drive
echo M Drive
echo N Drive
echo O Drive
echo P Drive
echo Q Drive 
echo R Drive
echo S Drive
echo T Drive
echo U Drive
echo V Drive
echo W Drive
echo X Drive 
echo Y Drive
echo Z Drive
echo Unsure About Which Drive To Check Disk? Type "about".
echo Type The Drive Number.
set /p g=
if "%g%" == "A Drive" goto :a drive
if "%g%" == "B Drive" goto :b drive
if "%g%" == "C Drive" goto :c drive
if "%g%" == "D Drivee" goto :d drive
if "%g%" == "E Drive" goto :e drive
if "%g%" == "F Drive" goto :f drive
if "%g%" == "G Drive" goto :g drive
if "%g%" == "H Drive" goto :h drive
if "%g%" == "I Drive" goto :i drive
if "%g%" == "J Drive" goto :j drive
if "%g%" == "K Drive" goto :k Drive
if "%g%" == "L Drive" goto :l drive
if "%g%" == "M Drive" goto :l drive
if "%g%" == "N Drive" goto :k Drive
if "%g%" == "O Drive" goto :l drive
if "%g%" == "P Drive" goto :p drive
if "%g%" == "Q Drive" goto :q drive
if "%g%" == "R Drive" goto :r Drive
if "%g%" == "S Drive" goto :s drive
if "%g%" == "T Drive" goto :t Drive
if "%g%" == "U Drive" goto :u drive
if "%g%" == "V Drive" goto :v Drive
if "%g%" == "W Drive" goto :w drive
if "%g%" == "X Drive" goto :x Drive
if "%g%" == "Z Drive" goto :z drive
cls

:a drive
CHKDSK A: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:b drive
CHKDSK B: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:c drive
CHKDSK C: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:d drive   
CHKDSK D: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:e drive
CHKDSK E: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:f drive
CHKDSK F: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:g drive
CHKDSK G: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:h drive
CHKDSK H: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:i drive
CHKDSK I: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:j drive
CHKDSK J: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:k drive
CHKDSK K: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:l drive
CHKDSK L: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:m drive
CHKDSK M: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:n drive
CHKDSK N: /f
echo Would you like to exit? 
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:o drive
CHKDSK O: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:p drive
CHKDSK P: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:q drive
CHKDSK Q: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:r drive
CHKDSK R: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:s drive
CHKDSK S: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:t drive
CHKDSK T: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:u drive
CHKDSK U: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:v drive
CHKDSK V: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:w drive
CHKDSK W: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:x drive
CHKDSK X: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:y drive
CHKDSK Y: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:z drive
CHKDSK Z: /f
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:Dism /scan
Dism /Online /Cleanup-Image /ScanHealth
echo Did You Find Corrupted Files? Type Yes if Have No if You Don't Have, Also type bye To Exit?
set /p g=
if "%g%" == "yes" goto :Dism /restore 
if "%g%" == "no" goto :question

:Dism /restore
Dism /Online /Cleanup-Image /RestoreHealth
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:Dism /check
Dism /Online /Cleanup-Image /CheckHealth
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:sfc /scan
sfc /scannow
echo Would you like to exit?
set /p g=
if "%g%" == "yes" goto :yes
if "%g%" == "no" goto :question

:yes
exit
