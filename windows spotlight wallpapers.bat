@ECHO OFF

md %userprofile%\Desktop\temp_wallpaper
copy %localappdata%\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets %userprofile%\Desktop\temp_wallpaper
cd %userprofile%\Desktop\temp_wallpaper
ren *.* *.jpg

for %%j in (*) do if %%~zj lss 200000 del %%j

xcopy /y %userprofile%\Desktop\temp_wallpaper %userprofile%\Desktop\wallpaper
cd..
rd /s /q %userprofile%\Desktop\temp_wallpaper

PAUSE
