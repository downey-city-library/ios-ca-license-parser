import Foundation

public struct LicenseParser {
    
    // MARK: - STATIC METHODS
    
    public static func parse(_ data: String) -> License {
        
        // obtain the document header and subfile(s)
        let header = Header(data)
        var subfiles: [Subfile] = []
        
        for _ in 1...header.numberOfEntries {
            let subfile = Subfile(data, offset: subfiles.isEmpty ? header.length : subfiles.lastIndex)
            subfiles.append(subfile)
        }
        
        // The license should be the first of the document subfiles.
        // All jurisdiction-specific subfiles are added without processing to the License.Raw object.
        
        // Obtain data fields for license.
        let fields = subfiles.first?.value.components(separatedBy: header.dataElementSeparator).map {
            LicenseField(data: $0)
        } ?? []
        
        // Parse data fields and convert into License object.
        var license = License(header: header, data: fields)
        
        // Add jurisdiction-specific subfiles to the License.Raw object.
        if subfiles.count > 1 {
            license.raw.subfiles = Array(subfiles[1..<subfiles.count])
        }
        
        return license
    }
}
