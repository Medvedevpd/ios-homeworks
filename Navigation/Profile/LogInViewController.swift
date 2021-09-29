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
    
    var logInTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "  Email or phone"
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
    
    var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "  Password"
        textField.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        textField.textColor = .black
        textField.backgroundColor = .systemGray6
        
        textField.autocapitalizationType = .none
        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 0.5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.isSecureTextEntry = true
        return textField
    }()
    
    var logInButton: UIButton = {
        var button = UIButton()
        button.setTitle("Log in", for: .normal)
        
        button.setTitleColor(.white, for: .normal)
        let normalImage: UIImage? = UIImage(named: "blue_pixel")
        let normalImageView = UIImageView(image: normalImage)
        normalImageView.alpha = 1
        
        let selectedImage: UIImage? = UIImage(named: "blue_pixel")
        let selectedImageView = UIImageView(image: selectedImage)
        selectedImageView.alpha = 0.8
        
        let highlightImage: UIImage? = UIImage(named: "blue_pixel")
        let highlightImageView = UIImageView(image: highlightImage)
        highlightImageView.alpha = 0.8
        
        let disabledImage: UIImage? = UIImage(named: "blue_pixel")
        let disabledImageView = UIImageView(image: disabledImage)
        disabledImageView.alpha = 0.8
                
        button.setBackgroundImage(normalImage, for: UIControl.State.normal)
        button.setBackgroundImage(selectedImage, for: UIControl.State.selected)
        button.setBackgroundImage(highlightImage, for: UIControl.State.highlighted)
        button.setBackgroundImage(disabledImage, for: UIControl.State.disabled)
        button.isSelected = true
        button.isHighlighted = true
        
        button.backgroundColor = UIColor(patternImage: normalImage!)
        
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 10
        
        button.addTarget(self, action: #selector(buttonPress), for: UIControl.Event.touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.view.addSubview(logoImageView)
        self.view.addSubview(logInTextField)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(logInButton)
        
        let constraints = [
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),
            logoImageView.widthAnchor.constraint(equalToConstant: 100),
           
            logInTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 120),
            logInTextField.centerXAnchor.constraint(equalTo: logoImageView.centerXAnchor),
            logInTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            logInTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            logInTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordTextField.topAnchor.constraint(equalTo: logInTextField.bottomAnchor, constant: -1),
            passwordTextField.centerXAnchor.constraint(equalTo: logInTextField.centerXAnchor),
            passwordTextField.leadingAnchor.constraint(equalTo: logInTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: logInTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            logInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 16),
            logInButton.centerXAnchor.constraint(equalTo: passwordTextField.centerXAnchor),
            logInButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            logInButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            logInButton.heightAnchor.constraint(equalToConstant: 50)
            
        ]
        
        
      //  viewWillLayoutSubviews()
        view.setNeedsLayout()
        view.layoutIfNeeded()
        NSLayoutConstraint.activate(constraints)
    }
    
    
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

