import Foundation

extension Subfile {
    
    public var debugDesription: String {
        """
        TYPE    | \(type)
        VALUE   | \(value.debugDescription.trimmingCharacters(in: ["\""]))
        """
    }
}
