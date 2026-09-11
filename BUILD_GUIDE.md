# BMWStream Android Project - Complete Setup Guide

## 📱 What is This?

This is an Android application project that needs to be compiled into an APK (Android Package) file that can be installed on Android devices.

---

## 🚀 Quick Start (Easiest Method)

### **Option 1: Using Android Studio (Recommended for Beginners)**

1. **Install Android Studio**
   - Download from: https://developer.android.com/studio
   - Install it completely

2. **Open Project in Android Studio**
   - Extract `BMWStream-project.zip`
   - In Android Studio: File → Open → Select the extracted folder
   - Wait for Gradle to sync (may take 5-10 minutes)

3. **Build APK**
   - Click "Build" menu → "Build Bundle(s) / APK(s)" → "Build APK(s)"
   - Wait for completion
   - Find APK in: `app/build/outputs/apk/debug/`

---

### **Option 2: Command Line (Advanced)**

#### **Requirements:**
- Java Development Kit (JDK 8+): https://www.oracle.com/java/technologies/downloads/
- Android SDK: https://developer.android.com/tools/releases/platforms
- OR use Android Studio (includes everything)

#### **Steps:**

**Mac/Linux:**
```bash
# 1. Extract the project
unzip BMWStream-project.zip
cd BMWStream-project

# 2. Build APK
chmod +x gradlew
./gradlew assembleDebug

# 3. APK location
# app/build/outputs/apk/debug/app-debug.apk
```

**Windows:**
```cmd
REM 1. Extract the project
# Use Windows Explorer to extract BMWStream-project.zip
cd BMWStream-project

REM 2. Build APK
gradlew.bat assembleDebug

REM 3. APK location
REM app\build\outputs\apk\debug\app-debug.apk
```

---

## 📂 Project Structure

After extraction, you'll see:
```
BMWStream-project/
├── app/                    # Main app code
├── build.gradle            # Build configuration
├── gradlew                 # Gradle wrapper (Mac/Linux)
├── gradlew.bat            # Gradle wrapper (Windows)
├── settings.gradle        # Project settings
└── README.md              # Project info
```

---

## ✅ Build Success Indicators

**You'll know it worked when you see:**
- ✅ "Build Successful" message
- ✅ APK file appears in `app/build/outputs/apk/debug/`
- ✅ File size: typically 5-50 MB

**APK File Location:**
- **Debug APK:** `app/build/outputs/apk/debug/app-debug.apk`
- **Release APK:** `app/build/outputs/apk/release/app-release.apk` (requires signing)

---

## 🔧 Troubleshooting

### "Java not found"
```bash
# Install Java
# Windows: https://www.oracle.com/java/technologies/downloads/
# Mac: brew install openjdk@11
# Linux: sudo apt-get install openjdk-11-jdk
```

### "Gradle wrapper not found"
```bash
# Make sure you extracted the ZIP completely
# Check that gradlew file exists in the root folder
```

### "Build fails with SDK errors"
```bash
# Install Android SDK
# Option 1: Use Android Studio (easiest)
# Option 2: Use Android SDK Manager
# Set ANDROID_SDK_ROOT environment variable
```

### "Out of memory"
```bash
# Edit gradle.properties
org.gradle.jvmargs=-Xmx2048m
```

---

## 📲 Installing the APK

Once you have the APK:

### **On Physical Device:**
1. Enable "Unknown Sources" in Settings → Security
2. Transfer APK via USB or cloud storage
3. Open file manager and tap APK to install

### **On Emulator:**
```bash
adb install app/build/outputs/apk/debug/app-debug.apk
```

---

## 📚 Next Steps

1. ✅ **Install Java & Android SDK**
2. ✅ **Extract the ZIP file**
3. ✅ **Run build command**
4. ✅ **Find your APK**
5. ✅ **Install on device**

---

## 🆘 Need Help?

- **Android Studio Help:** https://developer.android.com/docs
- **Gradle Documentation:** https://docs.gradle.org/
- **Android Build System:** https://developer.android.com/build

---

**Status:** Ready to build! Follow the Quick Start section above. 🎯
