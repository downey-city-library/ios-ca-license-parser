import Foundation

public struct License {
    
    init(_ fields: [LicenseField], header: Header) {
        self.header = header
        
        for field in fields {
            switch field.code {
            case .dca: `class` = field.value
            case .dcb: restrictions = field.value
            case .dcd: endorsements = field.value
            case .dba: expiration = field.value
            case .dcs: name.last.value = field.value
            case .dac: name.first.value = field.value
            case .dad: name.middle.value = field.value
            case .dbd: issued = field.value
            case .dbb: birthdate = field.value
            case .dbc: sex = field.value
            case .day: eyeColor = field.value
            case .dau:
                height.measurement = Int(field.value.components(separatedBy: " ")[0]) ?? 0
                height.unit = field.value.components(separatedBy: " ")[1]
            case .dag: address.street = field.value
            case .dai: address.city = field.value
            case .daj: address.state = field.value
            case .dak: address.zip = String(field.value.dropLast(6))
            case .daq: number = field.value
            case .dcf: id = field.value
            case .dcg: address.country = field.value
            case .dde: name.last.truncation = TruncationCode(from: field.value)
            case .ddf: name.first.truncation = TruncationCode(from: field.value)
            case .ddg: name.middle.truncation = TruncationCode(from: field.value)
            case .dah: address.streetTwo = field.value
            case .daz: hair = field.value
            case .dci: placeOfBirth = field.value
            case .dcj: auditInformation = field.value
            case .dck: inventoryControlNumber = field.value
            case .dbn: aliasFamilyName = field.value
            case .dbg: aliasGivenName = field.value
            case .dbs: aliasSuffix = field.value
            case .dcu: nameSuffix = field.value
            case .dce: weightRange = field.value
            case .dcl: race = field.value
            case .dcm: standardVehicleClassification = field.value
            case .dcn: standardEndorsementCode = field.value
            case .dco: standardRestrictionCode = field.value
            case .dcp: jurisdictionVehicleClassification = field.value
            case .dcq: jurisdictionEndorsementCode = field.value
            case .dcr: jurisdictionRestrictionCode = field.value
            case .dda: complianceType = field.value
            case .ddb: cardRevisionDate = field.value
            case .ddc: hazmatExpiration = field.value
            case .ddd: limitedDurationDocumentIndicator = field.value
            case .daw: weightLB = field.value
            case .dax: weightKG = field.value
            case .ddh: under18Until = field.value
            case .ddi: under19Until = field.value
            case .ddj: under21Until = field.value
            case .ddk: organDonor = field.value
            case .ddl: veteran = field.value
            case .unk: break
            }
        }
    }
    
    // MARK: - HEADER
    internal var header: Header
    
    // MARK: - MANDATORY DATA ELEMENTS
    
    /**
    Jurisdiction-specific vehicle class
    
     # Notes: #
     - Jurisdiction-specific vehicle class / group code, designating the type of vehicle the cardholder has privilege to drive.
     - Element ID: DCA
     - Card Type: DL
     - Field Length: Variable (6 characters max)
     - Character Type: Alpha, Numeric, Special
     */
    public var `class`: String = ""
    
    /**
     Jurisdiction-specific restriction codes
    
     # Notes: #
     - Jurisdiction-specific codes that represent restrictions to driving privileges (such as airbrakes, automatic transmission, daylight only, etc.).
     - Element ID: DCB
     - Card Type: DL
     - Field Length: Variable (12 characters max)
     - Character Type: Alpha, Numeric, Special
     */
    public var restrictions: String = ""
    
    /**
     Jurisdiction-specific endorsement codes
    
     # Notes: #
     - Jurisdiction-specific codes that represent additional privileges granted to the cardholder beyond the vehicle class (such as transportation of passengers, hazardous materials, operation of motorcycles, etc.).
     - Element ID: DCD
     - Card Type: DL
     - Field Length: Variable (5 characters max)
     - Character Type: Alpha, Numeric, Special
     */
    public var endorsements: String = ""
    
