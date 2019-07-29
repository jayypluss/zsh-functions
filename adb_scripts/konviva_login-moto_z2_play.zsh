adb shell input tap 940 1250
adb shell input swipe 65 605 65 605 650
adb shell input text "$K_URL"
adb shell input tap 490 785
sleep 3
adb shell input tap 839 1168
adb shell input swipe 60 735 60 735 650
adb shell input text "$K_USER"
adb shell input keyevent KEYCODE_TAB
adb shell input text "$K_PASS"
adb shell input tap 490 1060
