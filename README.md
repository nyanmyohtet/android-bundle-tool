# Android Bundle Tool Wrapper

A wrapper to sign and convert `aab` file into `apk` file.

> Tested on Windows 11 using PowerShell inside Terminal App.

## Usage

Put [bundletool-all-1.18.1.jar](https://github.com/google/bundletool/releases/download/1.18.1/bundletool-all-1.18.1.jar) and `keystore.jks` file into root directory.

```sh
.\build_apks.bat <keystore-password> <keystore-alias>
```

## Ref

- https://stackoverflow.com/questions/53040047/generate-an-apk-file-from-an-aab-file-android-app-bundle
