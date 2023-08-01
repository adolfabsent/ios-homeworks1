import Foundation
import UIKit

class ProfileHeaderView: UIView {

    var myImageView: UIImageView = {
        let myImage = UIImageView(frame: CGRect(x:16.0, y:136.0, width: 100, height: 100))
        myImage.image = UIImage(named: "cat.png")
        return myImage
    }()
    var newButton: UIButton = {
        let myButton = UIButton(frame: CGRect(x:16.0, y:300.0, width: 350, height: 50))
        return myButton
    }()
    var labelName = UILabel(frame: CGRect(x:140, y:107 , width:100, height:100))
    var labelStatus = UILabel(frame: CGRect(x:140, y:166.0 , width:150, height:150))

    var textField =  UITextField(frame: CGRect(x:140, y:186, width:150, height:150))

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    func setupView()  {
        myImageView.layer.borderWidth = 3.0
        myImageView.layer.borderColor = UIColor.white.cgColor
        myImageView.layer.cornerRadius = 50
        myImageView.clipsToBounds = true
        addSubview(myImageView)

        labelName.text = "Hipster Cat"
        labelName.textAlignment = .center
        labelName.textColor = .black
        labelName.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        addSubview(labelName)

        labelStatus.text = "Waiting for something..."
        labelStatus.textAlignment = .center
        labelStatus.textColor = .gray
        labelStatus.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        addSubview(labelStatus)

        newButton.backgroundColor = .blue
        newButton.setTitle ("Show Status", for: .normal)
        newButton.setTitleColor(.white, for: .normal)
        newButton.layer.cornerRadius = 4.0
        newButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        newButton.layer.shadowOffset = CGSizeMake(4.0, 4.0)
        newButton.layer.shadowRadius = 4.0
        newButton.layer.shadowOpacity = 0.7
        newButton.layer.shadowColor = UIColor.black.cgColor
        addSubview(newButton)

        textField.backgroundColor = .white
        textField.layer.cornerRadius = 12.0
        textField.text = "Listening to music"
        textField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        textField.textColor = .black
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 1.0
        textField.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
    }

    @objc func buttonPressed() {
        print("\(labelStatus.text!)")
    }
    @objc func statusTextChanged(_ textField: UITextField) {
    }

}

