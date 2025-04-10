import Foundation

internal struct Subfile {
    
    init(_ data: String, offset: Int? = nil) {
        let offset = offset ?? 0
        
        self.type = data.at(offset, length: 2)
        self.offset = Int(data.at(offset + 2, length: 4)) ?? offset
        self.length = Int(data.at(offset + 6, length: 4)) ?? data.count - self.offset
        self.value = String(data.at(self.offset, length: self.length).dropFirst(2))
    }
    
    var offset: Int
    var length: Int
    
    var type: String
    var value: String
}
