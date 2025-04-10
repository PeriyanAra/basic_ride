# Basic Ride

This project is configured with FVM, supports both Android and iOS platforms.

---

## 📋 Prerequisites

Ensure the following tools are installed and properly configured on your machine:

- **[FVM (Flutter Version Management)](https://fvm.app/docs/getting_started/installation)**  
  _Used to manage consistent Flutter versions across environments._

- **[Flutter SDK](https://flutter.dev/docs/get-started/install)**  
  _Automatically installed via FVM._

- **[Xcode](https://developer.apple.com/xcode/)** – Required for iOS development  
  _Recommended installation via [`xcodes`](https://github.com/RobotsAndPencils/xcodes):_

  ```bash
  brew install robotsandpencils/made/xcodes
  xcodes install
- **[Android Studio](https://developer.android.com/studio)** – Required for Android development  


## 🚀 Quick Setup


### 1. Clone the Repository

```bash
git clone git@github.com:PeriyanAra/basic-ride.git
cd basic-ride/

```

### 2. Install Flutter Version & Dependencies

```bash
fvm install          # Install Flutter version specified in .fvm/fvm_config.json
fvm use              # Use that Flutter version for this project
fvm flutter pub get  # Get project dependencies
```
### 3. Run the App

Make sure you have a device or emulator running, then use the following command to launch the app:

```bash
fvm flutter run
```

 ---

## 🗺️ Google Maps API Setup

This app uses the Google Maps SDK for displaying maps.

### 🔑 1. Get an API Key

1. Go to the [Google Cloud Console](https://console.cloud.google.com/).
2. Create a new project or select an existing one.
3. Enable the following APIs:
   - **Maps SDK for Android**
   - **Maps SDK for iOS**
   - **Places API**
   - **Directions API**
   - **Geocoding API**
   - **Geolocation API**
   - **Distanse matrix API**
   - **Maps javascript API**
4. Navigate to **Credentials** and generate a new **API key**.
5. Restrict the key for Android/iOS usage as needed for security.

---

### 🛠️ 2. Configure the API Key

### Android setup

* Navigate to the file `android/app/src/main/AndroidManifest.xml` and add the following code snippet inside the `application` tag:

   ```xml
   <!-- Add your Google Maps API Key here -->
   <meta-data android:name="com.google.android.geo.API_KEY"
                  android:value="YOUR KEY HERE"/>
   ```

* Also, you will need location access in the app. So, add the following permission in the same file inside the `manifest` tag:
  
  ```xml
  <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
  ```

### iOS setup

* Navigate to the file `ios/Runner/AppDelegate.swift` and replace the whole code with the following:

   ```swift
   import UIKit
   import Flutter
   import GoogleMaps
   
   @UIApplicationMain
   @objc class AppDelegate: FlutterAppDelegate {
     override func application(
       _ application: UIApplication,
       didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
     ) -> Bool {
       //Add your Google Maps API Key here
       GMSServices.provideAPIKey("YOUR KEY HERE")
       GeneratedPluginRegistrant.register(with: self)
       return super.application(application, didFinishLaunchingWithOptions: launchOptions)
     }
   }
   ```


* For getting location permission, add the following to the same file:
  
  ```
  <key>NSLocationWhenInUseUsageDescription</key>
  <string>This app needs access to location when open.</string>
  ```

#### Full configuration (already done in this project)

You do not require to complete these configurations if you are cloning this project, as they are already done in it.
