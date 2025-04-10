import Foundation

internal struct Header {
    
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
    
    var complianceIndicator: String
    
    var dataElementSeparator: String
    var recordSeparator: String
    var segmentTerminator: String
    
    var fileType: String
    var iin: String
    var aamvaVersionNumber: Int
    var jurisdictionVersionNumber: Int
    var numberOfEntries: Int
    
    var length: Int = 21
}
