public extension License.Address {
    
    struct PostalCode {
        
        init(data: String) {
            
            self.zip = data.at(0, length: 5)
            self.plusFour = data.at(5, length: 4)
        }
        
        public var zip: String
        public var plusFour: String?
    }
}
