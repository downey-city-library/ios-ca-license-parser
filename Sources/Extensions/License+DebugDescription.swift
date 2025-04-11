import Foundation

extension License {
    
    // MARK: - PROPERTIES
    
    /// Formatted string used for debugging purposes.
    public var debugDescription: String {
        """
        
        HEADER ---------------------------------------------------
        
        \(raw.header.complianceIndicator) | Compliance Indicator
        
        \(raw.header.dataElementSeparator.debugDescription) | Line Feed Character
        \(raw.header.recordSeparator.debugDescription) | Record Separator Character
        \(raw.header.segmentTerminator.debugDescription) | Carriage Return Character
        
        \(raw.header.fileType) | File Type
        \(raw.header.iin) | Issuer Identification Number
        \(raw.header.aamvaVersionNumber) | AAMVA Version Number
        \(raw.header.jurisdictionVersionNumber) | Jurisdication Version Number
        \(raw.header.numberOfEntries) | Number of Entries
        
        
        MANDATORY DATA ELEMENTS ----------------------------------
        
        DCA | \(raw.dca) | Jurisdiction-Specific Vehicle Class
        .class = \(`class`)
        
        DCB | \(raw.dcb) | Jurisdiction-Specific Restriction Codes
        .restrictions = \(restrictions)
        
        DCD | \(raw.dcd) | Jurisdiction-Specific Endorsement Codes
        .endorsements = \(endorsements)
        
        DBA | \(raw.dba) | Document Expiration Date
        .expiration = \(expiration)
        .isExpired = \(isExpired)
        
        DCS | \(raw.dcs) | Customer Family Name
        .name.last.value = \(name.last.value)
        
        DAC | \(raw.dac) | Customer First Name
        .name.first.value = \(name.first.value)
        
        DAD | \(raw.dad) | Customer Middle Name(s)
        .name.middle.values = \(name.middle.values)
        
        DBD | \(raw.dbd) | Document Issue Date
        .issued = \(issued)
        
        DBB | \(raw.dbb) | Date of Birth
        .birthdate = \(birthdate)
        
        DBC | \(raw.dbc) | Physical Description - Sex
        .description.sex = \(description.sex.label)
        
        DAY | \(raw.day) | Physical Description - Eye Color
        .description.eyes = \(description.eyes)
        
        DAU | \(raw.dau) | Physical Description - Height
        .description.height.measurement =  \(description.height.measurement)
        .description.height.unit = \(description.height.unit)
        
        DAG | \(raw.dag) | Address - Street 1
        .address.street = \(address.street)
        
        DAI | \(raw.dai) | Address - City
        .address.city = \(address.city)
        
        DAJ | \(raw.daj) | Address - Jurisdiction Code
        .address.state = \(address.state)
        
        DAK | \(raw.dak) | Address - Postal Code
        .address.postalCode.zip = \(address.postalCode.zip)
        .address.postalCode.plusFour = \(address.postalCode.plusFour ?? "nil")
        
        DAQ | \(raw.daq) | Customer ID Number
        .id = \(id)
        
        DCF | \(raw.dcf) | Document Discriminator
        .document = \(document)
        
        DCG | \(raw.dcg) | Country Identification
        .address.country = \(address.country)
        
        DDE | \(raw.dde) | Family Name Truncation
        .name.last.isTruncated = \(name.last.isTruncated)
        
        DDF | \(raw.ddf) | First Name Truncation
        .name.first.isTruncated = \(name.first.isTruncated)
        
        DDG | \(raw.ddg) | Middle Name Truncation
        .name.middle.isTruncated =  \(name.middle.isTruncated)
        
        
        OPTIONAL DATA ELEMENTS ----------------------------------
        
        DAH | \(raw.dah ?? "nil") | Address - Street 2
        .address.streetTwo = \(address.streetTwo ?? "nil")
        
        DAZ | \(raw.daz ?? "nil") | Hair Color
        .description.hair = \(description.hair ?? "nil")
        
        DCI | \(raw.dci ?? "nil") | Place of Birth
        .birthplace = \(birthplace ?? "nil")
        
        DCJ | \(raw.dcj ?? "nil") | Audit Information
        .audit = \(audit ?? "nil")
        
        DCK | \(raw.dck ?? "nil") | Inventory Control Number
        .controlNumber = \(controlNumber ?? "nil")
        
        DBN | \(raw.dbn ?? "nil") | Alias / AKA Family Name
        .name.last.alias = \(name.last.alias ?? "nil")
        
        DBG | \(raw.dbg ?? "nil") | Alias / AKA Given Name
        .name.first.alias = \(name.first.alias ?? "nil")
        
        DBS | \(raw.dbs ?? "nil") | Alias / AKA Suffix Name
        .name.suffix.alias = \(name.suffix?.alias ?? "nil")
        
        DCU | \(raw.dcu ?? "nil") | Name Suffix
        .name.suffix.value = \(name.suffix?.value ?? "nil")
        
        DCE | \(raw.dce ?? "nil") | Physical Description - Weight Range
        .description.weight.range = \(description.weight.range ?? "nil")
        
        DCL | \(raw.dcl ?? "nil") | Race / Ethnicity
        .description.race = \(description.race ?? "nil")
        
        DCM | \(raw.dcm ?? "nil") | Standard Vehicle Classification
        .standard.vehicle = \(standard.vehicle ?? "nil")
        
        DCN | \(raw.dcn ?? "nil") | Standard Endorsement Code
        .standard.codes.endorsement = \(standard.codes.endorsement ?? "nil")
        
        DCO | \(raw.dco ?? "nil") | Standard Restriction Code
        .standard.codes.restriction = \(standard.codes.restriction ?? "nil")
        
        DCP | \(raw.dcp ?? "nil") | Jurisdiction-Specific Vehicle Classification Description
        .jurisdiction.vehicle = \(jurisdiction.vehicle ?? "nil")
        
        DCQ | \(raw.dcq ?? "nil") | Jurisdiction-Specific Endorsement Code Description
        .jurisdiction.codes.endorsement = \(jurisdiction.codes.endorsement ?? "nil")
        
        DCR | \(raw.dcr ?? "nil") | Jurisdiction-Specific Restriction Code Description
        .jurisdiction.codes.restriction = \(jurisdiction.codes.restriction ?? "nil")
        
        DDA | \(raw.dda ?? "nil") | Compliance Type
        .isCompliant = \(isCompliant)
        
        DDB | \(raw.ddb ?? "nil") | Card Revision Date
        .revised = \(revised?.description ?? "nil")
        
        DDC | \(raw.ddc ?? "nil") | HAZMAT Endorsement Expiration Date
        .hazmat = \(hazmat?.description ?? "nil")
        
        DDD | \(raw.ddd ?? "nil") | Limited Duration Document Indicator
        .provisional.isProvisional = \(provisional.isProvisional)
        
        DAW | \(raw.daw ?? "nil") | Weight (pounds)
        .description.weight.pounds = \(description.weight.pounds != nil ? String(description.weight.pounds!) : "nil")
        
        DAX | \(raw.dax ?? "nil") | Weight (kilograms)
        .description.weight.kilograms = \(description.weight.kilograms != nil ? String(description.weight.kilograms!) : "nil")
        
        DDH | \(raw.ddh ?? "nil") | Under 18 Until
        .provisional.under18 = \(provisional.under18?.description ?? "nil")
        
        DDI | \(raw.ddi ?? "nil") | Under 19 Until
        .provisional.under19 = \(provisional.under19?.description ?? "nil")
        
        DDJ | \(raw.ddj ?? "nil") | Under 21 Until
        .provisional.under21 = \(provisional.under21?.description ?? "nil")
        
        DDK | \(raw.ddk ?? "nil") | Organ Donor Indicator
        .isOrganDonor = \(isOrganDonor)
        
        DDL | \(raw.ddl ?? "nil") | Veteran Indicator
        .isVeteran = \(isVeteran)
        
        
        JURISDICTION-SPECIFIC SUBFILES (\(raw.subfiles.count)) -----------------------
        \(raw.subfiles.debugDescription)
        
        """
    }
}
