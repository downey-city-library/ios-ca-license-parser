import Foundation

extension License.Description {
    
    public struct Height {
        
        public init(_ height: String) {
            self.measurement = Int(height.at(0, length: 3)) ?? 0
            self.unit = height.at(4, length: 2).lowercased()
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
