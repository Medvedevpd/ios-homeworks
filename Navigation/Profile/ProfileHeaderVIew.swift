//
//  ProfileHeaderVIew.swift
//  Navigation
//
//  Created by Pavel Medvedev on 03.09.2021.
//

import UIKit


class ProfileHeaderVIew: UIView {

    let avatarImageView: UIImageView = {
        let image = UIImageView(image: UIImage(named: "Cat"))
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.borderWidth = 3
        image.layer.cornerRadius = 50
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
        
    var fullNameLabel: UILabel = {
    let label = UILabel()
        label.text = "Mr Cat"
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var statusLabel: UILabel = {
    let label = UILabel()
        label.text = "Waiting for something..."
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var statusTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "  Waiting for something..."
        textField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        textField.textColor = .gray
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 12
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    var setStatusButton: UIButton = {
       let button = UIButton()
        button.setTitle("Show status", for: .normal)
        button.backgroundColor = UIColor.systemBlue
        button.layer.shadowOffset = .init(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.layer.cornerRadius = 4
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonPressed), for: UIControl.Event.touchUpInside)
        return button
    }()
  
    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createSubviews()
    }
    
    func createSubviews() {
        
        addSubview(avatarImageView)
        addSubview(fullNameLabel)
        addSubview(statusTextField)
        addSubview(setStatusButton)
        addSubview(statusLabel)
       
        let constraints = [
            avatarImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImageView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            avatarImageView.heightAnchor.constraint(equalToConstant: 100),
            avatarImageView.widthAnchor.constraint(equalToConstant: 100),
            
            setStatusButton.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 16),
            setStatusButton.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
            setStatusButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),

            fullNameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            fullNameLabel.leadingAnchor.constraint(equalTo: self.centerXAnchor),
            fullNameLabel.heightAnchor.constraint(equalToConstant: 30),

            statusLabel.bottomAnchor.constraint(equalTo: statusTextField.topAnchor, constant: -5),
            statusLabel.leadingAnchor.constraint(equalTo: statusTextField.leadingAnchor),

            statusTextField.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -20),
            statusTextField.leadingAnchor.constraint(equalTo: setStatusButton.centerXAnchor ),
            statusTextField.heightAnchor.constraint(equalToConstant: 40),
        ]
        
        setNeedsLayout()
        layoutIfNeeded()
        NSLayoutConstraint.activate(constraints)
   
    }
    //Указываем функцию работы кнопки и ее отображения
    @objc func buttonPressed(sender: UIButton) {
        print(statusTextField.text ?? "Enter something to see in console")
    }
}
