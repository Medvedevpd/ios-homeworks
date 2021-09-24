//
//  LoginViewController.swift
//  Navigation
//
//  Created by Pavel Medvedev on 16.09.2021.
//

import UIKit

class LogInViewController: UIViewController {
   
    let logoImageView: UIImageView = {
        var image = UIImageView(image: UIImage(named: "VKLogo"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var logInButton: UIButton = {
       let button = UIButton()
        button.setTitle("Log in", for: .normal)
        
        let backgroundImage: UIImage? = UIImage(named: "blue_pixel")
        button.backgroundColor = UIColor(patternImage: backgroundImage!)
        button.layer.shadowOffset = .init(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(buttonPress), for: UIControl.Event.touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var logInTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email or phone"
        textField.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        textField.textColor = .black
        textField.backgroundColor = .systemGray6
        
        textField.autocapitalizationType = .none
        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 0.5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(logoImageView)
        
        let constraints = [
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),
            logoImageView.widthAnchor.constraint(equalToConstant: 100)
        ]
        
        
      //  viewWillLayoutSubviews()
        view.setNeedsLayout()
        view.layoutIfNeeded()
        NSLayoutConstraint.activate(constraints)
    }
    
    var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        textField.textColor = .gray
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 12
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        navigationController?.setNavigationBarHidden(false, animated: animated)
//    }
    @objc func buttonPress(sender: UIButton) {
        print("Some message")
    }
}
