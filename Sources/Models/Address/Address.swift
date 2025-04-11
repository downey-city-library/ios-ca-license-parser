import Foundation

extension License {
    
    public struct Address {
        
        public init(
            street: String,
            streetTwo: String?,
            city: String,
            state: String,
            postalCode: String,
            country: String
        ) {
            self.street = street
            self.streetTwo = streetTwo
            self.city = city
            self.state = state
            self.postalCode = PostalCode(data: postalCode)
            self.country = country
        }
        
        /**
         Address - Street 1
        
         # Notes: #
         - Street portion of the cardholder address.
         - Element ID: DAG
         - Card Type: Both (DL, ID)
         - Field Length: Variable (35 characters max)
         - Character Type: Alpha, Numeric, Special
         */
        public var street: String
        
        
        /**
         Address - Street 2
        
         # Notes: #
         - Second libne of street portion of the cardholder address.
         - Element ID: DAH
         - Card Type: Both (DL, ID)
         - Field Length: Variable (35 characters max)
         - Character Type: Alpha, Numeric, Special
         */
        public var streetTwo: String?
        
        /**
         Address - City
        
         # Notes: #
         - City portion of the cardholder address.
         - Element ID: DAI
         - Card Type: Both (DL, ID)
         - Field Length: Variable (20 characters max)
         - Character Type: Alpha, Numeric, Special
         */
        public var city: String
        
        /**
         Address - Jurisdiction Code
        
         # Notes: #
         - State portion of the cardholder address.
         - Element ID: DAJ
         - Card Type: Both (DL, ID)
         - Field Length: Fixed (2 characters)
         - Character Type: Alpha
         */
        public var state: String
        
        /**
         Address - Postal Code
        
         # Notes: #
         - Postal code portion of the cardholder address in the U.S. and Canada. If the trailing portion of the postal code in the U.S. is not known, zeros will be used to fill the trailing set of numbers up to nine (9) digits.
         - Element ID: DAK
         - Card Type: Both (DL, ID)
         - Field Length: Fixed (11 characters)
         - Character Type: Alpha, Numeric, Special
         */
        public var postalCode: PostalCode
        
        /**
         Country Identification
        
         # Notes: #
         - Country in which DL/ID is issued. U.S. = USA, Canada = CAN.
         - Element ID: DCG
         - Card Type: Both (DL, ID)
         - Field Length: Fixed (3 characters)
         - Character Type: Alpha
         */
        public var country: String
    }
}
