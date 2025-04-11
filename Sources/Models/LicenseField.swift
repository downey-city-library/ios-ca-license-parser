import Foundation

struct LicenseField {
    
    // MARK: - INITIALIZATION
    
    init(data: String) {
        code = LicenseFieldCode(rawValue: String(data.prefix(3))) ?? .unknown
        value = String(data.dropFirst(3))
    }
    
    // MARK: - PROPERTIES
    
    /// Field Code
    let code: LicenseFieldCode
    
    /// Field Data
    let value: String
}
