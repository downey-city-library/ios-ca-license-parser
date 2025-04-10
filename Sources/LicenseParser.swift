import Foundation

public class LicenseParser {
    
    public static let shared = LicenseParser()
    
    public enum ScannerType {
        case as0240d, ds457, kdc300i, other(String)
    }
    
    public var scannerType: ScannerType = .ds457
    
    public class func parse(_ data: String) -> License {
        let headerData = data
        print(headerData.debugDescription, "\n\n")
        let header = Header(headerData)
        
        var subfiles: [Subfile] = []
        
        for index in 1...header.numberOfEntries {
            
            let subfile = Subfile(data, offset: subfiles.isEmpty ? header.length : subfiles.lastIndex)
            subfiles.append(subfile)
            
            print(subfile)
            print("subfiles.lastIndex", subfiles.isEmpty ? header.length : subfiles.lastIndex, "out of", data.count, "\n")
        }
        
        var delimiter = ""
        switch shared.scannerType {
        case .as0240d: delimiter = "\n"
        case .ds457: delimiter = "0010"
        case .kdc300i: delimiter = "010"
        case .other(let customDelimiter): delimiter = customDelimiter
        }
        
        let fields = subfiles.first?.value.components(separatedBy: header.dataElementSeparator ?? delimiter).map { Field(code: LicenseField(rawValue: String($0.prefix(3))) ?? .unk, value: trimField($0)) } ?? []
        return License(fields, header: header)
        
//        for field in fields {
//            switch field {
//            case let str where str.prefix(3) == "DCA": license.class = trimField(field)
//            case let str where str.prefix(3) == "DCB": license.restrictions = trimField(field)
//            case let str where str.prefix(3) == "DCD": license.endorsements = trimField(field)
//            case let str where str.prefix(3) == "DBA": license.expiration = trimField(field)
//            case let str where str.prefix(3) == "DCS": license.name.last.value = trimField(field)
//            case let str where str.prefix(3) == "DAC": license.name.first.value = trimField(field)
//            case let str where str.prefix(3) == "DAD": license.name.middle.value = trimField(field)
//            case let str where str.prefix(3) == "DBD": license.issued = trimField(field)
//            case let str where str.prefix(3) == "DBB": license.birthdate = trimField(field)
//            case let str where str.prefix(3) == "DBC": license.sex = trimField(field)
//            case let str where str.prefix(3) == "DAY": license.eyeColor = trimField(field)
//            case let str where str.prefix(3) == "DAU":
//                license.height.measurement = Int(trimField(field).components(separatedBy: " ")[0]) ?? 0
//                license.height.unit = trimField(field).components(separatedBy: " ")[1]
//            case let str where str.prefix(3) == "DAG": license.address.street = trimField(field)
//            case let str where str.prefix(3) == "DAI": license.address.city = trimField(field)
//            case let str where str.prefix(3) == "DAJ": license.address.state = trimField(field)
//            case let str where str.prefix(3) == "DAK": license.address.zip = String(trimField(field).dropLast(6))
//            case let str where str.contains("DAQ"):
//                let startIndex = str.range(of: "DAQ")
//                license.number = String(str[startIndex!.upperBound..<str.endIndex])
//            case let str where str.prefix(3) == "DCF": license.id = trimField(field)
//            case let str where str.prefix(3) == "DCG": license.address.country = trimField(field)
//                
//            case let str where str.prefix(3) == "DDE": license.name.last.truncation = License.Name.Part.TruncationCode(rawValue: trimField(field)) ?? .unknown
//            case let str where str.prefix(3) == "DDF": license.name.first.truncation = License.Name.Part.TruncationCode(rawValue: trimField(field)) ?? .unknown
//            case let str where str.prefix(3) == "DDG": license.name.middle.truncation = License.Name.Part.TruncationCode(rawValue: trimField(field)) ?? .unknown
//            default: break
//            }
//        }
        
//        return license
    }
    
    internal class func trimField(_ field: String) -> String {
        String(field.dropFirst(3))
    }
}

struct Field {
    let code: LicenseField
    let value: String
}
