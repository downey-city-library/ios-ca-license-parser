import Foundation

extension Subfile {
    
    // MARK: - PROPERTIES
    
    /// Formatted string used for debugging purposes.
    public var debugDesription: String {
        """
        TYPE    | \(type)
        VALUE   | \(value.debugDescription.trimmingCharacters(in: ["\""]))
        """
    }
}
