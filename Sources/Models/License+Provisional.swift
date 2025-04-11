import Foundation

public extension License {
    
    /// Limited Duration Document Details
    struct Provisional {
        
        // MARK: - PROPERTIES
        
        /// Document has temporary lawful status.
        public var isProvisional: Bool
        
        /// Under 18 Until
        public var under18: Date?
        
        /// Under 19 Until
        public var under19: Date?
        
        /// Under 21 Until
        public var under21: Date?
    }
}
