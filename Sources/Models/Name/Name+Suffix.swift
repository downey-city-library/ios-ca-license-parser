extension License.Name {
    
    public struct Suffix {
        
        init?(value: String?, alias: String?) {
            guard let value else { return nil }
            self.value = value
            self.alias = alias
        }
        
        public var value: String
        public var alias: String?
    }
}
