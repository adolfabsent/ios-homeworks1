import UIKit

class PostViewController: UIViewController {

    var titlePost: String = "New Post"

    var myButton = UIBarButtonItem()
    var secondButton = UIBarButtonItem()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        myButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(newAction))
        navigationItem.rightBarButtonItem = myButton
    }

    @objc  private func setupView() {
        self.view.backgroundColor = .lightGray
        self.navigationItem.title = "My Post"
        self.navigationItem.rightBarButtonItem = secondButton
        self.navigationController?.navigationBar.prefersLargeTitles = true

    }

    @objc private func newAction() {
        let infoViewController = InfoViewController()
        self.present(infoViewController, animated: true, completion: nil)
    }
}
