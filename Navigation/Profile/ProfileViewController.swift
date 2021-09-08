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
   var newLowerButton = UIButton()
      
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
        newLowerButton.translatesAutoresizingMaskIntoConstraints = false

        newLowerButton.setTitle("New button", for: .normal)
        newLowerButton.backgroundColor = UIColor.systemPink
        newLowerButton.layer.shadowOffset = .init(width: 4, height: 4)
        newLowerButton.layer.shadowRadius = 4
        newLowerButton.layer.shadowColor = UIColor.black.cgColor
        newLowerButton.layer.shadowOpacity = 0.7
        newLowerButton.layer.cornerRadius = 4
        newLowerButton.addTarget(self, action: #selector(buttonPress), for: UIControl.Event.touchUpInside)
        
        let constraints = [
            profileHV.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0),
            profileHV.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 0),
            profileHV.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: 0),
            profileHV.heightAnchor.constraint(equalToConstant: 220),
            
            newLowerButton.leftAnchor.constraint(equalTo: profileHV.leftAnchor),
            newLowerButton.rightAnchor.constraint(equalTo: profileHV.rightAnchor),
            newLowerButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            newLowerButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        viewWillLayoutSubviews()
        view.setNeedsLayout()
        view.layoutIfNeeded()
        NSLayoutConstraint.activate(constraints)
        
    }
    
    @objc func buttonPress(sender: UIButton) {
        print("Some message")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
