import Foundation

public extension License {
    
    /// Standard or Jurisdiction Vehicle Class and Codes
    struct Standard {
        
        // MARK: - PROPERTIES
        
        /// Standard Vehicle Classification or Jurisdiction Description
        public var vehicle: String?
        
        /// Standard Codes or Jurisdiction Code Descriptions
        public var codes: Codes
    }
}
