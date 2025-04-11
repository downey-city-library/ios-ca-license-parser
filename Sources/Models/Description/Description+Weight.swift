public extension License.Description {
    
    struct Weight {
        
        init(
            range: String?,
            pounds: String?,
            kilograms: String?
        ) {
            self.range = range
            self.pounds = Int(pounds ?? "")
            self.kilograms = Int(kilograms ?? "")
        }
        
        public var range: String?
        public var pounds: Int?
        public var kilograms: Int?
    }
}
