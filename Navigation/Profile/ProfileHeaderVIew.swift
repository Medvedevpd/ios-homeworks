//
//  ProfileHeaderVIew.swift
//  Navigation
//
//  Created by Pavel Medvedev on 03.09.2021.
//

import UIKit


class ProfileHeaderVIew: UIView {

    //создаем свойства класса для фреймf avatar
//    let avatarView = UIView()
    let avatarImageView = UIImageView(image: UIImage(named: "Cat"))
    
//    let avatarLayer = CALayer()
//    let avatarImage = UIImage(named: "Cat")?.cgImage
//
    //создаем верхний лейбл и нижнюю подпись
//    var upperLabel = UILabel()
    var fullNameLabel = UILabel()
//
//    var lowerLabel = UITextField()
//    var statusLabel = UILabel()
    
    var statusTextField = UITextField()
    var setStatusButton = UIButton()
    
//    var newLowerButton = UIButton()
    
    //создаем большую синюю кнопку
//    let showStatusButton = UIButton.init(frame: CGRect(x: 16, y: (91 + 100 + 32), width: 360, height: 50))
    
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
        
        setStatusButton.setTitle("Show status", for: .normal)
        setStatusButton.backgroundColor = UIColor.systemBlue
        setStatusButton.layer.shadowOffset = .init(width: 4, height: 4)
        setStatusButton.layer.shadowRadius = 4
        setStatusButton.layer.shadowColor = UIColor.black.cgColor
        setStatusButton.layer.shadowOpacity = 0.7
        setStatusButton.layer.cornerRadius = 4
        
//        newLowerButton.setTitle("New button", for: .normal)
//        newLowerButton.backgroundColor = UIColor.systemPink
//        newLowerButton.layer.shadowOffset = .init(width: 4, height: 4)
//        newLowerButton.layer.shadowRadius = 4
//        newLowerButton.layer.shadowColor = UIColor.black.cgColor
//        newLowerButton.layer.shadowOpacity = 0.7
//        newLowerButton.layer.cornerRadius = 4
//
//        newLowerButton.addTarget(self, action: #selector(buttonPress), for: UIControl.Event.touchUpInside)
       
        setStatusButton.addTarget(self, action: #selector(buttonPressed), for: UIControl.Event.touchUpInside)
        
        
        let constraints = [
            avatarImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImageView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 16),
            avatarImageView.heightAnchor.constraint(equalToConstant: 100),
            avatarImageView.widthAnchor.constraint(equalToConstant: 100),
            
            fullNameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 27),
            fullNameLabel.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -16),
            fullNameLabel.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 50),
            fullNameLabel.heightAnchor.constraint(equalToConstant: 30),
            
            statusTextField.centerXAnchor.constraint(equalTo: fullNameLabel.centerXAnchor),
            statusTextField.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 20),
            statusTextField.leftAnchor.constraint(equalTo: fullNameLabel.leftAnchor),
            
            setStatusButton.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 16),
            setStatusButton.leftAnchor.constraint(equalTo: avatarImageView.leftAnchor),
            setStatusButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
//            newLowerButton.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
//            newLowerButton.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
//            newLowerButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 5),
//            newLowerButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        setNeedsLayout()
        layoutIfNeeded()
        NSLayoutConstraint.activate(constraints)
        
        
        
        
        
        //настраиваем avatarView
//        avatarView.frame = CGRect(origin: CGPoint(x: 16, y: (91+16)), size: CGSize(width: 100, height: 100))
//        avatarView.bounds = CGRect(origin: .zero, size: CGSize(width: 100, height: 100))
//
//        avatarView.layer.borderColor = UIColor.white.cgColor
//        avatarView.layer.borderWidth = 3
//        avatarView.layer.backgroundColor = UIColor.white.cgColor
//        avatarView.layer.cornerRadius = avatarView.bounds.height / 2
        
//        avatarLayer.frame = avatarView.bounds
//        avatarLayer.masksToBounds = true
//        avatarLayer.cornerRadius = 5
//        avatarLayer.contents = avatarImage
       
        //добавляем во View avatarView
        
//        avatarView.layer.addSublayer(avatarLayer)
//        addSubview(avatarView)
        
        //настраиваем верхний лейбл
//        upperLabel.frame = CGRect(x: 150, y: (27 + 91), width: 300, height: 27)
//        upperLabel.text = "Hipster cat"
//        upperLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
//        upperLabel.textColor = .black
//
////        addSubview(upperLabel)
//
//        //настраиваем нижнее текстовое поле
////        lowerLabel.frame = CGRect(x: 150, y: (27 + 91 + 50), width: 300, height: 27)
//        lowerLabel.placeholder = "Waiting for something..."
//        lowerLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
//        lowerLabel.textColor = .gray
//
////        addSubview(lowerLabel)
//
//        //Настраиваем кнопку по заданию
//        showStatusButton.setTitle("Show status", for: .normal)
//        showStatusButton.backgroundColor = UIColor.systemBlue
//        showStatusButton.layer.shadowOffset = .init(width: 4, height: 4)
//        showStatusButton.layer.shadowRadius = 4
//        showStatusButton.layer.shadowColor = UIColor.black.cgColor
//        showStatusButton.layer.shadowOpacity = 0.7
//        showStatusButton.layer.cornerRadius = 4
//
//        showStatusButton.addTarget(self, action: #selector(buttonPressed), for: UIControl.Event.touchUpInside)
//
//        //Добавляем отображение кнопки на экране
////        addSubview(showStatusButton)
    }
    
    //Указываем функцию работы кнопки и ее отображения
    @objc func buttonPressed(sender: UIButton) {
        print(statusTextField.text ?? "Enter something to see in console")
    }
//
//    @objc func buttonPress(sender: UIButton) {
//        print("Some message")
//    }
    
}


//let constraints = [
//    shareView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0),
//    shareView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 0),
//    shareView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: 0),
//    shareView.heightAnchor.constraint(equalToConstant: 220)
//    
//]
//view.setNeedsLayout()
//layoutIfNeeded()
//NSLayoutConstraint.activate(constraints)
