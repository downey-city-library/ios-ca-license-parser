import Foundation

extension License.Description {
    
    /// Physical Description - Height
    public struct Height {
        
        // MARK: - INITIALIZATION
        
        public init(_ height: String) {
            self.measurement = Int(height.at(0, length: 3)) ?? 0
            self.unit = height.at(4, length: 2).lowercased()
        }
        
        // MARK: - PROPERTIES
        
        /// Physical Description - Height - Value of Measurement
        public var measurement: Int
        
        /// Physical Description - Height - Unit of Measurement
        public var unit: String
    }
}
