//
//  LicenseParser.swift
//  CALicense
//
//  Created by Andrew Despres on 4/2/19.
//  Copyright © 2019 Downey City Library. All rights reserved.
//

import Foundation

public class LicenseParser {
    public static let shared = LicenseParser()
    
    public enum ScannerType: Int {
        case as0240d, ds457, kdc300i
    }
    
    public var scannerType: ScannerType = .ds457
    
    public class func parse(_ data: String) -> License {
        
        var delimiter = ""
        switch shared.scannerType {
        case .as0240d: delimiter = "\n"
        case .ds457: delimiter = "0010"
        case .kdc300i: delimiter = "010"
        }
        
        let fields = data.components(separatedBy: delimiter)
        var license = License()
        
        for field in fields {
            switch field {
            case let str where str.contains("DCS"): license.lastname = trimField(field)
            case let str where str.contains("DAC"): license.firstname = trimField(field)
            case let str where str.contains("DAD"): license.middlename = trimField(field)
            case let str where str.contains("DBB"): license.birthdate = trimField(field)
            case let str where str.contains("DBC"): license.sex = trimField(field)
            case let str where str.contains("DAG"): license.address = trimField(field)
            case let str where str.contains("DAI"): license.city = trimField(field)
            case let str where str.contains("DAJ"): license.state = trimField(field)
            case let str where str.contains("DAK"):
                let startIndex = str.index(str.startIndex, offsetBy: 3)
                let endIndex = str.index(str.startIndex, offsetBy: 8)
                license.zip = String(str[startIndex..<endIndex])
            case let str where str.contains("DAQ"):
                let startIndex = str.range(of: "DAQ")
                license.number = String(str[startIndex!.upperBound..<str.endIndex])
            default: break
            }
        }
        
        return license
    }
    
    internal class func trimField(_ field: String) -> String {
        let trimmedField = String(field[field.index(field.startIndex, offsetBy: 3)..<field.endIndex])
        return trimmedField
    }
}