    /**
     Document Expiration Date
    
     # Notes: #
     - Date on which the driving and identification privileges granted by the document are no longer valid. (MMDDCCYY for U.S., CCYYMMDD for Canada)
     - Element ID: DBA
     - Card Type: Both (DL, ID)
     - Field Length: Fixed (8 characters)
     - Character Type: Numeric
     */
    public var expiration: String = ""
    
    public var name = Name()
    
    /**
     Document Issue Date
    
     # Notes: #
     - Date on which the document was issued. (MMDDCCYY for U.S., CCYYMMDD for Canada)
     - Element ID: DBD
     - Card Type: Both (DL, ID)
     - Field Length: Fixed (8 characters)
     - Character Type: Numeric
     */
    public var issued: String = ""
    
    /**
     Date of Birth
    
     # Notes: #
     - Date on which the cardholder was born. (MMDDCCYY for U.S., CCYYMMDD for Canada)
     - Element ID: DBB
     - Card Type: Both (DL, ID)
     - Field Length: Fixed (8 characters)
     - Character Type: Numeric
     */
    public var birthdate = ""
    
    /**
     Physical Description - Sex
    
     # Notes: #
     - Gender of the cardholder. 1 = male, 2 = female, 9 = not specified.
     - Element ID: DBC
     - Card Type: Both (DL, ID)
     - Field Length: Fixed (1 character)
     - Character Type: Numeric
     */
    public var sex = ""
    
    /**
     Physical Description - Eye Color
    
     # Notes: #
     - Color of cardholder's eyes. (ANSI D-20 codes)
     - Element ID: DAY
     - Card Type: Both (DL, ID)
     - Field Length: Fixed (3 characters)
     - Character Type: Alpha
     */
    public var eyeColor = ""
    
    public var height = Height()
    
    public var address = Address()
    
    /**
     Customer ID Number
    
     # Notes: #
     - The number assigned or calculated by the issuing authority.
     - Element ID: DAQ
     - Card Type: Both (DL, ID)
     - Field Length: Variable (25 characters max)
     - Character Type: Alpha, Numeric, Special
     */
    public var number = ""
    
    /**
     Document Discriminator
    
     # Notes: #
     - Number must uniquely identify a particular document issued to that customer from others that may have been issued in the past. This number may serve multiple purposes of document discrimination, audit information number, and/or inventory control.
     - Element ID: DCF
     - Card Type: Both (DL, ID)
     - Field Length: Variable (25 characters max)
     - Character Type: Alpha, Numeric, Special
     */
    public var id = ""
    
    
    // MARK: - OPTIONAL DATA ELEMENTS
    
    public var hair: String?
    public var placeOfBirth: String?
    public var auditInformation: String?
    public var inventoryControlNumber: String?
    public var aliasFamilyName: String?
    public var aliasGivenName: String?
    public var aliasSuffix: String?
    public var nameSuffix: String?
    public var weightRange: String?
    public var race: String?
    public var standardVehicleClassification: String?
    public var standardEndorsementCode: String?
    public var standardRestrictionCode: String?
    public var jurisdictionVehicleClassification: String?
    public var jurisdictionEndorsementCode: String?
    public var jurisdictionRestrictionCode: String?
    public var complianceType: String?
    public var cardRevisionDate: String?
    public var hazmatExpiration: String?
    public var limitedDurationDocumentIndicator: String?
    public var weightLB: String?
    public var weightKG: String?
    public var under18Until: String?
    public var under19Until: String?
    public var under21Until: String?
    public var organDonor: String?
    public var veteran: String?
}

extension License {
    
