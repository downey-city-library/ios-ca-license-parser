import Foundation

extension License {
    
    public struct Name {
        
        init(
            first: FirstName,
            middle: MiddleName,
            last: LastName,
            suffix: Suffix?
        ) {
            self.first = first
            self.middle = middle
            self.last = last
            self.suffix = suffix
        }
        
        /**
        Customer First Name
        
         # Notes: #
         - First name of the cardholder.
         - Element ID: DAC
         - Card Type: Both (DL, ID)
         - Field Length: Variable (40 characters max)
         - Character Type: Alpha, Numeric, Special
         */
        public var first: FirstName
        
        /**
        Customer Middle Name(s)
        
         # Notes: #
         - Middle name(s) of the cardholder. In the case of multiple middle names they shall be separated by a comma “,”.
         - Element ID: DAD
         - Card Type: Both (DL, ID)
         - Field Length: Variable (40 characters max)
         - Character Type: Alpha, Numeric, Special
         */
        public var middle: MiddleName
        
        /**
        Customer Family Name
        
         # Notes: #
         - Family name of the cardholder. (Family name is sometimes also called “last name” or “surname.”)
         - Element ID: DCS
         - Card Type: Both (DL, ID)
         - Field Length: Variable (40 characters max)
         - Character Type: Alpha, Numeric, Special
         */
        public var last: LastName
        
        public var suffix: Suffix?
    }
}
