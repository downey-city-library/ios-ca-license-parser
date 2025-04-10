import Foundation

extension License {
    
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
        DCB | \(raw.dcb) | Jurisdiction-Specific Restriction Codes
        DCD | \(raw.dcd) | Jurisdiction-Specific Endorsement Codes
        DBA | \(raw.dba) | Document Expiration Date
        DCS | \(raw.dcs) | Customer Family Name
        DAC | \(raw.dac) | Customer First Name
        DAD | \(raw.dad) | Customer Middle Name(s)
        DBD | \(raw.dbd) | Document Issue Date
        DBB | \(raw.dbb) | Date of Birth
        DBC | \(raw.dbc) | Physical Description - Sex
        DAY | \(raw.day) | Physical Description - Eye Color
        DAU | \(raw.dau) | Physical Description - Height
        DAG | \(raw.dag) | Address - Street 1
        DAI | \(raw.dai) | Address - City
        DAJ | \(raw.daj) | Address - Jurisdiction Code
        DAK | \(raw.dak) | Address - Postal Code
        DAQ | \(raw.daq) | Customer ID Number
        DCF | \(raw.dcf) | Document Discriminator
        DCG | \(raw.dcg) | County Identification
        DDE | \(raw.dde) | Family Name Truncation
        DDF | \(raw.ddf) | First Name Truncation
        DDG | \(raw.ddg) | Middle Name Truncation
        
        OPTIONAL DATA ELEMENTS ----------------------------------
        
        DAH | \(raw.dah as Any) | Address - Street 2
        DAZ | \(raw.daz as Any) | Hair Color
        DCI | \(raw.dci as Any) | Place of Birth
        DCJ | \(raw.dcj as Any) | Audit Information
        DCK | \(raw.dck as Any) | Inventory Control Number
        DBN | \(raw.dbn as Any) | Alias / AKA Family Name
        DBG | \(raw.dbg as Any) | Alias / AKA Given Name
        DBS | \(raw.dbs as Any) | Alias / AKA Suffix Name
        DCU | \(raw.dcu as Any) | Name Suffix
        DCE | \(raw.dce as Any) | Physical Description - Weight Range
        DCL | \(raw.dcl as Any) | Race / Ethnicity
        DCM | \(raw.dcm as Any) | Standard Vehicle Classification
        DCN | \(raw.dcn as Any) | Standard Endorsement Code
        DCO | \(raw.dco as Any) | Standard Restriction Code
        DCP | \(raw.dcp as Any) | Jurisdiction-Specific Vehicle Classification Description
        DCQ | \(raw.dcq as Any) | Jurisdiction-Specific Endorsement Code Description
        DCR | \(raw.dcr as Any) | Jurisdiction-Specific Restriction Code Description
        DDA | \(raw.dda as Any) | Compliance Type
        DDB | \(raw.ddb as Any) | Card Revision Date
        DDC | \(raw.ddc as Any) | HAZMAT Endorssement Expiration Date
        DDD | \(raw.ddd as Any) | Limited Duration Document Indicator
        DAW | \(raw.daw as Any) | Weight (pounds)
        DAX | \(raw.dax as Any) | Weight (kilograms)
        DDH | \(raw.ddh as Any) | Under 18 Until
        DDI | \(raw.ddi as Any) | Under 19 Until
        DDJ | \(raw.ddj as Any) | Under 21 Until
        DDK | \(raw.ddk as Any) | Organ Donor Indicator
        DDL | \(raw.ddl as Any) | Veteran Indicator
        """
    }
}
