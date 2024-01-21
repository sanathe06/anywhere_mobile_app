# Character Viewer Application

## Overview

The Character Viewer App is a dynamic application designed to showcase characters from two popular television series: "The Wire" and "The Simpsons". This application offers detailed views of characters from these series, enriching the user experience with comprehensive information and interactive features.

## Environment Setup

To ensure optimal performance and compatibility, the application is developed with the following environment:

```bash
Flutter 3.16.8 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 67457e669f (5 days ago) • 2024-01-16 16:22:29 -0800
Engine • revision 6e2ea58a5c
Tools • Dart 3.2.5 • DevTools 2.28.5
```

## Installation Guide

- Clone the repository from the main branch.
- Execute flutter pub get in your terminal to install the necessary dependencies.

```bash
flutter pub get
```

## The Wire Character Viewer

To launch the viewer for 'The Wire' characters, use the following command:

```bash
flutter run --flavor wire -t lib/main_wire.dart
```

## Simpsons Character Viewer

To view characters from 'The Simpsons', execute:

```bash
flutter run --flavor simpsons -t lib/main_simpsons.dart
```

## Architecture

- The application employs the Model-View-ViewModel (MVVM) pattern, integrated with ChangeNotifier for efficient state management.
- Character data is managed through a CharacterRepository, ensuring UI components receive only the necessary data.
- Responsive design principles are applied, with a breakpoint at 600 pixels to differentiate between tablet and phone layouts.
- UI components are modularized for reusability across different device types.

## Iconography

- Distinct app icons are provided for each variant of the application.
- Icons are generated using flutter_launcher_icons.

## Variant

- Android variants are managed through flavors, while iOS variants utilize Schema.
- Flutter's flavor configuration is used to set different API URLs for each variant.
- The flutter_flavorizr library was considered but not utilized due to limitations, favoring a more straightforward variant management approach.

## Testing

- The application includes unit tests to validate the integrity of image URLs.

## Feedbacks

Your feedback is invaluable to the continuous improvement of this application. Please feel free to share your thoughts and suggestions. Your input is greatly appreciated and will be instrumental in future developments.