public enum TruncationCode: String {
    
    init(from rawValue: String) {
        self = .init(rawValue: rawValue) ?? .unknown
    }
    
    case truncated = "T"
    case notTruncated = "N"
    case unknown = "U"
    
    public var code: String { rawValue }
}
