#!/bin/bash
# Build script to extract ZIP and compile APK

echo "=== Extracting BMWStream-project.zip ==="
unzip -q BMWStream-project.zip -d ./extracted
ls -la extracted/

echo ""
echo "=== Project Structure ==="
find extracted -name "build.gradle" -o -name "AndroidManifest.xml" | head -10

echo ""
echo "=== Instructions ==="
echo "1. The project has been extracted to ./extracted/"
echo "2. Check if gradlew exists in the project directory"
echo "3. Run: cd extracted && chmod +x gradlew && ./gradlew assembleDebug"
echo "4. APK will be in: app/build/outputs/apk/debug/"
