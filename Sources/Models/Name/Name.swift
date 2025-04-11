import Foundation

extension License {
    
    /// Customer Name
    public struct Name {
        
        // MARK: - INITIALIZATION
        
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
        
        // MARK: - PROPERTIES
        
        /// Customer First Name
        public var first: FirstName
        
        /// Customer Middle Name(s)
        public var middle: MiddleName
        
        /// Customer Family Name
        public var last: LastName
        
        /// Customer Name Suffix
        public var suffix: Suffix?
    }
}
