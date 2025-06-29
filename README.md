# 🍪 Cookie of Fate

A delightful Flutter app that reveals a random fortune each time you crack open the magical cookie! Built as part of the *Getting Started with Flutter & Dart* course on Coursera (Packt x Coursera), this app demonstrates core Flutter concepts like widgets, state management, image assets, UI styling, and modular code organization.

---

## ✨ Features

- 🎯 Tap the cookie to reveal a random fortune
- 🧠 Over 60+ motivational, fun, and quirky fortune messages
- 🖼️ Clean and responsive UI with a cookie-themed aesthetic
- 🧩 Modular architecture (fortunes separated into a Dart file)
- ⚡ Uses `setState` for dynamic UI updates
- 🧪 Widget-tested for correctness with `flutter_test`
- 🧩 Material 3 design with theme customization
- 🐛 Hot reload supported for faster development

---

## 🛠️ How It's Made

- **Framework**: [Flutter](https://flutter.dev/)
- **Language**: Dart
- **State Management**: `setState`
- **UI Components**: `MaterialApp`, `Scaffold`, `AppBar`, `ElevatedButton`, `Image.asset`, `Text`
- **Randomization**: Dart's `Random` class
- **Testing**: Basic widget test to ensure fortune changes on tap
- **Modular Code**:
  - `main.dart`: App setup and UI logic
  - `fortunes.dart`: Stores the list of fortune messages

---

## 📂 Project Structure

```

cookie\_of\_fate/
├── assets/
│   └── images/
│       └── cookies.png
├── lib/
│   ├── fortunes.dart
│   └── main.dart
├── test/
│   └── widget\_test.dart
├── pubspec.yaml
└── README.md

````

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (v3.8+ recommended)
- VS Code or Android Studio
- A physical device or emulator

### Run Locally

```bash
git clone https://github.com/MrRogueKnight/Cookie-of-Fate.git
cd Cookie-of-Fate
flutter pub get
flutter run
````

> 💡 Make sure to connect a device or launch an emulator before running.

---

## 🧪 Testing

```bash
flutter test
```

This runs a widget test that ensures the fortune message changes on button press.

---

## 💡 Possible Enhancements

* Add sound effects or animations
* Support dark mode and multiple themes
* Use a package like `provider` or `riverpod` for better state management
* Add user interaction history or "favorite fortunes"

---

## 📚 Credits

* Developed by [@MrRogueKnight](https://github.com/MrRogueKnight)
* Based on Coursera Module: *Getting Started with Flutter & Dart* by Packt

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

🌟 **Star** this repo if you liked it — it helps others discover it too!
