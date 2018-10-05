
import UIKit

class ResultsTableViewController: UITableViewController, MovieControllerProtocol {
    var movieController: MovieController?
    
    weak var delegate: ResultsViewCellDelegate?
    
    @IBOutlet weak var seenDetail: UILabel!
    
    @IBAction func seenButton(_ sender: Any) {
        //delegate?.tappedSeenButton(on: ResultsTableViewController)
        
    }
    
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
    

    //i want to use the swipe to delete
//    //swipe-to-delete
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        // Only handle deletions
//        guard editingStyle == .delete else { return }
//        // Update model then refresh view
//        if (editingStyle == .delete){
//            MovieController?.movies.remove(at: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        }
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
    
}
