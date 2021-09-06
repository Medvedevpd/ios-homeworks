//
//  ProfileHeaderVIew.swift
//  Navigation
//
//  Created by Pavel Medvedev on 03.09.2021.
//

import UIKit

class ProfileHeaderVIew: UIView {

    //создаем свойства класса для фреймов
    let avatarView = UIView()
    let avatarLayer = CALayer()
    let avatarImage = UIImage(named: "Cat")?.cgImage
    
    var upperLabel = UILabel()
    var lowerLabel = UILabel()
    
    let showStatusButton = UIButton.init(frame: CGRect(x: 16, y: (91 + 100 + 32), width: 360, height: 50))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createSubviews()
    }
    func createSubviews() {
        
        avatarView.frame = CGRect(origin: CGPoint(x: 16, y: (91+16)), size: CGSize(width: 100, height: 100))
        
        avatarView.bounds = CGRect(origin: .zero, size: CGSize(width: 100, height: 100))

        avatarView.layer.borderColor = UIColor.white.cgColor
        avatarView.layer.borderWidth = 3
        avatarView.layer.backgroundColor = UIColor.white.cgColor
        avatarView.layer.cornerRadius = avatarView.bounds.height / 2
        
        avatarLayer.frame = avatarView.bounds
        avatarLayer.masksToBounds = true
        avatarLayer.cornerRadius = 5
        avatarLayer.contents = avatarImage
       
        
        avatarView.layer.addSublayer(avatarLayer)
        addSubview(avatarView)
        
        upperLabel.frame = CGRect(x: 150, y: (27 + 91), width: 300, height: 27)
        upperLabel.text = "Hipster cat"
        upperLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        upperLabel.textColor = .black
        
        addSubview(upperLabel)
        
        lowerLabel.frame = CGRect(x: 150, y: (27 + 91 + 50), width: 300, height: 27)
        lowerLabel.text = "Waiting for something"
        lowerLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        lowerLabel.textColor = .gray
        
        addSubview(lowerLabel)
        
        
     
        
       addSubview(showStatusButton)
        
        showStatusButton.setTitle("Show status", for: .normal)
        showStatusButton.backgroundColor = UIColor.systemBlue
        showStatusButton.layer.shadowOffset = .init(width: 4, height: 4)
        showStatusButton.layer.shadowRadius = 4
        showStatusButton.layer.shadowColor = UIColor.black.cgColor
        showStatusButton.layer.shadowOpacity = 0.7
        showStatusButton.layer.cornerRadius = 4
        
    }
}
