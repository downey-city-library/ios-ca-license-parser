import Foundation

public struct License {
    
    // MARK: - INITIALIZATION
    
    init(header: Header, data: [LicenseField]) {
        self.raw = Raw(header: header, data: data)
    }
    
    // MARK: - MANDATORY DATA ELEMENTS
    
    /// Jurisdiction-specific vehicle class
    public var `class`: String { raw.dca }
    
    /// Jurisdiction-specific restriction codes
    public var restrictions: String { raw.dcb }
    
    /// Jurisdiction-specific endorsement codes
    public var endorsements: String { raw.dcd }
    
    /// Document Expiration Date
    public var expiration: Date { raw.dba.asDate ?? Date.today }
    
    /// Is the Document Expired?
    public var isExpired: Bool { expiration < Date.today }
    
    /// Customer Name
    public var name: Name {
        Name(
            first: .init(
                value: raw.dac.capitalized,
                alias: raw.dbg?.capitalized,
                isTruncated: raw.ddf == "T"
            ),
            middle: .init(
                values: raw.dad.components(separatedBy: "").map { $0.capitalized },
                isTruncated: raw.ddg == "T"
            ),
            last: .init(
                value: raw.dcs.capitalized,
                alias: raw.dbn?.capitalized,
                isTruncated: raw.dde == "T"
            ),
            suffix: .init(
                value: raw.dcu?.capitalized,
                alias: raw.dbs?.capitalized
            )
        )
    }
    
    /// Document Issue Date
    public var issued: Date { raw.dbd.asDate ?? Date.today }
    
    /// Date of Birth
    public var birthdate: Date { raw.dbb.asDate ?? Date.today }
    
    /// Physical Description
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
    
    /// Address
    public var address: Address {
        Address(
            street: raw.dag.capitalized,
            streetTwo: raw.dah?.capitalized,
            city: raw.dai.capitalized,
            state: raw.daj,
            postalCode: raw.dak,
            country: raw.dcg
        )
    }
    
    /// Customer ID Number
    public var id: String { raw.daq }
    
    /// Document Discriminator
    public var document: String { raw.dcf }
    
    
    // MARK: - OPTIONAL DATA ELEMENTS
    
    /// Place of Birth
    public var birthplace: String? { raw.dci }
    
    /// Audit Information
    public var audit: String? { raw.dcj }
    
    /// Inventory Control Number
    public var controlNumber: String? { raw.dck }
    
    /// Standard Vehical Classifications and Codes
    public var standard: Standard {
        Standard(
            vehicle: raw.dcm,
            codes: Standard.Codes(endorsement: raw.dcn, restriction: raw.dco)
        )
    }
    
    /// Jurisdiction-Specific Descriptions
    public var jurisdiction: Standard {
        Standard(
            vehicle: raw.dcp,
            codes: Standard.Codes(endorsement: raw.dcq, restriction: raw.dcr)
        )
    }
    
    /// Limited Duration Document Details
    public var provisional: Provisional {
        Provisional(
            isProvisional: raw.ddd == "1",
            under18: raw.ddh?.asDate,
            under19: raw.ddi?.asDate,
            under21: raw.ddj?.asDate
        )
    }
    
    /// DHS Complance
    public var isCompliant: Bool { raw.dda == "F" }
    
    /// Card Revision Date
    public var revised: Date? { raw.ddb?.asDate }
    
    /// HAZMAT Endorsement Expiration Date
    public var hazmat: Date? { raw.ddc?.asDate }
    
    /// Organ Donor Status
    public var isOrganDonor: Bool { raw.ddk == "1" }
    
    /// Veteran Status
    public var isVeteran: Bool { raw.ddl == "1" }
    
    // MARK: - RAW VALUES
    
    /// Raw Representation of DL/ID Data
    public var raw: Raw
}
