import UIKit

class MovieViewController: UIViewController, MovieControllerProtocol {
    var movieController: MovieController?
    

    @IBOutlet weak var name: UITextField!
    
    
    @IBOutlet weak var seen: UITextField!
    
    
    @IBAction func submitButton(_ sender: Any) {
        if let name = name.text, let seen = seen.text {
            movieController?.create(name: name, seen: seen)
        }
    }
    
    
    
    
    
}
