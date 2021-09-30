//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Pavel Medvedev on 30.08.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var shareView = ProfileHeaderVIew()

        override func loadView() {
            view = shareView
        }
    
    var newLowerButton: UIButton = {
       let button = UIButton()
        button.setTitle("New button", for: .normal)
        button.backgroundColor = UIColor.systemPink
        button.layer.shadowOffset = .init(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(buttonPress), for: UIControl.Event.touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
      
    override func viewDidLoad() {
        super.viewDidLoad()
        //указываем цвет
        view.backgroundColor = .lightGray
        
      
        
        //создаем экземпляр класса ProfileHeaderView
        let profileHV = ProfileHeaderVIew()
        
        //Добавляем его в качестве subview
        view.addSubview(profileHV)
        view.addSubview(newLowerButton)
        title = "Profile"

        //добавляем autoResizingMask into Constraints
        profileHV.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints = [
            profileHV.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0),
            profileHV.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            profileHV.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            profileHV.heightAnchor.constraint(equalToConstant: 220),
            
            newLowerButton.leadingAnchor.constraint(equalTo: profileHV.leadingAnchor),
            newLowerButton.trailingAnchor.constraint(equalTo: profileHV.trailingAnchor),
            newLowerButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            newLowerButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        viewWillLayoutSubviews()
        view.setNeedsLayout()
        view.layoutIfNeeded()
        NSLayoutConstraint.activate(constraints)
        
        let swipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe))

        swipeRecognizer.direction = .right
        self.view.addGestureRecognizer(swipeRecognizer)
        
    }
    
    @objc func buttonPress(sender: UIButton) {
        print("Some message")
    }
    @objc private func handleSwipe(sender: UISwipeGestureRecognizer) {
       dismiss(animated: true, completion: nil)
    }
    
}
