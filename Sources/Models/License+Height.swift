import Foundation

extension License {
    
    public struct Height {
        
        public init(measurement: Int = 0, unit: String = "in") {
            self.measurement = measurement
            self.unit = unit
        }
        
        /**
        Physical Description - Height
        
         # Notes: #
         - Height of cardholder - value of measurement.
         - Inches (in): number of inches followed by " in" ex. 6'1'' = "073 in"
         - Centimeters (cm): number of centimeters followed by " cm" ex. 181 centimeters="181 cm"
         - Element ID: DAU
         - Card Type: Both (DL, ID)
         - Field Length: Fixed (6 characters max)
         - Character Type: Alpha, Numeric, Special
         */
        public var measurement: Int
        
        /**
        Physical Description - Height
        
         # Notes: #
         - Height of cardholder - unit of measurement.
         - Inches (in)
         - Centimeters (cm)
         - Element ID: DAU
         - Card Type: Both (DL, ID)
         - Field Length: Fixed (6 characters max)
         - Character Type: Alpha, Numeric, Special
         */
        public var unit: String
    }
}
