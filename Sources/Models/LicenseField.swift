import Foundation

struct LicenseField {
    init(data: String) {
        code = LicenseFieldCode(rawValue: String(data.prefix(3))) ?? .unknown
        value = String(data.dropFirst(3))
    }
    
    let code: LicenseFieldCode
    let value: String
}
