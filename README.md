# 🌐 Network Connectivity Checker

A lightweight Flutter library to **monitor internet connectivity in real-time** with an optional ready-to-use   
**offline banner widget**.

This package helps you detect whether the device is **online or offline**, listen to connectivity changes, and   
reflect the status in UI effortlessly.

---

## ✨ Features
- ✅ Check current internet status
- ✅ Listen to live connectivity changes
- ✅ Ready-made Offline Banner Widget
- ✅ Clean architecture (Service + Controller + Widget)
- ✅ Easy to integrate in any Flutter app
- ✅ Library-ready structure using src/ pattern
- ✅ ChangeNotifier based (no heavy state management needed)

---

## 📸 Preview
![Network](https://github.com/user-attachments/assets/26751afe-c0ec-4680-bd82-07d6f9981efe)


---

## 📦 Installation
### Add this to your `pubspec.yaml`:
```yaml
dependencies:
  flutter_network_connectivity_checker:
    path: '.../flutter_network_connectivity_checker/flutter_network_connectivity_checker'
```

##

### From GitHub
```yaml
dependencies:
  flutter_network_connectivity_checker:
    git:
      url: https://github.com/yourusername/flutter_network_connectivity_checker.git
```

---

## 🚀 Usage
### 1️⃣ Import package
```dart
import 'package:flutter_network_connectivity_checker/flutter_network_connectivity_checker.dart';
```

##

### 2️⃣ Initialize Controller
```dart
final ConnectivityController controller = ConnectivityController();

@override
void initState() {
  super.initState();
  controller.init();
}

@override
void dispose() {
  controller.disposeController();
  super.dispose();
}
```

##

### 3️⃣ Add Banner to UI
```dart
Column(
  children: [
    ConnectivityBanner(controller: controller),
    Expanded(child: YourScreen()),
  ],
)
```

---

## 🧠 How It Works
| Layer                  | Responsibility                                       |
| ---------------------- | ---------------------------------------------------- |
| ConnectivityService    | Listens to network changes using `connectivity_plus` |
| ConnectivityController | Manages state using ChangeNotifier                   |
| ConnectivityBanner     | Displays offline UI automatically                    |

---

## 📁 Library Structure
```text
lib/
│
├── flutter_network_connectivity_checker.dart
│
└── src/
    ├── connectivity_state.dart
    ├── connectivity_service.dart
    ├── connectivity_controller.dart
    └── widgets/
        └── connectivity_banner.dart
```

---

## 🎯 Use Cases
- Show offline banner automatically
- Prevent API calls when offline
- Trigger retry mechanism when internet comes back
- Global connectivity listener for the entire app

---

## 📜 License
```text
Copyright (c) 2026 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
