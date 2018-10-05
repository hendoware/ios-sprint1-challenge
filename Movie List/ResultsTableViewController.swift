
import UIKit

class ResultsTableViewController: UITableViewController, MovieControllerProtocol {
    var movieController: MovieController?
    
<<<<<<< HEAD
    //this outlet breaking stuff....
    @IBOutlet weak var button: UIButton!
=======
    weak var delegate: ResultsViewCellDelegate?
    
    @IBOutlet weak var seenDetail: UILabel!
    
    @IBAction func seenButton(_ sender: Any) {
        //delegate?.tappedSeenButton(on: ResultsTableViewController)
        
    }
>>>>>>> 2b18f4b3304e1aedbd03f16c0fa133f07f6d9d35
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let movie = movieController?.movies[indexPath.row]
        //cell.delegate = self
        cell.textLabel?.text = movie?.name
        cell.detailTextLabel?.text = "Not Seen"
        
        return cell
    }
    
<<<<<<< HEAD
    //this is supposed to toggle the seen button...
//    func tappedSeenButton(on cell: ResultsTableViewController) {
//        guard let indexPath = tableView?.indexPath(for: cell)
//            else {fatalError("Non-existent cell")}
//
//        Movie.movies[indexPath.row].isSeen.toggle()
//        cell.button.alpha = Movie.movies[indexPath.row].isSeen ? 1.0 : 0.33 //change this to change text...
//    }
    
    
    //this is supposed to swipe to delete
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        // Only handle deletions
//        guard editingStyle == .delete else { return }
//
//        // Update model then refresh view
//
//        if (editingStyle == .delete){
//            cell.movies.remove(at: indexPath.row) //this line causing issues
=======

    //i want to use the swipe to delete
//    //swipe-to-delete
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        // Only handle deletions
//        guard editingStyle == .delete else { return }
//        // Update model then refresh view
//        if (editingStyle == .delete){
//            MovieController?.movies.remove(at: indexPath.row)
>>>>>>> 2b18f4b3304e1aedbd03f16c0fa133f07f6d9d35
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        }
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
    
}
