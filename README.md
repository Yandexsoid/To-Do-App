# 📝 TodoList + Calendar App

[![Swift](https://img.shields.io/badge/Swift-5.5-orange.svg)](https://swift.org)
[![iOS](https://img.shields.io/badge/iOS-15.0+-blue.svg)](https://developer.apple.com/ios/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-3.0-red.svg)](https://developer.apple.com/xcode/swiftui/)

> A simple and elegant iOS application built with SwiftUI that combines a task manager with a calendar view.

> Простое и элегантное iOS-приложение на SwiftUI, объединяющее менеджер задач с календарем.

---

## 📱 Screenshots / Скриншоты

| Light Theme / Светлая тема | Dark Theme / Темная тема |
|---------------------------|--------------------------|
| 📱 *Add screenshot here*  | 📱 *Add screenshot here* |

---

## ✨ Features / Возможности

| Feature | Description |
|---------|-------------|
| ✅ **Task Management** | Create, complete, and delete tasks / Создание, выполнение и удаление задач |
| 📅 **Calendar Integration** | View tasks for specific dates / Просмотр задач по датам |
| 🌓 **Dark/Light Theme** | Toggle between dark and light modes / Переключение между темами |
| 💾 **Persistent Storage** | Tasks automatically saved locally / Автоматическое сохранение |
| ⏰ **Time Tracking** | Each task includes time of day / У каждой задачи есть время |
| 📝 **Notes Support** | Add additional details to tasks / Добавление заметок к задачам |

---

## 🏗️ Architecture / Архитектура

The app follows the **MVVM (Model-View-ViewModel)** architecture pattern:
┌─────────────────────────────────────────────────────┐
│ VIEW │
│ (ContentView, AddTodoView) │
└─────────────────┬───────────────────────────────────┘
│
┌─────────────────▼───────────────────────────────────┐
│ VIEWMODEL │
│ (TodoManager) │
└─────────────────┬───────────────────────────────────┘
│
┌─────────────────▼───────────────────────────────────┐
│ MODEL │
│ (Task) │
└─────────────────────────────────────────────────────┘

text

### Components / Компоненты:

- **Model**: `Task` struct with Codable support / Структура с поддержкой Codable
- **ViewModel**: `TodoManager` class with ObservableObject / Класс с ObservableObject
- **View**: SwiftUI views with declarative UI / SwiftUI-представления

---

## 📁 Project Structure / Структура проекта
TodoApp/
├── 📄 App.swift # App entry point / Точка входа
├── 📄 ContentView.swift # Main view with calendar / Главный экран
├── 📄 AddTodoView.swift # Add new task view / Добавление задачи
├── 📄 TodoManager.swift # ViewModel with business logic / Бизнес-логика
├── 📄 Task.swift # Data model / Модель данных
├── 📁 Assets.xcassets # App assets / Ресурсы
└── 📄 Info.plist # App configuration / Конфигурация

text

---

## 🚀 Technologies / Технологии

| Technology | Purpose / Назначение |
|------------|---------------------|
| **SwiftUI** | Modern declarative UI / Декларативный UI |
| **Combine** | Reactive programming / Реактивное программирование |
| **UserDefaults** | Local data persistence / Локальное хранение |
| **MVVM** | Architecture pattern / Архитектурный паттерн |

---

## 📱 Requirements / Требования

- **iOS** 15.0+
- **Xcode** 13.0+
- **Swift** 5.5+

---

## 💡 Installation / Установка

### 1. Clone the repository / Клонируйте репозиторий

```bash
git clone https://github.com/yourusername/todo-calendar-app.git
2. Open in Xcode / Откройте в Xcode
bash
cd todo-calendar-app
open TodoApp.xcodeproj
3. Build and run / Соберите и запустите
Press ⌘ + R or click the play button in Xcode.

🎯 Features Overview / Обзор функционала
📋 Task Management / Управление задачами
✅ Add tasks with title, notes, and time

✅ Mark tasks as complete/incomplete

✅ Swipe to delete tasks

✅ View tasks organized by date

📅 Calendar View / Календарь
📅 Graphical date picker

📅 Tasks displayed for selected date

📅 Quick date navigation

🌓 Theme Support / Темы оформления
🌓 System-like dark/light mode

🌓 Persistent theme preference

🌓 Smooth transitions

🔧 Configuration / Настройка
No additional configuration needed. The app uses UserDefaults for local storage.

Дополнительная настройка не требуется. Приложение использует UserDefaults для локального хранения.

📊 Data Flow / Поток данных
text
User Action → View → ViewModel → Model → Update View
     ↓          ↓        ↓          ↓          ↓
  Tap Save  Content  addTask()  [Task]    Refresh UI
🤝 Contributing / Вклад в проект
Contributions are welcome! Here's how you can help:

🍴 Fork the repository

🔧 Create your feature branch (git checkout -b feature/AmazingFeature)

💾 Commit your changes (git commit -m 'Add some AmazingFeature')

📤 Push to the branch (git push origin feature/AmazingFeature)

🔃 Open a Pull Request

📄 License / Лицензия
Distributed under the MIT License. See LICENSE for more information.

Распространяется под лицензией MIT. Подробности в файле LICENSE.

📞 Contact / Контакты
Your Name / Ваше Имя

📧 Email: your.email@example.com

🔗 GitHub: @yourusername

🐦 Twitter: @yourusername

Project Link / Ссылка на проект: https://github.com/yourusername/todo-calendar-app

🌟 Support / Поддержка
If you like this project, please give it a ⭐ on GitHub!

Если вам понравился проект, поставьте ⭐ на GitHub!

🛤️ Roadmap / Планы по развитию
🔔 Task notifications / Уведомления о задачах

☁️ iCloud sync / Синхронизация с iCloud

🏷️ Categories and tags / Категории и теги

🔍 Task search / Поиск задач

📤 Export/Import data / Экспорт/импорт данных

📱 Widgets / Виджеты на экран блокировки

🗣️ Siri shortcuts / Команды для Siri

⌚ Apple Watch support / Поддержка Apple Watch

🌐 Multi-language / Мультиязычность

💻 Code Examples / Примеры кода
Task Model / Модель задачи
swift
struct Task: Identifiable, Codable {
    let id: UUID
    var title: String
    var note: String?
    var date: Date
    var isCompleted: Bool
}
TodoManager - ViewModel
swift
class TodoManager: ObservableObject {
    @Published var tasks: [Task] = []
    
    func addTask(title: String, note: String?, date: Date) {
        let newTask = Task(
            id: UUID(),
            title: title,
            note: note,
            date: date,
            isCompleted: false
        )
        tasks.append(newTask)
        saveTasks()
    }
    
    func toggleTask(_ task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle()
            saveTasks()
        }
    }
    
    func deleteTask(_ task: Task) {
        tasks.removeAll { $0.id == task.id }
        saveTasks()
    }
}
Main View / Главное представление
swift
struct ContentView: View {
    @StateObject private var todoManager = TodoManager()
    @State private var selectedDate = Date()
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        // Your UI code here
    }
}
🎨 Design System / Дизайн-система
Colors / Цвета
Color	Light Theme	Dark Theme
Primary	Black/White	White/Black
Secondary	Gray	Light Gray
Accent	Blue	Blue
Background	White	Black
Typography / Типографика
Title: Large Title (34pt)

Headline: Headline (17pt)

Body: Body (17pt)

Caption: Caption (12pt)

📚 Resources / Ресурсы
SwiftUI Documentation

Human Interface Guidelines

Combine Framework

❓ FAQ / Часто задаваемые вопросы
Q: Does the app work offline?
A: Yes, all data is stored locally using UserDefaults.

Q: Can I add reminders?
A: Currently not, but this feature is planned for future updates.

Q: How do I switch themes?
A: Use the toggle switch in the top-right corner of the main screen.

📝 Changelog / История изменений
v1.0.0 (2024)
🎉 Initial release

✅ Basic task management

📅 Calendar integration

🌓 Dark/light theme support

💾 Local data persistence

🙏 Acknowledgments / Благодарности
Apple for SwiftUI and iOS

The Swift community for inspiration

All contributors and users

Made with ❤️ using SwiftUI
