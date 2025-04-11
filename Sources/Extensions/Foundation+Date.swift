import Foundation

extension Date {
    
    // MARK: - PROPERTIES
    
    /// Today's date (without time information).
    static var today: Date {
        Calendar.current.date(from: Calendar.current.dateComponents([.year, .month, .day], from: Date())) ?? Date()
    }
}
