@echo off
title APK Generator
color 1b

echo ################################################
echo APK Generator from Build
echo Aathil Ahamed
echo ibnusafina@gmail.com
echo www.aathil.me
echo ################################################

IF EXIST core.apks DEL core.apks

cmd /c "java -jar bundletool.jar build-apks --bundle=core.aab --output=core.apks --mode=universal"

echo:
echo APKS file created. press any key to rename apks to zip file.
echo:
echo:
pause

IF EXIST core.zip DEL core.zip

ren core.apks core.zip

echo File rename success. press any key to exit.
echo:
echo:
pause

IF EXIST universal.apk DEL universal.apk

echo Extracting zip file...
tar -xf core.zip

IF EXIST core.zip DEL core.zip
IF EXIST toc.pb DEL toc.pb
pause