// AddTodoView.swift
import SwiftUI

struct AddTodoView: View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var todoManager: TodoManager
    let selectedDate: Date
    
    @State private var title = ""
    @State private var note = ""
    @State private var date = Date()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Название")) {
                    TextField("Введите задачу", text: $title)
                }
                
                Section(header: Text("Заметка")) {
                    TextField("Дополнительная информация", text: $note)
                }
                
                Section(header: Text("Дата и время")) {
                    DatePicker("Дата", selection: $date, displayedComponents: [.date, .hourAndMinute])
                }
            }
            .navigationTitle("Новая задача")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Отмена") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Сохранить") {
                        todoManager.addTask(
                            title: title,
                            note: note.isEmpty ? nil : note,
                            date: date
                        )
                        dismiss()
                    }
                    .disabled(title.isEmpty)
                }
            }
            .onAppear {
                date = selectedDate
            }
        }
    }
}
