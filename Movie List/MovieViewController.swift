import UIKit

class MovieViewController: UIViewController, MovieControllerProtocol {
    var movieController: MovieController?
    

    @IBOutlet weak var name: UITextField!
    
    
    @IBOutlet weak var seen: UITextField!
    
    
    @IBAction func submitButton(_ sender: Any) {
        if let name = name.text, let seen = seen.text {
<<<<<<< HEAD
            movieController?.create(name: name, seen: seen, isSeen: false)
=======
            movieController?.create(name: name, isSeen: seen)
>>>>>>> 2b18f4b3304e1aedbd03f16c0fa133f07f6d9d35
        }
    }
    
}
