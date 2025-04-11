import Foundation

extension String {
    
    // MARK: - SUBSCRIPT SHORTCUTS
    
    subscript(bounds: Range<Int>) -> String {
        String(self[self + bounds.lowerBound ..< self + bounds.upperBound])
    }
    
    subscript(bounds: ClosedRange<Int>) -> String {
        String(self[self + bounds.lowerBound ... self + bounds.upperBound])
    }
    
    subscript(bounds: PartialRangeFrom<Int>) -> String {
        String(self[self + bounds.lowerBound ..< endIndex])
    }
    
    subscript(bounds: PartialRangeUpTo<Int>) -> String {
        String(self[startIndex ..< self + bounds.upperBound])
    }
    
    subscript(bounds: PartialRangeThrough<Int>) -> String {
        String(self[startIndex ... self + bounds.upperBound])
    }
    
    // MARK: - METHODS
    
    static func + (string: Self, offset: Int) -> String.Index {
        string.index(at: offset)
    }
    
    /// Index at offset.
    func index(at offset: Int) -> String.Index {
        index(startIndex, offsetBy: offset)
    }
    
    /// Character at position.
    func at(_ index: Int) -> String {
        self[index...index]
    }
    
    /// String with specified length at position.
    func at(_ index: Int, length: Int) -> String {
        self[index...index+(length - 1)]
    }
    
    // MARK: - PROPERTIES
    
    /// Convert to Date.
    var asDate: Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMddyyyy"
        return dateFormatter.date(from: self)
    }
}
