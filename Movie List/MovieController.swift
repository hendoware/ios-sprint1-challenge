import Foundation

class MovieController {
    var movies = [Movie]()
    
    func create(name: String, seen: String, isSeen: Bool) {
        let movie = Movie(name: name, seen: seen, isSeen: isSeen)
        movies.append(movie)
    }
}
