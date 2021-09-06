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
        
    }
}
