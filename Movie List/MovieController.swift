import Foundation


protocol MovieUser {
    var movieController: MovieController! { get set }
}

class MovieController {
    var movies = [Movie]()
    
    func create(name: String, isSeen: Bool) {
        let movie = Movie(name: name, isSeen: isSeen)
        movies.append(movie)
    }
    
    //
    func add(_ movie: Movie) {
        movies.append(movie)
        movies.sort()
    }
    //
    @discardableResult
    func create(_ name: String) -> Movie {
        let movie = Movie(name: name, isSeen: false)
        add(movie)
        return movie
    }
    
    func delete(indexPath: Int) {
        movies[indexPath] = movies[movies.count - 1]
        movies.removeLast()
        movies.sort()
    }
    
    
//    //filter for movies to be filtered
//    func updateFilter(_ filter:String)
//    {
//        let filter = filter.lowercased()
//        filterdMovies.removeAll()
//        for movie in movies {
//            if movie.name.lowercased().range(of: filter) != nil {
//                filteredMovies.append(movie)
//            }
//        }
//        filteredMovies.sort()
    }
    
    
    
//    func tappedSeenButton(on cell: ResultsTableViewController) {
//        guard let indexPath = tableView?.indexPath(for: cell)
//            else { fatalError("Non-existent cell?!") }
//
//        
//    }
    
}
