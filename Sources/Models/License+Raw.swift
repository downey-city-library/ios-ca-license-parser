import Foundation

public extension License {
    
    struct Raw {
        
        // MARK: - INITIALIZATION
        
        init(header: Header, data fields: [LicenseField]) {
            
            self.header = header
            
            for field in fields {
                switch field.code {
                case .dca: dca = field.value
                case .dcb: dcb = field.value
                case .dcd: dcd = field.value
                case .dba: dba = field.value
                case .dcs: dcs = field.value
                case .dac: dac = field.value
                case .dad: dad = field.value
                case .dbd: dbd = field.value
                case .dbb: dbb = field.value
                case .dbc: dbc = field.value
                case .day: day = field.value
                case .dau: dau = field.value
                case .dag: dag = field.value
                case .dai: dai = field.value
                case .daj: daj = field.value
                case .dak: dak = field.value
                case .daq: daq = field.value
                case .dcf: dcf = field.value
                case .dcg: dcg = field.value
                case .dde: dde = field.value
                case .ddf: ddf = field.value
                case .ddg: ddg = field.value
                case .dah: dah = field.value
                case .daz: daz = field.value
                case .dci: dci = field.value
                case .dcj: dcj = field.value
                case .dck: dck = field.value
                case .dbn: dbn = field.value
                case .dbg: dbg = field.value
                case .dbs: dbs = field.value
                case .dcu: dcu = field.value
                case .dce: dce = field.value
                case .dcl: dcl = field.value
                case .dcm: dcm = field.value
                case .dcn: dcn = field.value
                case .dco: dco = field.value
                case .dcp: dcp = field.value
                case .dcq: dcq = field.value
                case .dcr: dcr = field.value
                case .dda: dda = field.value
                case .ddb: ddb = field.value
                case .ddc: ddc = field.value
                case .ddd: ddd = field.value
                case .daw: daw = field.value
                case .dax: dax = field.value
                case .ddh: ddh = field.value
                case .ddi: ddi = field.value
                case .ddj: ddj = field.value
                case .ddk: ddk = field.value
                case .ddl: ddl = field.value
                case .unknown: break
                }
            }
        }
        
        // MARK: - HEADER
        
        /// Header
        /// # Notes: #
        /// Compliant 2D symbols must begin with a Fixed Header.
        /// - The number of bytes for each field is fixed and must be present.
        /// - The numbers must be zero filled.
        internal var header: Header
        
        // MARK: - MANDATORY DATA ELEMENTS
        
        /// Jurisdiction-Specific Vehicle Class
        /// # Notes: #
        /// - Jurisdiction-specific vehicle class / group code, designating the type of vehicle the cardholder has privilege to drive.
        /// - Element ID: DCA
        /// - Card Type: DL
        /// - Field Length: Variable (6 characters max)
        /// - Character Type: Alpha, Numeric, Special
        public var dca = ""
        
        /// Jurisdiction-Specific Restriction Codes
        /// # Notes: #
        /// - Jurisdiction-specific codes that represent restrictions to driving privileges (such as airbrakes, automatic transmission, daylight only, etc.).
        /// - Element ID: DCB
        /// - Card Type: DL
        /// - Field Length: Variable (12 characters max)
        /// - Character Type: Alpha, Numeric, Special
        public var dcb = ""
        
        /// Jurisdiction-Specific Endorsement Codes
        /// # Notes: #
        /// - Jurisdiction-specific codes that represent additional privileges granted to the cardholder beyond the vehicle class (such as transportation of passengers, hazardous materials, operation of motorcycles, etc.).
        /// - Element ID: DCD
        /// - Card Type: DL
        /// - Field Length: Variable (5 characters max)
        /// - Character Type: Alpha, Numeric, Special
        public var dcd = ""
        
        /// Document Expiration Date
        /// # Notes: #
        /// - Date on which the driving and identification privileges granted by the document are no longer valid. (MMDDCCYY for U.S., CCYYMMDD for Canada)
        /// - Element ID: DBA
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (8 characters)
        /// - Character Type: Numeric
        public var dba = ""
        
