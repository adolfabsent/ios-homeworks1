import UIKit

class ProfileViewController: UIViewController {

    private lazy var firstButton: UIButton = {
        var color: UIColor = .blue
        firstButton.translatesAutoresizingMaskIntoConstraints = false
        firstButton.setTitle("Back", for: .normal)
        return firstButton
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        self.navigationItem.title = "My post"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        firstButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        view.addSubview(firstButton)

    }

    @objc func buttonPressed() {
        let profileViewController = ProfileViewController()
        present(profileViewController, animated: true)
    }
}

