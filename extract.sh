#!/bin/bash
# Simple extraction script for BMWStream project

echo "=========================================="
echo "BMWStream Project Extractor"
echo "=========================================="
echo ""

# Check if zip file exists
if [ ! -f "BMWStream-project.zip" ]; then
    echo "ERROR: BMWStream-project.zip not found!"
    echo "Please make sure the ZIP file is in the current directory."
    exit 1
fi

echo "[1/3] Extracting ZIP file..."
unzip -q BMWStream-project.zip

echo "[2/3] Finding project files..."
PROJECT_DIR=$(find . -name "build.gradle" -type f | head -1 | xargs dirname)

if [ -z "$PROJECT_DIR" ]; then
    echo "WARNING: Could not find build.gradle"
    echo "Extracted contents:"
    ls -la
else
    echo "✓ Found project at: $PROJECT_DIR"
    echo ""
    echo "[3/3] Project structure:"
    ls -la "$PROJECT_DIR" | head -20
fi

echo ""
echo "=========================================="
echo "NEXT STEPS:"
echo "=========================================="
echo "1. Read BUILD_GUIDE.md for detailed instructions"
echo "2. Navigate to the project directory"
echo "3. Run: ./gradlew assembleDebug"
echo "4. APK will be in: app/build/outputs/apk/debug/"
echo "=========================================="