        /// Customer Family Name
        /// # Notes: #
        /// - Family name of the cardholder. (Family name is sometimes also called “last name” or “surname.”)
        /// - Element ID: DCS
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Variable (40 characters max)
        /// - Character Type: Alpha, Numeric, Special
        public var dcs = ""
        
        /// Customer First Name
        /// # Notes: #
        /// - First name of the cardholder.
        /// - Element ID: DAC
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Variable (40 characters max)
        /// - Character Type: Alpha, Numeric, Special
        public var dac = ""
        
        /// Customer Middle Name(s)
        /// # Notes: #
        /// - Middle name(s) of the cardholder. In the case of multiple middle names they shall be separated by a comma “,”.
        /// - Element ID: DAD
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Variable (40 characters max)
        /// - Character Type: Alpha, Numeric, Special
        public var dad = ""
        
        /// Document Issue Date
        /// # Notes: #
        /// - Date on which the document was issued. (MMDDCCYY for U.S., CCYYMMDD for Canada)
        /// - Element ID: DBD
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (8 characters)
        /// - Character Type: Numeric
        public var dbd = ""
        
        /// Date of Birth
        /// # Notes: #
        /// - Date on which the cardholder was born. (MMDDCCYY for U.S., CCYYMMDD for Canada)
        /// - Element ID: DBB
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (8 characters)
        /// - Character Type: Numeric
        public var dbb = ""
        
        /// Physical Description - Sex
        /// # Notes: #
        /// - Gender of the cardholder. 1 = male, 2 = female, 9 = not specified.
        /// - Element ID: DBC
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (1 character)
        /// - Character Type: Numeric
        public var dbc = ""
        
        /// Physical Description - Eye Color
        /// # Notes: #
        /// - Color of cardholder's eyes. (ANSI D-20 codes)
        /// - Element ID: DAY
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (3 characters)
        /// - Character Type: Alpha
        public var day = ""
        
        /// Physical Description - Height
        /// # Notes: #
        /// - Height of cardholder.
        /// - Inches (in): number of inches followed by " in" ex. 6'1'' = "073 in"
        /// - Centimeters (cm): number of centimeters followed by " cm" ex. 181 centimeters="181 cm"
        /// - Element ID: DAU
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (6 characters)
        /// - Character Type: Alpha, Numeric, Special
        public var dau = ""
        
        /// Address - Street 1
        /// # Notes: #
        /// - Street portion of the cardholder address.
        /// - Element ID: DAG
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Variable (35 characters max)
        /// - Character Type: Alpha, Numeric, Special
        public var dag = ""
        
        /// Address - City
        /// # Notes: #
        /// - City portion of the cardholder address.
        /// - Element ID: DAI
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Variable (20 characters max)
        /// - Character Type: Alpha, Numeric, Special
        public var dai = ""
        
        /// Address - Jurisdiction Code
        /// # Notes: #
        /// - State portion of the cardholder address.
        /// - Element ID: DAJ
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (2 characters)
        /// - Character Type: Alpha
        public var daj = ""
        
        /// Address - Postal Code
        /// # Notes: #
        /// - Postal code portion of the cardholder address in the U.S. and Canada. If the trailing portion of the postal code in the U.S. is not known, zeros will be used to fill the trailing set of numbers up to nine (9) digits.
        /// - Element ID: DAK
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (11 characters)
        /// - Character Type: Alpha, Numeric, Special
        public var dak = ""
        
        /// Customer ID Number
        /// # Notes: #
        /// - The number assigned or calculated by the issuing authority.
        /// - Element ID: DAQ
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Variable (25 characters max)
        /// - Character Type: Alpha, Numeric, Special
        public var daq = ""
        
        /// Document Discriminator
        /// # Notes: #
        /// - Number must uniquely identify a particular document issued to that customer from others that may have been issued in the past. This number may serve multiple purposes of document discrimination, audit information number, and/or inventory control.
        /// - Element ID: DCF
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Variable (25 characters max)
        /// - Character Type: Alpha, Numeric, Special
        public var dcf = ""
        
