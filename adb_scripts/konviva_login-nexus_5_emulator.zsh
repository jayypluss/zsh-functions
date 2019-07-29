adb -e shell input tap 72 1154
adb -e shell input swipe 67 601 67 601 650
adb -e shell input text "$K_URL"
adb -e shell input tap 575 742
sleep 3
adb -e shell input tap 56 1060
adb -e shell input swipe 59 726 59 726 650
adb -e shell input text "$K_USER"
adb -e shell input keyevent KEYCODE_TAB
adb -e shell input text "$K_PASS"
adb -e shell input tap 511 1035
