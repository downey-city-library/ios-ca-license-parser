import Foundation

extension Array where Element == Subfile {
    var lastIndex: Int {
        self.map { $0.offset + $0.length }.reduce(0, +)
    }
}
