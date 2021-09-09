//
//  ProfileHeaderVIew.swift
//  Navigation
//
//  Created by Pavel Medvedev on 03.09.2021.
//

import UIKit


class ProfileHeaderVIew: UIView {

    let avatarImageView = UIImageView(image: UIImage(named: "Cat"))
    var fullNameLabel = UILabel()
    var statusTextField = UITextField()
    var setStatusButton = UIButton()
  
    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createSubviews()
    }
    
    func createSubviews() {
        
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        statusTextField.translatesAutoresizingMaskIntoConstraints = false
        setStatusButton.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(avatarImageView)
        addSubview(fullNameLabel)
        addSubview(statusTextField)
        addSubview(setStatusButton)
        
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.cornerRadius = 50
      
        fullNameLabel.text = "Mr Cat"
        fullNameLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        fullNameLabel.textColor = .black
        
        statusTextField.placeholder = "Waiting for something..."
        statusTextField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        statusTextField.textColor = .gray
        statusTextField.backgroundColor = .white
        
        setStatusButton.setTitle("Show status", for: .normal)
        setStatusButton.backgroundColor = UIColor.systemBlue
        setStatusButton.layer.shadowOffset = .init(width: 4, height: 4)
        setStatusButton.layer.shadowRadius = 4
        setStatusButton.layer.shadowColor = UIColor.black.cgColor
        setStatusButton.layer.shadowOpacity = 0.7
        setStatusButton.layer.cornerRadius = 4
       
        setStatusButton.addTarget(self, action: #selector(buttonPressed), for: UIControl.Event.touchUpInside)
        
        let constraints = [
            avatarImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImageView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 16),
            avatarImageView.heightAnchor.constraint(equalToConstant: 100),
            avatarImageView.widthAnchor.constraint(equalToConstant: 100),
            
            fullNameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 27),
            fullNameLabel.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 50),
            fullNameLabel.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -16),
            fullNameLabel.heightAnchor.constraint(equalToConstant: 30),
            
            statusTextField.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 20),
            statusTextField.leftAnchor.constraint(equalTo: fullNameLabel.leftAnchor),
            statusTextField.centerXAnchor.constraint(equalTo: fullNameLabel.centerXAnchor),
            
            setStatusButton.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 16),
            setStatusButton.leftAnchor.constraint(equalTo: avatarImageView.leftAnchor),
            setStatusButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
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