        /// Country Identification
        /// # Notes: #
        /// - Country in which DL/ID is issued. U.S. = USA, Canada = CAN.
        /// - Element ID: DCG
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (3 characters)
        /// - Character Type: Alpha
        public var dcg = ""
        
        /// Family Name Truncation
        /// # Notes: #
        /// - A code that indicates whether a field has been truncated (T), has not been truncated (N), or – unknown whether truncated (U).
        /// - Element ID: DDE
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (1 character)
        /// - Character Type: Alpha
        public var dde = ""
        
        /// First Name Truncation
        /// # Notes: #
        /// - A code that indicates whether a field has been truncated (T), has not been truncated (N), or – unknown whether truncated (U).
        /// - Element ID: DDF
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (1 character)
        /// - Character Type: Alpha
        public var ddf = ""
        
        /// Middle Name Truncation
        /// # Notes: #
        /// - A code that indicates whether a field has been truncated (T), has not been truncated (N), or – unknown whether truncated (U).
        /// - Element ID: DDG
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (1 character)
        /// - Character Type: Alpha
        public var ddg = ""
        
        // MARK: - OPTIONAL DATA ELEMENTS
        
        /// Address - Street 2
        /// # Notes: #
        /// - Second libne of street portion of the cardholder address.
        /// - Element ID: DAH
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Variable (35 characters max)
        /// - Character Type: Alpha, Numeric, Special
        public var dah: String?
        
        /// Hair Color
        /// # Notes: #
        /// - Bald, black, blonde, brown, gray, red/auburn, sandy, white, unknown. If the issuing jurisdiction wishes to abbreviate colors, the three-character codes provided in AAMVA D20 must be used.
        /// - Element ID: DAZ
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Variable (12 characters max)
        /// - Character Type: Alpha
        public var daz: String?
        
        /// Place of Birth
        /// # Notes: #
        /// - Country and municipality and/or state/province.
        /// - Element ID: DCI
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Variable (33 characters max)
        /// - Character Type: Alpha
        public var dci: String?
        
        /// Audit Information
        /// # Notes: #
        /// - A string of letters and/or numbers that identifies when, where, and by whom a driver license/ID card was made. If audit information is not used on the card or the MRT, it must be included in the driver record.
        /// - Element ID: DCJ
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Variable (25 characters max)
        /// - Character Type: Alpha, Numeric, Special
        public var dcj: String?
        
        /// Inventory Control Number
        /// # Notes: #
        /// - A string of letters and/or numbers that is affixed to the raw materials (card stock, laminate, etc.) used in producing driver licenses and ID cards. (DHS recommended field)
        /// - Element ID: DCK
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Variable (25 characters max)
        /// - Character Type: Alpha, Numeric, Special
        public var dck: String?
        
        /// Alias / AKA Family Name
        /// # Notes: #
        /// - Other family name by which cardholder is known.
        /// - Element ID: DBN
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Variable (10 characters max)
        /// - Character Type: Alpha, Numeric, Special
        public var dbn: String?
        
        /// Alias / AKA Given Name
        /// # Notes: #
        /// - Other given name by which cardholder is known.
        /// - Element ID: DBG
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Variable (15 characters Max)
        /// - Character Type: Alpha, Numeric, Special
        public var dbg: String?
        
        /// Alias / AKA Suffix Name
        /// # Notes: #
        /// - Other suffix by which cardholder is known.
        /// - Element ID: DBS
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Variable (5 characters Max)
        /// - Character Type: Alpha, Numeric, Special
        public var dbs: String?
        
