import Foundation

class MovieController {
    var movies = [Movie]()
    
    func create(name: String, seen: String, isSeen: Bool) {
        let movie = Movie(name: name, isSeen: false)
        movies.append(movie)
    }

    
    
//  toggle seen? attempt 1
//    func toggleIsSeen(movie: Movie) {
//        guard let index = movies.index(of: movie) else { return }
//        let thisMovie = !movie.isSeen
//        let newMovie = Movie(name: movie.name, isSeen: thisMovie)
//        movies.insert(newMovie, at: index)
//        movies.remove(at: index)
//    }
    
    
}
