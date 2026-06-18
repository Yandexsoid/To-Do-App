// Task.swift
import Foundation

struct Task: Identifiable, Codable {
    let id: UUID
    var title: String
    var note: String?
    var date: Date
    var isCompleted: Bool
}
