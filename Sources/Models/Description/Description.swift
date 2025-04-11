import Foundation

public extension License {
    
    /// Physical Description
    struct Description {
        
        // MARK: - INITIALIZATION
        
        public init(
            sex: String,
            eyes: String,
            height: String,
            weight: Weight,
            hair: String?,
            race: String?
        ) {
            self.sex = Sex(rawValue: Int(sex) ?? 0) ?? .notSpecified
            self.eyes = eyes
            self.height = Height(height)
            self.weight = weight
            self.hair = hair
            self.race = race
        }
        
        // MARK: - PROPERTIES
        
        /// Physical Description - Sex
        public var sex: Sex
        
        /// Physical Description - Eye Color
        public var eyes: String
        
        /// Physical Description - Height
        public var height: Height
        
        /// Physical Description - Weight
        public var weight: Weight
        
        /// Physical Description - Hair Color
        public var hair: String?
        
        /// Race / Ethnicity
        public var race: String?
    }
}
