================================================================================
                    TODO-LIST + CALENDAR APP
                    SwiftUI iOS Application
================================================================================

================================================================================
                         ENGLISH VERSION
================================================================================

# TodoList + Calendar App

A simple and elegant iOS application built with SwiftUI that combines a task 
manager with a calendar view. Features dark/light theme support and persistent 
data storage.

## ✨ Features

- ✅ Task Management - Create, complete, and delete tasks
- 📅 Calendar Integration - View tasks for specific dates
- 🌓 Dark/Light Theme - Toggle between dark and light modes
- 💾 Persistent Storage - Tasks automatically saved locally
- ⏰ Time Tracking - Each task includes time of day
- 📝 Notes Support - Add additional details to tasks
- 📱 iOS Native - Built with SwiftUI for smooth performance

## 🚀 Technologies

- SwiftUI - Modern declarative UI framework
- Combine - Reactive programming
- UserDefaults - Local data persistence
- MVVM Architecture - Clean separation of concerns

## 📱 Requirements

- iOS 15.0+
- Xcode 13.0+
- Swift 5.5+

## 🏗️ Architecture

The app follows the MVVM (Model-View-ViewModel) architecture pattern:

View (SwiftUI) → ViewModel (TodoManager) → Model (Task)

- Model: Task struct with Codable support
- ViewModel: TodoManager class with ObservableObject
- View: SwiftUI views with declarative UI

## 🎯 Features Overview

### Task Management
- Add tasks with title, notes, and time
- Mark tasks as complete/incomplete
- Swipe to delete tasks
- View tasks organized by date

### Calendar View
- Graphical date picker
- Tasks displayed for selected date
- Quick date navigation

### Theme Support
- System-like dark/light mode
- Persistent theme preference
- Smooth transitions

## 💡 Installation

1. Clone the repository
   git clone https://github.com/yourusername/todo-calendar-app.git

2. Open the project in Xcode
   cd todo-calendar-app
   open TodoApp.xcodeproj

3. Build and run (⌘ + R)

## 📁 Project Structure

TodoApp/
├── App.swift                 # App entry point
├── ContentView.swift         # Main view with calendar and list
├── AddTodoView.swift         # Add new task view
├── TodoManager.swift         # ViewModel with business logic
├── Task.swift               # Data model
└── Assets.xcassets          # App assets

## 🔧 Configuration

No additional configuration needed. The app uses UserDefaults for local storage.

## 🤝 Contributing

Contributions are welcome! Feel free to submit issues and pull requests.

## 📄 License

MIT License - feel free to use this project for learning or commercial purposes.

## 📧 Contact

Your Name - your.email@example.com
Project Link: https://github.com/yourusername/todo-calendar-app


================================================================================
                         RUSSIAN VERSION (РУССКАЯ ВЕРСИЯ)
================================================================================

# Приложение To-Do List + Календарь

Простое и элегантное iOS-приложение на SwiftUI, объединяющее менеджер задач 
с календарем. Поддерживает темную и светлую темы, а также локальное сохранение 
данных.

## ✨ Возможности

- ✅ Управление задачами - Создание, выполнение и удаление задач
- 📅 Интеграция с календарем - Просмотр задач по датам
- 🌓 Темная/Светлая тема - Переключение между темами оформления
- 💾 Локальное хранение - Задачи автоматически сохраняются на устройстве
- ⏰ Время выполнения - У каждой задачи есть время
- 📝 Заметки - Добавление дополнительной информации к задачам
- 📱 Нативный интерфейс - Построен на SwiftUI для плавной работы

## 🚀 Технологии

- SwiftUI - Современный декларативный UI-фреймворк
- Combine - Реактивное программирование
- UserDefaults - Локальное хранение данных
- MVVM Архитектура - Чистое разделение ответственности

## 📱 Требования

- iOS 15.0+
- Xcode 13.0+
- Swift 5.5+

## 🏗️ Архитектура

Приложение построено на архитектуре MVVM (Model-View-ViewModel):

View (SwiftUI) → ViewModel (TodoManager) → Model (Task)

- Model: Структура Task с поддержкой Codable
- ViewModel: Класс TodoManager с ObservableObject
- View: SwiftUI-представления с декларативным UI

## 🎯 Обзор функционала

### Управление задачами
- Добавление задач с названием, заметкой и временем
- Отметка задач как выполненных/невыполненных
- Удаление задач свайпом
- Просмотр задач по датам

### Календарь
- Графический выбор даты
- Отображение задач на выбранный день
- Быстрая навигация по датам

### Темы оформления
- Темная/светлая тема как в системе
- Сохранение выбранной темы
- Плавные переходы между темами

## 💡 Установка

1. Клонируйте репозиторий
   git clone https://github.com/yourusername/todo-calendar-app.git

2. Откройте проект в Xcode
   cd todo-calendar-app
   open TodoApp.xcodeproj

3. Соберите и запустите (⌘ + R)

## 📁 Структура проекта

TodoApp/
├── App.swift                 # Точка входа в приложение
├── ContentView.swift         # Главный экран с календарем и списком
├── AddTodoView.swift         # Экран добавления задачи
├── TodoManager.swift         # ViewModel с бизнес-логикой
├── Task.swift               # Модель данных
└── Assets.xcassets          # Ресурсы приложения

## 🔧 Настройка

Дополнительная настройка не требуется. Приложение использует UserDefaults 
для локального хранения.

## 🤝 Вклад в проект

Приветствуются любые вклады! Создавайте issues и pull requests.

## 📄 Лицензия

MIT License - можете использовать этот проект для обучения или в коммерческих 
целях.

## 📧 Контакты

Ваше Имя - your.email@example.com
Ссылка на проект: https://github.com/yourusername/todo-calendar-app


================================================================================
                         SCREENSHOTS / СКРИНШОТЫ
================================================================================

Light Theme / Светлая тема          Dark Theme / Темная тема
----------------------------        ----------------------------
[Add your app screenshots here]     [Add your app screenshots here]
📱 Screenshot 1                     📱 Screenshot 2


================================================================================
                         SUPPORT / ПОДДЕРЖКА
================================================================================

⭐ If you like this project, please give it a star on GitHub!
⭐ Если вам понравился проект, поставьте звезду на GitHub!


================================================================================
                         ROADMAP / ПЛАНЫ ПО РАЗВИТИЮ
================================================================================

- [ ] Task notifications / Уведомления о задачах
- [ ] iCloud sync / Синхронизация с iCloud
- [ ] Categories and tags / Категории и теги
- [ ] Task search / Поиск задач
- [ ] Export/Import data / Экспорт/импорт данных
- [ ] Lock screen widgets / Виджеты на экран блокировки
- [ ] Siri shortcuts / Команды для Siri
- [ ] Apple Watch support / Поддержка Apple Watch


================================================================================
                         CODE EXAMPLES / ПРИМЕРЫ КОДА
================================================================================

// Task Model / Модель задачи
struct Task: Identifiable, Codable {
    let id: UUID
    var title: String
    var note: String?
    var date: Date
    var isCompleted: Bool
}

// TodoManager - ViewModel
class TodoManager: ObservableObject {
    @Published var tasks: [Task] = []
    
    func addTask(title: String, note: String?, date: Date)
    func toggleTask(_ task: Task)
    func deleteTask(_ task: Task)
}

// Main View / Главное представление
struct ContentView: View {
    @StateObject private var todoManager = TodoManager()
    @State private var selectedDate = Date()
    @AppStorage("isDarkMode") private var isDarkMode = false
}


================================================================================
                    MADE WITH ❤️ USING SWIFTUI
================================================================================

© 2026 Your Name. All rights reserved.
