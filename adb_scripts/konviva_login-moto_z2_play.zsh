echo "SKIP_URL ="$SKIP_URL" (inside "$1")"
echo "SLEEP_BEFORE ="$SLEEP_BEFORE" (inside "$1")"
if [ "$SLEEP_BEFORE" = "1" ]; then
	sleep 10
fi
if [ -z "$SKIP_URL" ]; then
	adb shell input tap 940 1250
	adb shell input swipe 65 605 65 605 650
	adb shell input text "$K_URL"
	adb shell input tap 490 785
	sleep 3
fi
adb shell input tap 839 1168
adb shell input swipe 60 735 60 735 650
adb shell input text "$K_USER"
adb shell input keyevent KEYCODE_TAB
adb shell input text "$K_PASS"
adb shell input tap 490 1060
