import Foundation

public struct Subfile {
    
    // MARK: - INITIALIZATION
    
    init(_ data: String, offset: Int? = nil) {
        let offset = offset ?? 0
        
        self.type = data.at(offset, length: 2)
        self.offset = Int(data.at(offset + 2, length: 4)) ?? offset
        self.length = Int(data.at(offset + 6, length: 4)) ?? data.count - self.offset
        self.value = String(data.at(self.offset, length: self.length).dropFirst(2)).trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    // MARK: - PROPERTIES
    
    /// Number of bytes from the head or beginning of the file to where the data is located.
    internal var offset: Int
    
    /// Number of bytes describing the length of data.
    internal var length: Int
    
    /// Subfile Type
    /// - Important:
    /// Valid values are DL, EN, and ID
    public var type: String
    
    /// Content data of subfile.
    public var value: String
}
