import Foundation

class Movie: Comparable {
    static func < (lhs: Movie, rhs: Movie) -> Bool {
        return lhs.name < rhs.name
    }
//
//    static func == (lhs: Movie, rhs: Movie) -> Bool {
//        return lhs.name < rhs.name
//    }
    
    var name: String
    //var seen: String //change to bool
    var isSeen: Bool
    
    init(name: String, isSeen: Bool = false) {
        self.name = name
        self.isSeen = isSeen
        //self.seen = seen
    }

}
