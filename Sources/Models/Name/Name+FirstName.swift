import Foundation

extension License.Name {
    
    /// Customer First Name
    public struct FirstName {
        
        // MARK: - PROPERTIES
        
        /// Customer First Name
        public var value: String
        
        /// Alias / AKA Given Name
        public var alias: String?
        
        /// First Name Truncation
        public var isTruncated: Bool
    }
}
