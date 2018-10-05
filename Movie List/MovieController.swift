import Foundation

class MovieController {
    var movies = [Movie]()
    
    func create(name: String, seen: String) {
        let movie = Movie(name: name, seen: seen)
        movies.append(movie)
    }
}
