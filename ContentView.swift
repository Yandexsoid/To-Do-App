// ContentView.swift
import SwiftUI

struct ContentView: View {
    @StateObject private var todoManager = TodoManager()
    @State private var selectedDate = Date()
    @State private var showingAddTodo = false
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        NavigationView {
            VStack {
                // Переключатель темы
                HStack {
                    Spacer()
                    Toggle(isOn: $isDarkMode) {
                        Label(isDarkMode ? "Темная" : "Светлая", 
                              systemImage: isDarkMode ? "moon.fill" : "sun.max.fill")
                    }
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                    .frame(width: 150)
                }
                .padding(.horizontal)
                
                // Календарь
                DatePicker("Выберите дату", selection: $selectedDate, displayedComponents: .date)
                    .datePickerStyle(.graphical)
                    .padding()
                    .background(Color(.systemBackground))
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                // Список задач
                List {
                    ForEach(todoManager.tasksForDate(selectedDate)) { task in
                        HStack {
                            Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                                .foregroundColor(task.isCompleted ? .green : .gray)
                                .onTapGesture {
                                    todoManager.toggleTask(task)
                                }
                            
                            VStack(alignment: .leading) {
                                Text(task.title)
                                    .strikethrough(task.isCompleted)
                                    .foregroundColor(task.isCompleted ? .gray : .primary)
                                
                                if let note = task.note, !note.isEmpty {
                                    Text(note)
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                            }
                            
                            Spacer()
                            
                            Text(task.date, style: .time)
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        .swipeActions {
                            Button(role: .destructive) {
                                todoManager.deleteTask(task)
                            } label: {
                                Label("Удалить", systemImage: "trash")
                            }
                        }
                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Мои задачи")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showingAddTodo = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showingAddTodo) {
                AddTodoView(todoManager: todoManager, selectedDate: selectedDate)
            }
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
