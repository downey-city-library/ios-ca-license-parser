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
                case .unk: break
                }
            }
        }
        
        // MARK: - HEADER
        
        internal var header: Header
        
        // MARK: - MANDATORY DATA ELEMENTS
        
        /// Jurisdiction-Specific Vehicle Class
        public var dca = ""
        
        /// Jurisdiction-Specific Restriction Codes
        public var dcb = ""
        
        /// Jurisdiction-Specific Endorsement Codes
        public var dcd = ""
        
        /// Document Expiration Date
        public var dba = ""
        
        /// Customer Family Name
        public var dcs = ""
        
        /// Customer First Name
        public var dac = ""
        
        /// Customer Middle Name(s)
        public var dad = ""
        
        /// Document Issue Date
        public var dbd = ""
        
        /// Date of Birth
        public var dbb = ""
        
        /// Physical Description - Sex
        public var dbc = ""
        
        /// Physical Description - Eye Color
        public var day = ""
        
        /// Physical Description - Height
        public var dau = ""
        
        /// Address - Street 1
        public var dag = ""
        
        /// Address - City
        public var dai = ""
        
        /// Address - Jurisdiction Code
        public var daj = ""
        
        /// Address - Postal Code
        public var dak = ""
        
        /// Customer ID Number
        public var daq = ""
        
        /// Document Discriminator
        public var dcf = ""
        
        /// Country Identification
        public var dcg = ""
        
        /// Family Name Truncation
        public var dde = ""
        
        /// First Name Truncation
        public var ddf = ""
        
        /// Middle Name Truncation
        public var ddg = ""
        
        // MARK: - OPTIONAL DATA ELEMENTS
        
        /// Address - Street 2
        public var dah: String?
        
        /// Hair Color
        public var daz: String?
        
        /// Place of Birth
        public var dci: String?
        
        /// Audit Information
        public var dcj: String?
        
        /// Inventory Control Numbner
        public var dck: String?
        
        /// Alias / AKA Family Name
        public var dbn: String?
        
        /// Alias / AKA Given Name
        public var dbg: String?
        
        /// Alias / AKA Suffix Name
        public var dbs: String?
        
        /// Name Suffix
        public var dcu: String?
        
        /// Physical Description - Weight Range
        public var dce: String?
        
        /// Race / Ethnicity
        public var dcl: String?
        
        /// Standard Vehicle Classification
        public var dcm: String?
        
        /// Standard Endorsement Code
        public var dcn: String?
        
        /// Standard Restriction Code
        public var dco: String?
        
        /// Jurisdiction-Specific Vehicle Classification Description
        public var dcp: String?
        
        /// Jurisdiction-Specific Endorsement Code
        public var dcq: String?
        
        /// Jurisdication-Specific Restriction Code
        public var dcr: String?
        
        /// Compliance Type
        public var dda: String?
        
        /// Card Revision Date
        public var ddb: String?
        
        /// HAZMAT Endorsement Expiration Date
        public var ddc: String?
        
        /// Limited Duration Document Indicator
        public var ddd: String?
        
        /// Weight (pounds)
        public var daw: String?
        
        /// Weight (kilograms)
        public var dax: String?
        
        /// Under 18 Until
        public var ddh: String?
        
        /// Under 19 Until
        public var ddi: String?
        
        /// Under 21 Until
        public var ddj: String?
        
        /// Organ Donor Indicator
        public var ddk: String?
        
        /// Veteran Indicator
        public var ddl: String?
        
        // MARK: - ADDITIONAL SUBFILES
        
        /// Jurisdiction-Specific Subfiles
        public var subfiles: [Subfile] = []
    }
}
