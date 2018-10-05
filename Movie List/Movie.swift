import Foundation

class Movie {
    var name: String
    var seen: String //change to bool
    var isSeen: Bool
   

    init(name: String, seen: String, isSeen: Bool = false) { //add isSeen: Bool = false
        self.name = name
        self.seen = seen
        self.isSeen = isSeen
    }
    
    
    //this is for the delete?
     //static let shared = Movie(name: name, seen: seen, isSeen: isSeen)
}
