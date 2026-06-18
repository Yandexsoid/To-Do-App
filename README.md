# 📝 TodoList + Calendar App

[![Swift](https://img.shields.io/badge/Swift-5.5-orange.svg)](https://swift.org)
[![iOS](https://img.shields.io/badge/iOS-15.0+-blue.svg)](https://developer.apple.com/ios/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

> Simple iOS app with task manager and calendar / Простое iOS-приложение с менеджером задач и календарем

---

## ✨ Features / Возможности

- ✅ Create, complete, delete tasks / Создание, выполнение, удаление задач
- 📅 Calendar with date selection / Календарь с выбором даты
- 🌓 Dark/Light theme / Темная/Светлая тема
- 💾 Auto-save to UserDefaults / Автосохранение
- ⏰ Time tracking / Время выполнения
- 📝 Notes support / Поддержка заметок

---

## 🏗️ Architecture / Архитектура

**MVVM** pattern: `View (SwiftUI)` → `ViewModel (TodoManager)` → `Model (Task)`

---

## 📁 Project Structure / Структура
TodoApp/
├── App.swift # Entry point
├── ContentView.swift # Main view
├── AddTodoView.swift # Add task view
├── TodoManager.swift # ViewModel
├── Task.swift # Model
└── Assets.xcassets # Resources

text

---

## 🚀 Technologies

- SwiftUI
- Combine
- UserDefaults
- MVVM

---

## 📱 Requirements

- iOS 15.0+
- Xcode 13.0+
- Swift 5.5+

---

## 💡 Installation

```bash
git clone https://github.com/yourusername/todo-calendar-app.git
cd todo-calendar-app
open TodoApp.xcodeproj
Press ⌘ + R to run / Нажмите ⌘ + R для запуска

📸 Screenshots
Light Theme	Dark Theme
📱 Add screenshot	📱 Add screenshot
🤝 Contributing
Fork the repo

Create feature branch (git checkout -b feature/Amazing)

Commit changes (git commit -m 'Add Amazing')

Push (git push origin feature/Amazing)

Open Pull Request

📄 License
MIT License - see LICENSE file / MIT - см. файл LICENSE

📞 Contact
Your Name

Email: your.email@example.com

GitHub: @yourusername

⭐ Star this repo if you like it! / ⭐ Поставьте звезду, если понравилось!

Made with ❤️ using SwiftUI
