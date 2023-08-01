
import Foundation
import UIKit

class ProfileViewContoller: UIViewController{

    let profileHeader = ProfileHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()


        view.addSubview(profileHeader)
        view.backgroundColor = .lightGray
        title = "Profile"

    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profileHeader.frame = view.frame
    }

}





