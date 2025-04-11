import Foundation

extension License {
    
    /// Address
    public struct Address {
        
        // MARK: - INITIALIZATION
        
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
        
        // MARK: - PROPERTIES
        
        /// Address - Street 1
        public var street: String
        
        /// Address - Street 2
        public var streetTwo: String?
        
        /// Address - City
        public var city: String
        
        /// Address - Jurisdiction Code
        public var state: String
        
        /// Address - Postal Code
        public var postalCode: PostalCode
        
        /// Country Identification
        public var country: String
    }
}
