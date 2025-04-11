import Foundation

internal struct Header {
    
    // MARK: - INITIALIZATION
    
    init(_ data: String) {
        complianceIndicator = data.at(0)
        dataElementSeparator = data.at(1)
        recordSeparator = data.at(2)
        segmentTerminator = data.at(3)
        fileType = data.at(4, length: 5)
        iin = data.at(9, length: 6)
        aamvaVersionNumber = Int(data.at(15, length: 2)) ?? 0
        jurisdictionVersionNumber = Int(data.at(17, length: 2)) ?? 0
        numberOfEntries = Int(data.at(19, length: 2)) ?? 0
    }
    
    // MARK: - PROPERTIES
    
    /// Compliance Indicator
    /// - Important:
    /// Field: 1 | Bytes (Fixed): 1
    var complianceIndicator: String
    
    /// Data Element Separator
    /// - Important:
    /// Field: 2 | Bytes (Fixed): 1
    var dataElementSeparator: String
    
    /// Record Separator
    /// - Important:
    /// Field: 3 | Bytes (Fixed): 1
    var recordSeparator: String
    
    /// Segment Terminator
    /// - Important:
    /// Field: 4 | Bytes (Fixed): 1
    var segmentTerminator: String
    
    /// File Type
    /// - Important:
    /// Field: 5 | Bytes (Fixed): 5
    var fileType: String
    
    /// Issuer Identification Number (IIN)
    /// - Important:
    /// Field: 6 | Bytes (Fixed): 6
    var iin: String
    
    /// AAMVA Version Number
    /// - Important:
    /// Field: 7 | Bytes (Fixed): 2
    var aamvaVersionNumber: Int
    
    /// Jurisdiction Version Number
    /// - Important:
    /// Field: 8 | Bytes (Fixed): 2
    var jurisdictionVersionNumber: Int
    
    /// Number of Entries
    /// - Important:
    /// Field: 9 | Bytes (Fixed): 2
    var numberOfEntries: Int
    
    /// Total length of header.
    var length: Int = 21
}