    public var debugDescription: String {
        """
        
        HEADER ---------------------------------------------------
        
        \(header.complianceIndicator) | Compliance Indicator
        
        \(header.dataElementSeparator.debugDescription) | Line Feed Character
        \(header.recordSeparator.debugDescription) | Record Separator Character
        \(header.segmentTerminator.debugDescription) | Carriage Return Character
        
        \(header.fileType) | File Type
        \(header.iin) | Issuer Identification Number
        \(header.aamvaVersionNumber) | AAMVA Version Number
        \(header.jurisdictionVersionNumber) | Jurisdication Version Number
        \(header.numberOfEntries) | Number of Entries
        
        MANDATORY DATA ELEMENTS ----------------------------------
        
        DCA | \(`class`) | Jurisdiction-Specific Vehicle Class
        DCB | \(restrictions) | Jurisdiction-Specific Restriction Codes
        DCD | \(endorsements) | Jurisdiction-Specific Endorsement Codes
        DBA | \(expiration) | Document Expiration Date
        DCS | \(name.last.value) | Customer Family Name
        DAC | \(name.first.value) | Customer First Name
        DAD | \(name.middle.value) | Customer Middle Name(s)
        DBD | \(issued) | Document Issue Date
        DBB | \(birthdate) | Date of Birth
        DBC | \(sex) | Physical Description - Sex
        DAY | \(eyeColor) | Physical Description - Eye Color
        DAU | \(height.measurement) \(height.unit) | Physical Description - Height
        DAG | \(address.street) | Address - Street 1
        DAI | \(address.city) | Address - City
        DAJ | \(address.state) | Address _ Jurisdiction Code
        DAK | \(address.zip) | Address - Postal Code
        DAQ | \(number) | Customer ID Number
        DCF | \(id) | Document Discriminator
        DCG | \(address.country) | County Identification
        DDE | \(name.last.truncation.code) | Family Name Truncation
        DDF | \(name.first.truncation.code) | First Name Truncation
        DDG | \(name.middle.truncation.code) | Middle Name Truncation
        
        OPTIONAL DATA ELEMENTS ----------------------------------
        
        DAH | \(address.streetTwo as Any) | Address - Street 2
        DAZ | \(hair as Any) | Hair Color
        DCI | \(placeOfBirth as Any) | Place of Birth
        DCJ | \(auditInformation as Any) | Audit Information
        DCK | \(inventoryControlNumber as Any) | Inventory Control Number
        DBN | \(aliasFamilyName as Any) | Alias / AKA Family Name
        DBG | \(aliasGivenName as Any) | Alias / AKA Given Name
        DBS | \(aliasSuffix as Any) | Alias / AKA Suffix Name
        DCU | \(nameSuffix as Any) | Name Suffix
        DCE | \(weightRange as Any) | Physical Description - Weight Range
        DCL | \(race as Any) | Race / Ethnicity
        DCM | \(standardVehicleClassification as Any) | Standard Vehicle Classification
        DCN | \(standardEndorsementCode as Any) | Standard Endorsement Code
        DCO | \(standardRestrictionCode as Any) | Standard Restriction Code
        DCP | \(jurisdictionVehicleClassification as Any) | Jurisdiction-Specific Vehicle Classification Description
        DCQ | \(jurisdictionEndorsementCode as Any) | Jurisdiction-Specific Endorsement Code Description
        DCR | \(jurisdictionRestrictionCode as Any) | Jurisdiction-Specific Restriction Code Description
        DDA | \(complianceType as Any) | Compliance Type
        DDB | \(cardRevisionDate as Any) | Card Revision Date
        DDC | \(hazmatExpiration as Any) | HAZMAT Endorssement Expiration Date
        DDD | \(limitedDurationDocumentIndicator as Any) | Limited Duration Document Indicator
        DAW | \(weightLB as Any) | Weight (pounds)
        DAX | \(weightKG as Any) | Weight (kilograms)
        DDH | \(under18Until as Any) | Under 18 Until
        DDI | \(under19Until as Any) | Under 19 Until
        DDJ | \(under21Until as Any) | Under 21 Until
        DDK | \(organDonor as Any) | Organ Donor Indicator
        DDL | \(veteran as Any) | Veteran Indicator
        """
    }
}
