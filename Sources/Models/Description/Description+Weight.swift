import Foundation

public extension License.Description {
    
    /// Physical Description - Weight
    struct Weight {
        
        // MARK: - INITIALIZATION
        
        init(
            range: String?,
            pounds: String?,
            kilograms: String?
        ) {
            self.range = range
            self.pounds = Int(pounds ?? "")
            self.kilograms = Int(kilograms ?? "")
        }
        
        // MARK: - PROPERTIES
        
        /// Physical Description - Weight Range
        public var range: String?
        
        /// Physical Description - Weight (pounds)
        public var pounds: Int?
        
        /// Physical Description - Weight (kilograms)
        public var kilograms: Int?
    }
}
