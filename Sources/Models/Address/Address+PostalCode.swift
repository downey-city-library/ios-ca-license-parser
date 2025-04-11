import Foundation

public extension License.Address {
    
    /// Address - Postal Code
    struct PostalCode {
        
        // MARK: - INITIALIZATION
        
        init(data: String) {
            
            self.zip = data.at(0, length: 5)
            self.plusFour = data.at(5, length: 4)
        }
        
        // MARK: - PROPERTIES
        
        /// Address - Postal Code - ZIP
        public var zip: String
        
        /// Address - Postal Code - ZIP+4
        public var plusFour: String?
    }
}
