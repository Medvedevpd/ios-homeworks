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
    
    let avatarLayer = CALayer()
    let avatarImage = UIImage(named: "Cat")?.cgImage
    
    //создаем верхний лейбл и нижнюю подпись
//    var upperLabel = UILabel()
    var fullNameLabel = UILabel()
//
//    var lowerLabel = UITextField()
    var statusLabel = UILabel()
    
    var statusTextField = UITextField()
    var setStatusButton = UIButton.init(frame: CGRect(x: 16, y: (91 + 100 + 32), width: 360, height: 50))
    
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
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        statusTextField.translatesAutoresizingMaskIntoConstraints = false
        setStatusButton.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(avatarImageView)
        addSubview(fullNameLabel)
        addSubview(statusLabel)
        addSubview(statusTextField)
        addSubview(setStatusButton)
        
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.cornerRadius = 50
        
        
        
        
        let constraints = [
            avatarImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImageView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 16),
            avatarImageView.heightAnchor.constraint(equalToConstant: 100),
            avatarImageView.widthAnchor.constraint(equalToConstant: 100)
            
            
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
//    @objc func buttonPressed(sender: UIButton) {
//        print(lowerLabel.text ?? "Enter something to see in console")
//    }
    
}
