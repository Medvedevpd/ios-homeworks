//
//  LoginViewController.swift
//  Navigation
//
//  Created by Pavel Medvedev on 16.09.2021.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {
   
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    let logoImageView: UIImageView = {
        var image = UIImageView(image: UIImage(named: "VKLogo"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var logInTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email or phone"
        textField.textAlignment = .left
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
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
        textField.placeholder = "Password"
        textField.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        textField.textColor = .black
        textField.backgroundColor = .systemGray6
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
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
    
    func setupScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(scrollView)
        view.addSubview(contentView)
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
                
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
    
    func setupViews(){
        contentView.addSubview(logoImageView)
        logoImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 120).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
            
        contentView.addSubview(logInTextField)
        logInTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 120).isActive = true
        logInTextField.centerXAnchor.constraint(equalTo: logoImageView.centerXAnchor).isActive = true
        logInTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        logInTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        logInTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        contentView.addSubview(passwordTextField)
        passwordTextField.topAnchor.constraint(equalTo: logInTextField.bottomAnchor, constant: -1).isActive = true
        passwordTextField.centerXAnchor.constraint(equalTo: logInTextField.centerXAnchor).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: logInTextField.leadingAnchor).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: logInTextField.trailingAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        contentView.addSubview(logInButton)
        logInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 16).isActive = true
        logInButton.centerXAnchor.constraint(equalTo: passwordTextField.centerXAnchor).isActive = true
        logInButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor).isActive = true
        logInButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor).isActive = true
        logInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupScrollView()
        setupViews()
        (UIApplication.shared.delegate as! AppDelegate).restrictRotation = .portrait
    
        logInTextField.delegate = self
        passwordTextField.delegate = self
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { (nc) in
            self.view.frame.origin.y = -100
        }
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil) { (nc) in
            self.view.frame.origin.y = 0.0
        }
       
        view.setNeedsLayout()
        view.layoutIfNeeded()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    @objc func buttonPress(sender: UIButton) {
        print("Some message")
        let profileViewController = ProfileViewController()
        self.navigationController?.pushViewController(profileViewController, animated: true)
    }
}

