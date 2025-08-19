# Fleet — Flutter Travel App

An elegant Flutter UI for a travel discovery app featuring explore and home screens, categories, and popular destinations. This repository currently ships the UI and local data only. Backend services (Firebase), maps, and social authentication are outlined below as optional integrations you can add.

## Demo

If your browser supports it, the video will play inline. Otherwise, use the download link.

<video src="./Screen%20Recording%202023-07-24%20at%2012.28.38%20AM.mov" controls width="720"></video>

[Download the demo video](./Screen%20Recording%202023-07-24%20at%2012.28.38%20AM.mov)

## Features

- UI: Explore list, categories, staggered grid, carousel of popular destinations
- Clean bottom navigation with animations
- SVG icons, Google Fonts, cached images

## Tech Stack

- Flutter (Dart)
- Packages (from `pubspec.yaml`):
  - `carousel_slider`
  - `flutter_staggered_grid_view`
  - `flutter_svg`
  - `cached_network_image`
  - `google_fonts`

## What’s implemented now

- Stateless/Stateful screens for Explore/Home (`lib/screens/*.dart`)
- Theming in `lib/theme/color.dart`
- Reusable widgets in `lib/widgets/`
- Local mock data in `lib/utils/data.dart`

## Optional integrations (not yet in code)

The current codebase does not yet include backend or auth packages. Below are battle‑tested steps to add them.

### Firebase (Backend)

1) Add packages to `pubspec.yaml`:

```yaml
dependencies:
  firebase_core: ^latest
  cloud_firestore: ^latest
  firebase_auth: ^latest
```

2) Initialize Firebase:

```dart
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
```

3) Configure Firebase for iOS/Android using the Firebase Console and add `GoogleService-Info.plist` (iOS) and `google-services.json` (Android). Update Gradle files per Firebase docs.

### Google Maps

1) Add packages:

```yaml
dependencies:
  google_maps_flutter: ^latest
  geolocator: ^latest
```

2) iOS: add your Maps API key to `AppDelegate`/Info.plist. Android: add the API key to `AndroidManifest.xml`.

3) Use `GoogleMap` widget to render maps and markers.

### Authentication (Google & Facebook)

1) Add packages:

```yaml
dependencies:
  google_sign_in: ^latest
  flutter_facebook_auth: ^latest
```

2) Wire sign‑in flows and, if using Firebase, link tokens with `FirebaseAuth`.

## Project structure

```
lib/
  main.dart
  screens/
    explore.dart
    home.dart
    root.dart
  theme/
    color.dart
  utils/
    constant.dart
    data.dart
  widgets/
    ...
```

## Getting started

```bash
flutter pub get
flutter run
```

## Repo

This project is hosted on GitHub: https://github.com/Yugesh-reddy/Fleet--Flutter-Travel-App

---

If you want, we can integrate Firebase, Google Maps, and social login next and update this README accordingly.