        /// Name Suffix
        /// # Notes: #
        /// - Name Suffix (If jurisdiction participates in systems requiring name suffix (PDPS, CDLIS, etc.), the suffix must be collected and displayed on the DL/ID and in the MRT). Collect full name for record, print as many characters as possible on portrait side of DL/ID.
        /// - JR (Junior)
        /// - SR (Senior)
        /// - 1ST or I (First)
        /// - 2ND or II (Second)
        /// - 3RD or III (Third)
        /// - 4TH or IV (Fourth)
        /// - 5TH or V (Fifth)
        /// - 6TH or VI (Sixth)
        /// - 7TH or VII (Seventh)
        /// - 8TH or VIII (Eighth)
        /// - 9TH or IX (Ninth)
        /// - Element ID: DCU
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Variable (5 characters Max)
        /// - Character Type: Alpha, Numeric, Special
        public var dcu: String?
        
        /// Physical Description - Weight Range
        /// # Notes: #
        /// - Indicates the approximate weight range of the cardholder:
        /// - 0 - up to 31 kg (up to 70 lbs)
        /// - 1 = 32 – 45 kg (71 – 100 lbs)
        /// - 2 = 46 - 59 kg (101 – 130 lbs)
        /// - 3 = 60 - 70 kg (131 – 160 lbs)
        /// - 4 = 71 - 86 kg (161 – 190 lbs)
        /// - 5 = 87 - 100 kg (191 – 220 lbs)
        /// - 6 = 101 - 113 kg (221 – 250 lbs)
        /// - 7 = 114 - 127 kg (251 – 280 lbs)
        /// - 8 = 128 – 145 kg (281 – 320 lbs)
        /// - 9 = 146+ kg (321+ lbs)
        /// - Element ID: DCE
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (1 character)
        /// - Character Type: Numeric
        public var dce: String?
        
        /// Race / Ethnicity
        /// # Notes: #
        /// - Codes for race or ethnicity of the cardholder, as defined in AAMVA D20.
        /// - Element ID: DCL
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Variable (3 characters max)
        /// - Character Type: Alpha
        public var dcl: String?
        
        /// Standard Vehicle Classification
        /// # Notes: #
        /// - Standard vehicle classification code(s) for cardholder. This data element is a placeholder for future efforts to standardize vehicle classifications.
        /// - Element ID: DCM
        /// - Card Type: DL
        /// - Field Length: Fixed (4 characters)
        /// - Character Type: Alpha, Numeric
        public var dcm: String?
        
        /// Standard Endorsement Code
        /// # Notes: #
        /// - Standard endorsement code(s) for cardholder. See codes in D20. This data element is a placeholder for future efforts to standardize endorsement codes.
        /// - Element ID: DCN
        /// - Card Type: DL
        /// - Field Length: Fixed (5 characters)
        /// - Character Type: Alpha, Numeric
        public var dcn: String?
        
        /// Standard Restriction Code
        /// # Notes: #
        /// - Standard restriction code(s) for cardholder. See codes in D20. This data element is a placeholder for future efforts to standardize restriction codes.
        /// - Element ID: DCO
        /// - Card Type: DL
        /// - Field Length: Fixed (12 characters)
        /// - Character Type: Alpha, Numeric
        public var dco: String?
        
        /// Jurisdiction-Specific Vehicle Classification Description
        /// # Notes: #
        /// - Text that explains the jurisdiction-specific code(s) for classifications of vehicles cardholder is authorized to drive.
        /// - Element ID: DCP
        /// - Card Type: DL
        /// - Field Length: Variable (50 characters max)
        /// - Character Type: Alpha, Numeric, Special
        public var dcp: String?
        
        /// Jurisdiction-Specific Endorsement Code Description
        /// # Notes: #
        /// - Text that explains the jurisdiction-specific code(s) that indicates additional driving privileges granted to the cardholder beyond the vehicle class.
        /// - Element ID: DCQ
        /// - Card Type: DL
        /// - Field Length: Variable (50 characters max)
        /// - Character Type: Alpha, Numeric, Special
        public var dcq: String?
        
        /// Jurisdication-Specific Restriction Code
        /// # Notes: #
        /// - Text describing the jurisdiction-specific restriction code(s) that curtail driving privileges.
        /// - Element ID: DCR
        /// - Card Type: DL
        /// - Field Length: Variable (50 characters max)
        /// - Character Type: Alpha, Numeric, Special
        public var dcr: String?
        
