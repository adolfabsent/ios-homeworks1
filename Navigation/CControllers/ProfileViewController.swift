import UIKit

class ProfileViewController: UIViewController {
    
    private lazy var firstButton: UIButton = {
        let button = UIButton()
        var color: UIColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Back", for: .normal)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        self.navigationItem.title = "Мой пост"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        firstButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        view.addSubview(firstButton)
        
    }
    
    @objc func buttonPressed() {
        let profileViewController = ProfileViewController()
        present(profileViewController, animated: true)
    }
}

