adb shell input tap 573 867
adb shell input swipe 49 491 49 491 650
adb shell input text "$K_URL"
adb shell input tap 341 622
sleep 3
adb shell input tap 839 1168
adb shell input swipe 60 735 60 735 650
adb shell input text "$K_USER"
adb shell input keyevent KEYCODE_TAB
adb shell input text "$K_PASS"
adb shell input tap 373 808