        /// Compliance Type
        /// # Notes: #
        /// - DHS required field that indicates compliance: “F” = compliant; and, “N” = non-compliant.
        /// - Element ID: DDA
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (1 character)
        /// - Character Type: Alpha
        public var dda: String?
        
        /// Card Revision Date
        /// # Notes: #
        /// - DHS required field that indicates date of the most recent version change or modification to the visible format of the DL/ID. (MMDDCCYY for U.S., CCYYMMDD for Canada)
        /// - Element ID: DDB
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (8 characters)
        /// - Character Type: Numeric
        public var ddb: String?
        
        /// HAZMAT Endorsement Expiration Date
        /// # Notes: #
        /// - Date on which the hazardous material endorsement granted by the document is no longer valid. (MMDDCCYY for U.S., CCYYMMDD for Canada)
        /// - Element ID: DDC
        /// - Card Type: DL
        /// - Field Length: Fixed (8 characters)
        /// - Character Type: Numeric
        public var ddc: String?
        
        /// Limited Duration Document Indicator
        /// # Notes: #
        /// - DHS required field that indicates that the cardholder has temporary lawful status = “1”.
        /// - Element ID: DDD
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (1 character)
        /// - Character Type: Numeric
        public var ddd: String?
        
        /// Weight (pounds)
        /// # Notes: #
        /// - Cardholder weight in pounds
        /// - Ex. 185 lb = “185”
        /// - Element ID: DAW
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (3 characters)
        /// - Character Type: Numeric
        public var daw: String?
        
        /// Weight (kilograms)
        /// # Notes: #
        /// - Cardholder weight in kilograms
        /// - Ex. 84 kg = “084”
        /// - Element ID: DAX
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (3 characters)
        /// - Character Type: Numeric
        public var dax: String?
        
        /// Under 18 Until
        /// # Notes: #
        /// - Date on which the cardholder turns 18 years old. (MMDDCCYY for U.S., CCYYMMDD for Canada)
        /// - Element ID: DDH
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (8 characters)
        /// - Character Type: Numeric
        public var ddh: String?
        
        /// Under 19 Until
        /// # Notes: #
        /// - Date on which the cardholder turns 19 years old. (MMDDCCYY for U.S., CCYYMMDD for Canada)
        /// - Element ID: DDI
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (8 characters)
        /// - Character Type: Numeric
        public var ddi: String?
        
        /// Under 21 Until
        /// # Notes: #
        /// - Date on which the cardholder turns 21 years old. (MMDDCCYY for U.S., CCYYMMDD for Canada)
        /// - Element ID: DDJ
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (8 characters)
        /// - Character Type: Numeric
        public var ddj: String?
        
        /// Organ Donor Indicator
        /// # Notes: #
        /// - Field that indicates that the cardholder is an organ donor = “1”
        /// - Element ID: DDK
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (1 character)
        /// - Character Type: Numeric
        public var ddk: String?
        
        /// Veteran Indicator
        /// # Notes: #
        /// - Field that indicates that the cardholder is a veteran = “1”
        /// - Element ID: DDL
        /// - Card Type: Both (DL, ID)
        /// - Field Length: Fixed (1 character)
        /// - Character Type: Numeric
        public var ddl: String?
        
        // MARK: - ADDITIONAL SUBFILES
        
        /// Jurisdiction-Specific Subfiles
        /// # Notes: #
        /// - Jurisdiction-specific data elements may also be encoded, provided the bar code ID is a 3-character uppercase character field beginning with “ZX” where "X" is the first letter of the jurisdictions name. Each data element field within the jurisdiction-defined subfile should follow consecutively in alphabetic order. For example, data elements in a Virginia subfile would be ZVA, ZVB, etc.; a Delaware subfile would be ZDA, ZDB, etc.).
        public var subfiles: [Subfile] = []
    }
}
