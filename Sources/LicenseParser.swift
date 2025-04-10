import Foundation

public struct LicenseParser {
    
    public static func parse(_ data: String) -> License {
        let headerData = data
        print(headerData.debugDescription, "\n\n")
        let header = Header(headerData)
        
        var subfiles: [Subfile] = []
        
        for _ in 1...header.numberOfEntries {
            
            let subfile = Subfile(data, offset: subfiles.isEmpty ? header.length : subfiles.lastIndex)
            subfiles.append(subfile)
            
            print(subfile)
            print("subfiles.lastIndex", subfiles.isEmpty ? header.length : subfiles.lastIndex, "out of", data.count, "\n")
        }
        
        let fields = subfiles.first?.value.components(separatedBy: header.dataElementSeparator).map { Field(code: LicenseField(rawValue: String($0.prefix(3))) ?? .unk, value: trimField($0)) } ?? []
        return License(fields, header: header)
    }
    
    internal static func trimField(_ field: String) -> String {
        String(field.dropFirst(3))
    }
}

struct Field {
    let code: LicenseField
    let value: String
}
