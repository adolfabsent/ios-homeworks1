import UIKit

class PostViewController: UIViewController {

    var titleString: String = "New Post"

    override func viewDidLoad() {
        super.viewDidLoad()

        let barButtonItem = UIBarButtonItem(title: "+", style: .plain, target: self, action: #selector(newAction))

        self.navigationItem.rightBarButtonItem = barButtonItem

        view.backgroundColor = .white
        title = titleString
    }

    @objc private func newAction(){

        let infoViewController = InfoViewController()

        self.navigationController?.pushViewController(infoViewController, animated: true)

    }

}
