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
    public var `class`: String { raw.dca }
    
    /**
     Jurisdiction-specific restriction codes
     
     # Notes: #
     - Jurisdiction-specific codes that represent restrictions to driving privileges (such as airbrakes, automatic transmission, daylight only, etc.).
     - Element ID: DCB
     - Card Type: DL
     - Field Length: Variable (12 characters max)
     - Character Type: Alpha, Numeric, Special
     */
    public var restrictions: String { raw.dcb }
    
    /**
     Jurisdiction-specific endorsement codes
     
     # Notes: #
     - Jurisdiction-specific codes that represent additional privileges granted to the cardholder beyond the vehicle class (such as transportation of passengers, hazardous materials, operation of motorcycles, etc.).
     - Element ID: DCD
     - Card Type: DL
     - Field Length: Variable (5 characters max)
     - Character Type: Alpha, Numeric, Special
     */
    public var endorsements: String { raw.dcd }
    
    /**
     Document Expiration Date
     
     # Notes: #
     - Date on which the driving and identification privileges granted by the document are no longer valid. (MMDDCCYY for U.S., CCYYMMDD for Canada)
     - Element ID: DBA
     - Card Type: Both (DL, ID)
     - Field Length: Fixed (8 characters)
     - Character Type: Numeric
     */
    public var expiration: Date { raw.dba.asDate ?? Date.today }
    public var isExpired: Bool { expiration < Date.today }
    
    public var name: Name {
        Name(
            first: .init(value: raw.dac.capitalized, alias: raw.dbg?.capitalized, isTruncated: raw.ddf == "T"),
            middle: .init(values: raw.dad.components(separatedBy: "").map { $0.capitalized }, isTruncated: raw.ddg == "T"),
            last: .init(value: raw.dcs.capitalized, alias: raw.dbn?.capitalized, isTruncated: raw.dde == "T"),
            suffix: .init(value: raw.dcu?.capitalized, alias: raw.dbs?.capitalized)
        )
    }
    
    /**
     Document Issue Date
     
     # Notes: #
     - Date on which the document was issued. (MMDDCCYY for U.S., CCYYMMDD for Canada)
     - Element ID: DBD
     - Card Type: Both (DL, ID)
     - Field Length: Fixed (8 characters)
     - Character Type: Numeric
     */
    public var issued: Date { raw.dbd.asDate ?? Date.today }
    
    /**
     Date of Birth
    
     # Notes: #
     - Date on which the cardholder was born. (MMDDCCYY for U.S., CCYYMMDD for Canada)
     - Element ID: DBB
     - Card Type: Both (DL, ID)
     - Field Length: Fixed (8 characters)
     - Character Type: Numeric
     */
    public var birthdate: Date { raw.dbb.asDate ?? Date.today }
    
    public var description: Description {
        Description(
            sex: raw.dbc,
            eyes: raw.day,
            height: raw.dau,
            weight: Description.Weight(
                range: raw.dce,
                pounds: raw.daw,
                kilograms: raw.dax),
            hair: raw.daz,
            race: raw.dcl
        )
    }
    
    public var address: Address {
        Address(
            street: raw.dag.capitalized,
            streetTwo: raw.dah?.capitalized,
            city: raw.dai.capitalized,
            state: raw.daj,
            postalCode: raw.dak, // TODO: Postal Code
            country: raw.dcg // TODO: Country Code
        )
    }
    
    /**
     Customer ID Number
    
     # Notes: #
     - The number assigned or calculated by the issuing authority.
     - Element ID: DAQ
     - Card Type: Both (DL, ID)
     - Field Length: Variable (25 characters max)
     - Character Type: Alpha, Numeric, Special
     */
    public var id: String { raw.daq }
    
    /**
     Document Discriminator
    
     # Notes: #
     - Number must uniquely identify a particular document issued to that customer from others that may have been issued in the past. This number may serve multiple purposes of document discrimination, audit information number, and/or inventory control.
     - Element ID: DCF
     - Card Type: Both (DL, ID)
     - Field Length: Variable (25 characters max)
     - Character Type: Alpha, Numeric, Special
     */
    public var document: String { raw.dcf }
    
    
    // MARK: - OPTIONAL DATA ELEMENTS
    
    public var birthplace: String? { raw.dci }
    public var audit: String? { raw.dcj }
    public var controlNumber: String? { raw.dck }
    public var isCompliant: Bool { raw.dda == "F" }
    public var revised: Date? { raw.ddb?.asDate }
    public var hazmat: Date? { raw.ddc?.asDate }
    public var isOrganDonor: Bool { raw.ddk == "1" }
    public var isVeteran: Bool { raw.ddl == "1" }
    
    public var standard: Standard {
        Standard(
            vehicle: raw.dcm,
            codes: Standard.Codes(endorsement: raw.dcn, restriction: raw.dco)
        )
    }
    
    public var jurisdiction: Standard {
        Standard(
            vehicle: raw.dcp,
            codes: Standard.Codes(endorsement: raw.dcq, restriction: raw.dcr)
        )
    }
    
    public var provisional: Provisional {
        Provisional(
            isProvisional: raw.ddd == "1",
            under18: raw.ddh?.asDate,
            under19: raw.ddi?.asDate,
            under21: raw.ddj?.asDate
        )
    }
    
    // MARK: - RAW VALUES
    
    public var raw: Raw
}
