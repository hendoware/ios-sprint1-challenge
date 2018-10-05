import Foundation

class Movie {
    var name: String
    var seen: String //change to bool
    var isSeen: Bool
<<<<<<< HEAD
   

    init(name: String, seen: String, isSeen: Bool = false) { //add isSeen: Bool = false
        self.name = name
        self.seen = seen
        self.isSeen = isSeen
=======
    
    init(name: String, seen: String, iSeen: Bool = false) { //add isSeen: Bool = false
        self.name = name
        self.seen = seen
        self.isSeen = false
>>>>>>> 2b18f4b3304e1aedbd03f16c0fa133f07f6d9d35
    }
    
    
    //this is for the delete?
     //static let shared = Movie(name: name, seen: seen, isSeen: isSeen)
}
