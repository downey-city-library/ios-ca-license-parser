import Foundation

public struct LicenseParser {
    
    public static func parse(_ data: String) -> License {
        let header = Header(data)
        var subfiles: [Subfile] = []
        
        for _ in 1...header.numberOfEntries {
            let subfile = Subfile(data, offset: subfiles.isEmpty ? header.length : subfiles.lastIndex)
            subfiles.append(subfile)
        }
        
        // The license should be the first of the subfiles.
        // All other subfiles are then added without processing to the License.Raw object.
        let fields = subfiles.first?.value.components(separatedBy: header.dataElementSeparator).map {
            LicenseField(data: $0)
        } ?? []
        
        var license = License(header: header, data: fields)
        
        if subfiles.count > 1 {
            license.raw.subfiles = Array(subfiles[1..<subfiles.count])
        }
        
        return license
    }
}
