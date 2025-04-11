import Foundation

extension License.Name {
    
    /// Customer Family Name
    public struct LastName {
        
        // MARK: - PROPERTIES
        
        /// Customer Family Name
        public var value: String
        
        /// Alias / AKA Family Name
        public var alias: String?
        
        /// Family Name Truncation
        public var isTruncated: Bool
    }
}
