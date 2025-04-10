import Foundation

extension Array where Element == Subfile {
    
    public var debugDescription: String {
        var string = ""
        
        for (index, subfile) in self.enumerated() {
            string += "\nSUBFILE | \(index + 1)\n"
            string += subfile.debugDesription
        }
        
        return string
    }
    
    internal var lastIndex: Int {
        self.map { $0.offset + $0.length }.reduce(0, +)
    }
}
