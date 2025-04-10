import Foundation

public struct License {
    
    // MARK: - INITIALIZATION
    
    init(header: Header, data: [LicenseField]) {
        self.raw = Raw(header: header, data: data)
    }
    
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
    
    // MARK: - RAW VALUES
    
    public var raw: Raw
}
