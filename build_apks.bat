@echo off
if "%1"=="" (
    echo Usage: build_apks.bat [keystore_password] [keystore_alias]
    exit /b
)

if "%2"=="" (
    echo Usage: build_apks.bat [keystore_password] [keystore_alias]
    exit /b
)

set KS_PASS=%1
set KS_ALIAS=%2

echo Cleaning old .apks file...
if exist output.apks (
    del /f /q output.apks
)

echo Building APKs with BundleTool...
java -jar .\bundletool-all-1.18.1.jar build-apks ^
  --bundle=application.aab ^
  --output=output.apks ^
  --ks=keystore.jks ^
  --ks-pass=pass:%KS_PASS% ^
  --ks-key-alias=%KS_ALIAS% ^
  --mode=universal
  
echo Cleaning up previous output...
if exist extracted_apks (
    rmdir /s /q extracted_apks
)

echo.
echo Unzipping the output .apks file...
mkdir extracted_apks
tar -xf output.apks -C extracted_apks

echo.
echo Done! The APKs have been extracted to the "extracted_apks" folder.
pause
