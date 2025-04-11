public enum Sex: Int {
    case male = 1
    case female = 2
    case notSpecified = 9
    
    var code: Int { rawValue }
    var label: String {
        switch self {
        case .male: return "Male"
        case .female: return "Female"
        case .notSpecified: return "Not Specified"
        }
    }
}
