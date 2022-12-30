

import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let newButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(showAlert))
        navigationItem.leftBarButtonItem = newButton
        showAlert()
}
       @objc func showAlert() {

            let alert = UIAlertController(title: "My Post", message: "Create new Post", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

            self.present(alert, animated: true)
        }

}
