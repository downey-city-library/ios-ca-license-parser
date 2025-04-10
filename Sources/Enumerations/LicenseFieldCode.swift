internal enum LicenseFieldCode: String {
    
    // Mandatory Data Elements
    
    /// Jurisdiction-Specific Vehicle Class
    case dca = "DCA"
    
    /// Jurisdiction-Specific Restriction Codes
    case dcb = "DCB"
    
    /// Jurisdiction-Specific Endorsement Codes
    case dcd = "DCD"
    
    /// Document Expiration Date
    case dba = "DBA"
    
    /// Customer Family Name
    case dcs = "DCS"
    
    /// Customer First Name
    case dac = "DAC"
    
    /// Customer Middle Name(s)
    case dad = "DAD"
    
    /// Document Issue Date
    case dbd = "DBD"
    
    /// Date of Birth
    case dbb = "DBB"
    
    /// Physical Description - Sex
    case dbc = "DBC"
    
    /// Physical Description - Eye Color
    case day = "DAY"
    
    /// Physical Descrtiption - Height
    case dau = "DAU"
    
    /// Address - Street 1
    case dag = "DAG"
    
    /// Address - City
    case dai = "DAI"
    
    /// Address - Jurisdiction Code
    case daj = "DAJ"
    
    /// Address - Postal Code
    case dak = "DAK"
    
    /// Customer ID Number
    case daq = "DAQ"
    
    /// Document Discriminator
    case dcf = "DCF"
    
    /// Country Identifcation
    case dcg = "DCG"
    
    /// Family Name Truncation
    case dde = "DDE"
    
    /// First Name Truncation
    case ddf = "DDF"
    
    /// Middle Name Truncation
    case ddg = "DDG"
    
    // Optional Data Elements
    
    /// Address - Street 2
    case dah = "DAH"
    
    /// Hair Color
    case daz = "DAZ"
    
    /// Place of Birth
    case dci = "DCI"
    
    /// Audit Information
    case dcj = "DCJ"
    
    /// Inventory Control Number
    case dck = "DCK"
    
    /// Alias / AKA Family Name
    case dbn = "DBN"
    
    /// Alias / AKA Given Name
    case dbg = "DBG"
    
    /// Alias / AKA Suffix Name
    case dbs = "DBS"
    
    /// Name Suffix
    case dcu = "DCU"
    
    /// Physical Description - Weight Range
    case dce = "DCE"
    
    /// Race / Ethnicity
    case dcl = "DCL"
    
    /// Standard Vehicle Classification
    case dcm = "DCM"
    
    /// Standard Endorsement Code
    case dcn = "DCN"
    
    /// Standard Restriction Code
    case dco = "DCO"
    
    /// Jurisdiction-Specific Vehicle Classification Description
    case dcp = "DCP"
    
    /// Jurisdiction-Specific Endorsement Code Description
    case dcq = "DCQ"
    
    /// Jurisdiction-Specific Restriction Code Description
    case dcr = "DCR"
    
    /// Compliance Type
    case dda = "DDA"
    
    /// Card Revision Date
    case ddb = "DDB"
    
    /// HAZMAT Endorsement Expiration Date
    case ddc = "DDC"
    
    /// Limited Duration Document Indicator
    case ddd = "DDD"
    
    /// Weight (pounds)
    case daw = "DAW"
    
    /// Weight (kilograms)
    case dax = "DAX"
    
    /// Under 18 Until
    case ddh = "DDH"
    
    /// Under 19 Until
    case ddi = "DDI"
    
    /// Under 21 Until
    case ddj = "DDJ"
    
    /// Organ Donor Indicator
    case ddk = "DDK"
    
    /// Veteran Indicator
    case ddl = "DDL"
    
    /// Unknown Field
    case unknown = "UNK"
}
