//
//  DateManager.swift
//  MovieBookingApplication
//
//  Created by Brian Suárez Santiago on 28/08/24.
//

import Foundation

final class DateManager {

    // MARK: - Shared Instance
    static let shared = DateManager()

    private let calendar = Calendar.current

    // MARK: - Private Init
    private init() {}

    // MARK: - Methods
    func fetchDates(numberOfDays: Int) -> [Date] {
        let today = Date()
        return (0..<numberOfDays).compactMap { day in
            calendar.date(byAdding: .day, value: day, to: today)
        }
    }

    func formatDate(_ date: Date, format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date)
    }

    func shortWeekday(from date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE"
        return formatter.string(from: date)
    }

    func dayOfMonth(from date: Date) -> Int {
        return calendar.component(.day, from: date)
    }

    func formatTime(_ time: String) -> String? {
        let formatter = DateFormatter()
        formatter.dateFormat = "HHmm"
        
        if let date = formatter.date(from: time) {
            formatter.dateFormat = "HH:mm"
            return formatter.string(from: date)
        }
        return nil
    }
}
