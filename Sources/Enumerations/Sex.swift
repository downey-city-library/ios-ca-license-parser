import Foundation

public enum Sex: Int {
    
    // MARK: - CASES
    
    case male = 1
    case female = 2
    case notSpecified = 9
    
    // MARK: - PROPERTIES
    
    /// Associated code based on raw value
    var code: Int { rawValue }
    
    /// Textual representation of case
    var label: String {
        switch self {
        case .male: return "Male"
        case .female: return "Female"
        case .notSpecified: return "Not Specified"
        }
    }
}
