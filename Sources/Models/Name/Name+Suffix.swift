import Foundation

extension License.Name {
    
    /// Name Suffix
    public struct Suffix {
        
        // MARK: - INITIALIZATION
        
        init?(value: String?, alias: String?) {
            guard let value else { return nil }
            self.value = value
            self.alias = alias
        }
        
        // MARK: - PROPERTIES
        
        /// Name Suffix
        public var value: String
        
        /// Alias / AKA Suffix Name
        public var alias: String?
    }
}
