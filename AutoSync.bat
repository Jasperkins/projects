@echo off
title AutoSync Backup
echo Backup starting, ensure USB storage device is connected. 
echo First time running this may take several minutes to backup depending on size of backup source. 
echo Each addtional backup will be much faster and will only copy newer or changed files.
pause
robocopy "C:\Users\15804\Documents"  "U:\Documents" /mir /ndl /xj /R:2 /W:5  /LOG:U:\backuplog.log /TEE 
robocopy "C:\Users\15804\Desktop"  "U:\Desktop" /mir /ndl /xj /R:2 /W:5  /LOG+:U:\backuplog.log /TEE  
robocopy "C:\Users\15804\Pictures"  "U:\Pictures" /mir /ndl /xj /R:2 /W:5 /LOG+:U:\backuplog.log /TEE 
robocopy "G:\My Drive"  "U:\GoogleDrive" /mir /ndl /xj /xf *.gdoc* /xf *.gsheet* /xf *.gslid* /xf *.gsite* /R:2 /W:5 /TEE+:U:\backuplog.log /TEE 
 
echo Backup complete!
pause
