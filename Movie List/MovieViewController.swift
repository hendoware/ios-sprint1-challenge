import UIKit


class MovieViewController: UIViewController, MovieControllerProtocol {
    var movieController: MovieController?
    //weak var delegate: MovieTableCellDelegate?

    @IBOutlet weak var name: UITextField!
    
    
    @IBOutlet weak var seen: UITextField!
    

    
    @IBAction func submitButton(_ sender: Any) {
        if let name = name.text, let seen = seen.text {
            movieController?.create(name: name, seen: seen, isSeen: false)
        }
    }
    
    
    
}
