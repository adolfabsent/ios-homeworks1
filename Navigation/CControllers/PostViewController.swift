

import UIKit

class PostViewController: UIViewController {

    var titlePost: String = "New Post"

    override func viewDidLoad() {

        super.viewDidLoad()
         setupView()
        newAction()

    }

 let myButton = UIBarButtonItem(barButtonSystemItem: .add, target: PostViewController.self, action: #selector(newAction))


    @objc  private func setupView() {

           self.view.backgroundColor = .lightGray

           self.navigationItem.title = "Мой пост"

           self.navigationItem.rightBarButtonItem = myButton

        self.navigationController?.navigationBar.prefersLargeTitles = true

       }

    @objc private func newAction() {
        let infoViewController = InfoViewController()
        let navigationController = UINavigationController(rootViewController: infoViewController)
        self.present(navigationController, animated: true, completion: nil)
    }

    @objc private func buttonAction() {

        let postViewController = PostViewController()

        self.navigationController?.pushViewController(postViewController, animated: true)
    }
}
