---
comments: false
date: "2020-09-08T00:00:00Z"
description: Day Off 프로젝트 시작.
published: false
tags:
- TypeScript
- ReactNative
title: Day Off init
toc: true
toc_labe: 환경 설정
---

```shell
$> npx react-native init dayoff --template react-native-template-typescript

               ######                ######
             ###     ####        ####     ###
            ##          ###    ###          ##
            ##             ####             ##
            ##             ####             ##
            ##           ##    ##           ##
            ##         ###      ###         ##
             ##  ########################  ##
          ######    ###            ###    ######
      ###     ##    ##              ##    ##     ###
   ###         ## ###      ####      ### ##         ###
  ##           ####      ########      ####           ##
 ##             ###     ##########     ###             ##
  ##           ####      ########      ####           ##
   ###         ## ###      ####      ### ##         ###
      ###     ##    ##              ##    ##     ###
          ######    ###            ###    ######
             ##  ########################  ##
            ##         ###      ###         ##
            ##           ##    ##           ##
            ##             ####             ##
            ##             ####             ##
            ##          ###    ###          ##
             ###     ####        ####     ###
               ######                ######


                  Welcome to React Native!
                 Learn once, write anywhere

✔ Downloading template
✔ Copying template
✔ Processing template
✔ Installing dependencies

  Run instructions for iOS:
    • cd "/home/geeksaga/workspace/dayoff" && npx react-native run-ios
    - or -
    • Open dayoff/ios/dayoff.xcodeproj in Xcode or run "xed -b ios"
    • Hit the Run button

  Run instructions for Android:
    • Have an Android emulator running (quickest way to get started), or a device connected.
    • cd "/home/geeksaga/workspace/dayoff" && npx react-native run-android

  Run instructions for Windows and macOS:
    • See https://aka.ms/ReactNative for the latest up-to-date instructions.

```

## for Android

```shell
$> npx react-native run-android
info Running jetifier to migrate libraries to AndroidX. You can disable it using "--no-jetifier" flag.
Jetifier found 967 file(s) to forward-jetify. Using 8 workers...
info Starting JS server...
/bin/sh: 1: adb: not found
info Launching emulator...
error Failed to launch emulator. Reason: No emulators found as an output of `emulator -list-avds`.
warn Please launch an emulator manually or connect a device. Otherwise app may fail to launch.
info Installing the app...
Downloading https://services.gradle.org/distributions/gradle-6.2-all.zip
.............10%.............20%.............30%..............40%.............50%.............60%.............70%..............80%.............90%.............100%

Welcome to Gradle 6.2!

Here are the highlights of this release:
 - Dependency checksum and signature verification
 - Documentation links in deprecation messages
 - Shareable read-only dependency cache

For more details see https://docs.gradle.org/6.2/release-notes.html

Starting a Gradle Daemon (subsequent builds will be faster)

Deprecated Gradle features were used in this build, making it incompatible with Gradle 7.0.
Use '--warning-mode all' to show the individual deprecation warnings.
See https://docs.gradle.org/6.2/userguide/command_line_interface.html#sec:command_line_warnings

FAILURE: Build failed with an exception.

* What went wrong:
Could not determine the dependencies of task ':app:installDebug'.
> SDK location not found. Define location with an ANDROID_SDK_ROOT environment variable or by setting the sdk.dir path in your project's local properties file at '/home/geeksaga/workspace/dayoff/android/local.properties'.

* Try:
Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output. Run with --scan to get full insights.

* Get more help at https://help.gradle.org

BUILD FAILED in 49s

error Failed to install the app. Make sure you have the Android development environment set up: https://reactnative.dev/docs/environment-setup. Run CLI with --verbose flag for more details.
Error: Command failed: ./gradlew app:installDebug -PreactNativeDevServerPort=8081
```
프로젝트를 실행시키려면 ADB가 설치되어 있어야 합니다.
"Setting up the development environment[1]"를 참고하여 환경 구성을 합니다.

AVD를 통해 해당 Deviece를 실행 시킨다.

## 참고
* Setting up the development environment[1]

[1]:https://reactnative.dev/docs/environment-setup "Setting up the development environment"
