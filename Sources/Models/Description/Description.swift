import Foundation

public extension License {
    
    struct Description {
        
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
        
        /**
         Physical Description - Sex
        
         # Notes: #
         - Gender of the cardholder. 1 = male, 2 = female, 9 = not specified.
         - Element ID: DBC
         - Card Type: Both (DL, ID)
         - Field Length: Fixed (1 character)
         - Character Type: Numeric
         */
        public var sex: Sex
        
        
        /**
         Physical Description - Eye Color
        
         # Notes: #
         - Color of cardholder's eyes. (ANSI D-20 codes)
         - Element ID: DAY
         - Card Type: Both (DL, ID)
         - Field Length: Fixed (3 characters)
         - Character Type: Alpha
         */
        public var eyes: String
        public var height: Height
        public var weight: Weight
        public var hair: String?
        public var race: String?
    }
}
