import Foundation

extension Array where Element == Subfile {
    
    // MARK: - PROPERTIES
    
    /// Formatted string used for debugging purposes.
    public var debugDescription: String {
        var string = ""
        
        for (index, subfile) in self.enumerated() {
            string += "\nSUBFILE | \(index + 1)\n"
            string += subfile.debugDesription
        }
        
        return string
    }
    
    /// Last Index in Subfile.
    /// - Important:
    /// Value does not necessarily return the position of the final character.
    internal var lastIndex: Int {
        self.map { $0.offset + $0.length }.reduce(0, +)
    }
}
