# Weather App

A beautiful Flutter weather application that displays current weather, hourly and weekly forecasts, and more. The app features a custom UI with images, Google Fonts, and smooth navigation between screens.

## Demo Video

Watch a demo of the Weather App below:

[![Weather App Demo](https://img.youtube.com/vi/wpJLzKbbTso/0.jpg)](https://youtu.be/wpJLzKbbTso)

> Click the image above or [this link](https://youtu.be/wpJLzKbbTso) to play the demo video on YouTube.

## Features
- Splash screen with custom background and logo
- Hourly and 7-day weather forecasts
- Custom widgets for weather components
- Responsive design for different screen sizes
- Asset images for enhanced UI

## App Preview

Here are some screenshots of the Weather App:

| Splash Screen | 7-Day Forecast |
|--------------|---------------|
| ![splash.jpg](readmeImg%2Fsplash.jpg) | ![weeklycast.jpg](readmeImg%2Fweeklycast.jpg) |

> **Note:** If the images do not display, ensure the files are present in `assets/readmeImg/` and the paths are correct.

## Getting Started

### Prerequisites
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Dart
- Android Studio or VS Code (recommended)

### Installation
1. Clone the repository:
   ```
   git clone <repository-url>
   ```
2. Navigate to the project directory:
   ```
   cd weather_app
   ```
3. Get the dependencies:
   ```
   flutter pub get
   ```

### Running the App
- To run on an emulator or connected device:
  ```
  flutter run
  ```

## Project Structure
- `lib/` - Main Dart source files
  - `main.dart` - Entry point
  - `SplashScreen.dart` - Splash screen
  - `home_page.dart` - Home page UI
  - `Weater7Days.dart` - 7-day forecast
  - `widgets/` - Custom reusable widgets
- `assets/images/` - App images
- `android/`, `ios/`, `web/` - Platform-specific files

## Assets
All images used in the app are located in `assets/images/`. Make sure the `pubspec.yaml` includes the assets section:

```
flutter:
  assets:
    - assets/images/
```

## Dependencies
- [google_fonts](https://pub.dev/packages/google_fonts)
- [flutter](https://flutter.dev)

## License
This project is for educational purposes.
