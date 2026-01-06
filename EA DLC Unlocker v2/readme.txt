EA DLC Unlocker v2 - DLC unlocker for Origin and EA app
made by anadius

CS RIN thread: https://cs.rin.ru/forum/viewtopic.php?f=20&t=104412

==========================
Installation instructions:
==========================
1. Run "setup.bat". (Special note for Sims players since I'm tired of hearing
   "but how do I run the setup.bat file?" - the same way you run any program
   or game on your PC - by double clicking on it. It may be displayed as just
   "setup". If you get errors you can always try manual installation
   instructions below.)
2. Select "Install" to install the Unlocker. The script automatically detects
   if you have EA app or Origin installed. If you have both it will detect
   EA app only and game started from Origin won't have the DLCs unlocked!
   If this happens reinstall Origin and run the script again or use the manual
   installation instructions below.
3. Select "Add/Update game config" and select the game.
4. Download DLC files if needed - links are on my website and in CS RIN thread.
   (Special note for Sims players - YES, you need the DLC files. DLC Unlocker
   doesn't download anything.)

If your DLCs suddenly stop working - it's because EA app updated and removed the
DLC Unlocker. So simply install it again.

On Linux the only difference is that you run "setup_linux.sh" (double click on
it - if that doesn't work run it from the terminal) and if you have multiple
wine/proton prefixes with EA app installed - you select which one to use.
Then you get the same menu as on Windows, so follow the instructions above
from the second step forwrads.

============================
Uninstallation instructions:
============================
1. Run "setup.bat".
2. Select "Uninstall".

=====================
Updates and new DLCs:
=====================
Check if the new DLC is added to the DLC Unlocker,
redownload the DLC Unlocker, and then add the game config again.

No matter what game it is for - check if you need to download the DLC files.
For The Sims 4 each Pack and Kit requires DLC files.

When a game gets a new update - just update it. No need to touch the Unlocker.
When Origin gets a new update - just update it. No need to touch the Unlocker.
When EA app gets a new update - update it and install the Unlocker again.

=================================
Manual installation instructions:
=================================
1. Disable Origin/EA app from autostart and reboot your PC.
   This will make sure it's not running and isn't messing with files.
2. Open the folder with Origin/EA app.
     - if you're on Windows - right click on the shortcut
       and select "open file location"
     - if you're using Wine or if you deleted the shortcut
       the default install locations are:
         * Origin: "C:\Program Files (x86)\Origin"
         * EA app: "C:\Program Files\Electronic Arts\EA Desktop\EA Desktop"
3. Copy the correct "version.dll" to the folder you opened in the previous step.
   If you use Origin copy it from "origin" folder.
   If you use EA app copy it from "ea_app" folder.
4. Open "C:\Users\<your username>\AppData\Roaming", create "anadius" folder,
   open it, create "EA DLC Unlocker v2" folder, open it. Full path should be
   "C:\Users\<your username>\AppData\Roaming\anadius\EA DLC Unlocker v2"
5. Copy "config.ini" and any game config you want to the folder opened
   in the previous step.
6. (EA app only) Open command prompt as administrator and type:

   schtasks /Create /F /RL HIGHEST /SC ONCE /ST 00:00 /SD 01/01/2000 /TN copy_dlc_unlocker /TR "xcopy.exe /Y 'C:\Program Files\Electronic Arts\EA Desktop\EA Desktop\version.dll' 'C:\Program Files\Electronic Arts\EA Desktop\StagedEADesktop\EA Desktop\*'"

   If you get some error message change 01/01/2000 to 2000/01/01

And that's it, you have Unlocker v2 installed. If you want to uninstall it 
just delete that "version.dll" file and then delete
"C:\Users\<your username>\AppData\Roaming\anadius\EA DLC Unlocker v2" and
"C:\Users\<your username>\AppData\Local\anadius\EA DLC Unlocker v2" folders.
If you followed the 6th step above open command prompt as administrator and run:
schtasks /Delete /TN copy_dlc_unlocker /F
