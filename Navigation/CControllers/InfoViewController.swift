import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newButton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        newButton.backgroundColor = .systemYellow
        newButton.setTitle("Post", for: .normal)
        newButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        self.view.addSubview(newButton)
    }
    
    @objc func showAlert(sender: UIButton!) {
        let alert = UIAlertController(title: "My Post", message: "Create new Post", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        self.present(alert, animated: true)
    }
    
}
