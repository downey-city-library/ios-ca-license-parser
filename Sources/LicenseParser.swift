import Foundation

public struct LicenseParser {
    
    public static func parse(_ data: String) -> License {
        let headerData = data
        let header = Header(headerData)
        
        var subfiles: [Subfile] = []
        
        for _ in 1...header.numberOfEntries {
            
            let subfile = Subfile(data, offset: subfiles.isEmpty ? header.length : subfiles.lastIndex)
            subfiles.append(subfile)
        }
        
        let fields = subfiles.first?.value.components(separatedBy: header.dataElementSeparator).map { LicenseField(code: LicenseFieldCode(rawValue: String($0.prefix(3))) ?? .unk, value: trimField($0)) } ?? []
        
        return License(header: header, data: fields)
    }
    
    internal static func trimField(_ field: String) -> String {
        String(field.dropFirst(3)).trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
